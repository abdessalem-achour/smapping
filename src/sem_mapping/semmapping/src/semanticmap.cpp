#include "semanticmap.h"
#include <ros/ros.h>
#include <tf2_ros/buffer.h>
#include <tf2_ros/transform_listener.h>
#include <geometry_msgs/TransformStamped.h>
#include <math.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/registration/icp.h>
#include <pcl_ros/transforms.h>
#include <pcl/filters/passthrough.h>
#include <pcl/filters/statistical_outlier_removal.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/segmentation/region_growing.h>
#include <pcl/filters/radius_outlier_removal.h>
#include <yaml-cpp/yaml.h>
#include <chrono>
#include <pcl/features/normal_3d.h>
#include <iostream>
#include <fstream>

namespace semmapping
{

    SemanticMap::SemanticMap(tf2_ros::Buffer &tfBuffer, pcl::visualization::PCLVisualizer* &viewer, boost::mutex &viewer_mtx, int &semmap_vport0, int &semmap_vport1, semmapping::ParamsConfig &param_config): tfBuffer(tfBuffer), viewer(viewer), viewer_mtx(viewer_mtx), semmap_vport0(semmap_vport0), semmap_vport1(semmap_vport1), param_config(param_config)
    {
    }

    std::map<std::string, std::tuple<uint8_t, uint8_t, uint8_t>> classColorMap = {
        { "Table", std::make_tuple(0, 255, 26) },   // vert fluo
        { "Chair", std::make_tuple(255, 0, 0) },   // red
        { "Shelf", std::make_tuple(0, 0, 139) },   // Blue foncé
        { "Couch", std::make_tuple(255, 192, 203) }  // Rose
    };

    bool SemanticMap::similarClasses(std::string object1_name, std::string object2_name)
    {
        if ((object1_name == "Sofa bed" && object2_name == "Couch") || (object1_name == "Couch" && object2_name == "Sofa bed"))
            return true;
        else
            return false;
    }

    bool SemanticMap::checkTheAbilityOfObjectsToOverlap(std::string object1_name, std::string object2_name){
        /*if(object1_name == object2_name)
            return true;*/
        if(similarClasses(object1_name, object2_name))
            return true;
        else if ((object1_name == "Chair" && object2_name == "Table") || (object1_name == "Table" && object2_name == "Chair"))
            return true;
        else
            return false;
    }
    
    void SemanticMap::filterIntersectionThresh(std::set<size_t> &object_list, const polygon &pg)
    {
        ROS_INFO("Filtering objects");
        for (auto it = object_list.begin(); it != object_list.end(); )
        {
            const SemanticObject &obj = objectList.at(*it);
            if (union_fit(pg, obj.shape_union) < FIT_THRESH)// || bg::covered_by(obj.shape_union,pg))
            {
                it = object_list.erase(it);
                ROS_INFO("Object removed");
                continue;
            }
            it++;
        }
    }

    box SemanticMap::create_oriented_box(polygon poly, double &best_angle){
        box best_box;
        double minArea = DBL_MAX;
        double minAngle = DBL_MAX;
        point current_edge = poly.outer()[0];
        for (int i=0; i < poly.outer().size()-1;i++){
            point next_edge = poly.outer()[i+1];
            box temp_box;
            polygon temp_polygon;
            double angle = atan2(next_edge.y()-current_edge.y(),next_edge.x() - current_edge.x());
            bg::strategy::transform::rotate_transformer<boost::geometry::degree, double, 2, 2> rotate(-1.0 * angle * (180/ M_PI));
            bg::transform(poly, temp_polygon, rotate);
            temp_box = bg::return_envelope<box>(temp_polygon);
            if (bg::area(temp_box) < minArea) {
                minArea = bg::area(temp_box);
                best_box = temp_box;
                minAngle = angle;
            }
            current_edge = next_edge;
        }
        best_angle = minAngle;
        return best_box;
    }

    std::pair<double, double> SemanticMap::get_real_object_length_width(const std::string &name)
    {
        std::pair<double, double> dimensions;

        if(name=="Chair") {dimensions.first= 0.6; dimensions.second= 0.57;} // Chair model in world well arranged
        //if(name=="Chair") {dimensions.first= 0.57; dimensions.second= 0.57;}  // Chair model in world cluttered
        else if (name== "Table") {dimensions.first= 1.782; dimensions.second= 0.8;}
        else if (name=="Shelf") {dimensions.first= 0.9; dimensions.second= 0.4;}
        else if (name=="Couch"){dimensions.first= 0.97; dimensions.second= 2.009;}
        else if (name=="Ball"){dimensions.first= 0.2; dimensions.second= 0.2;}
        else {dimensions.first= 0.0; dimensions.second= 0.0;}

        return dimensions;
    }

    polygon SemanticMap::create_shifted_bounding_box_with_real_dimensions(int direction, point reference, double v_directeur[2], double lamda, double length, double width)
    {
        double dx= v_directeur[0]; double dy= v_directeur[1]; point p1, p2, p3, p4; polygon pg;
        // 0-> shift left et 1-> shift_right
        if (direction==0){
            p1.x (reference.x() + lamda * dx); p1.y (reference.y() + lamda * dy); 
            p2.x (p1.x() + length * dx); p2.y (p1.y() + length * dy);
            p3.x (p1.x() + length * dx + width * dy); p3.y (p1.y() + length * dy - width * dx);
            p4.x (p1.x() + width * dy); p4.y (p1.y() - width * dx);
        } 
        else{
            p2.x (reference.x() + lamda * dx); p2.y (reference.y() + lamda * dy); 
            p1.x (p2.x() - length * dx); p1.y (p2.y() - length * dy); 
            p3.x (p1.x() + length * dx + width * dy); p3.y (p1.y() + length * dy - width * dx);
            p4.x (p1.x() + width * dy); p4.y (p1.y() - width * dx);
        }
        bg::append(pg.outer(), p1);
        bg::append(pg.outer(), p2);
        bg::append(pg.outer(), p3);
        bg::append(pg.outer(), p4);
        bg::append(pg.outer(), p1);
        return pg;
    }

    double SemanticMap::distanceFromLine(point p, point start, point end) {
        // function to calculate the distance of a point from a line
        double numerator = abs((end.y() - start.y())*p.x() - (end.x() - start.x())*p.y() + end.x()*start.y() - end.y()*start.x());
        double denominator = sqrt(pow(end.y() - start.y(), 2) + pow(end.x() - start.x(), 2));
        return numerator / denominator;
    }

    polygon SemanticMap::improve_polygon(polygon poly, double tolerance){
        polygon improved_polygon;
        int j=0;
        bg::append(improved_polygon.outer(), poly.outer()[0]);
        for(int i=0; i< poly.outer().size()-2; i++){
            double d= distanceFromLine(poly.outer()[i+j+1], poly.outer()[i], poly.outer()[i+j+2]);
            if(d < tolerance){
                i--;
                j++;
            } 
            else
            {
                if(i+j+1<poly.outer().size()-1){
                    bg::append(improved_polygon.outer(), poly.outer()[i+j+1]);
                    i=i+j;
                    j=0;
                }
                else
                    i=i+j;
            }
        }
        bg::append(improved_polygon.outer(), poly.outer()[poly.outer().size()-1]);
        return improved_polygon;
    }

    std::list<std::pair<point, point>> SemanticMap::get_polygon_first_plan_edges(polygon poly, point reference){
        std::list<std::pair<point, point>> first_plan_edges_list;
        for(int i=0; i< poly.outer().size()-1; i++){
            double edge_distance = sqrt((poly.outer()[i+1].x() - poly.outer()[i].x())*(poly.outer()[i+1].x() - poly.outer()[i].x()) 
                                + (poly.outer()[i+1].y() - poly.outer()[i].y())*(poly.outer()[i+1].y() - poly.outer()[i].y()));
            //cout<<"("<<poly.outer()[i].x()<<","<<poly.outer()[i].y()<<") et ("<<poly.outer()[i+1].x()<<","<<poly.outer()[i+1].y()<<") edge_distance= "<<edge_distance<<endl;
            if(edge_distance > 0.2){
                polygon from_reference_to_edge_area;
                bg::append(from_reference_to_edge_area.outer(), reference);
                bg::append(from_reference_to_edge_area.outer(), poly.outer()[i]);
                bg::append(from_reference_to_edge_area.outer(), poly.outer()[i+1]);
                bg::append(from_reference_to_edge_area.outer(), reference);
                
                if (!bg::is_valid(from_reference_to_edge_area)){
                    from_reference_to_edge_area.clear();
                    bg::append(from_reference_to_edge_area.outer(), reference);
                    bg::append(from_reference_to_edge_area.outer(), poly.outer()[i+1]);
                    bg::append(from_reference_to_edge_area.outer(), poly.outer()[i]);
                    bg::append(from_reference_to_edge_area.outer(), reference);
                }

                multi_polygon intersection;
                bg::intersection(from_reference_to_edge_area, poly, intersection);
                if(bg::area(intersection)== 0){
                    std::pair<point, point> edge;
                    edge.first= poly.outer()[i];
                    edge.second= poly.outer()[i+1];
                    //cout<<"edge= ("<<edge.first.x()<<","<<edge.first.y()<<") - ("<<edge.second.x()<<","<<edge.second.y()<<") edge distance= "<<edge_distance<<endl;
                    first_plan_edges_list.push_back(edge);
                } 
            }
        }
        return first_plan_edges_list;
    }

    std::list<std::pair<point, point>> SemanticMap::get_association_valid_edges(polygon poly){
        std::list<std::pair<point, point>> association_edges_list;
        for(int i=0; i< poly.outer().size()-1; i++){
            double edge_distance = sqrt((poly.outer()[i+1].x() - poly.outer()[i].x())*(poly.outer()[i+1].x() - poly.outer()[i].x()) 
                                + (poly.outer()[i+1].y() - poly.outer()[i].y())*(poly.outer()[i+1].y() - poly.outer()[i].y()));
            if(edge_distance > 0.2){
                std::pair<point, point> edge;
                edge.first= poly.outer()[i];
                edge.second= poly.outer()[i+1];
                association_edges_list.push_back(edge);
            }
        }
        return association_edges_list;
    }

    void SemanticMap::associate_real_box_to_partial_polygon(polygon poly, std::list<std::pair<point,point>> first_plan_edges, double length, double width, std::vector<std::pair<polygon, double>> &selected_obb_list)
    {   
        // Repeat the process on all first plan edges of the polygon
        for(auto const& edge : first_plan_edges){
            point first_point = edge.first;
            point second_point = edge.second;
            double edge_distance = sqrt((second_point.x() - first_point.x())*(second_point.x() - first_point.x()) 
                                + (second_point.y() - first_point.y())*(second_point.y() - first_point.y()));
            double dx= (second_point.x() - first_point.x())/ edge_distance;
            double dy= (second_point.y() - first_point.y())/ edge_distance;
            double v_directeur [2]= {dx, dy}; 
            double v_normale [2]= {dy, -dx};
            // Determine the polygon points at the left and right extremities of the current edge
            // Computing <lamda, beta> of all points and identifying left, right and lower extreme points
            std::pair<double, double> coefficient_of_all_points[poly.outer().size()-1];
            std::pair<double, double> left_extremum(0,0);
            std::pair<double, double> right_extremum(0,0);
            std::pair<double, double> lower_extremum(0,0);
            double d_alpha[2] = {edge_distance, -1*edge_distance}; 
            double d_beta[2];

            for(int j=0; j< poly.outer().size()-1; j++){
                // Saving the <lamda, beta> pair of all points in coefficient_of_all_points list
                coefficient_of_all_points[j].first = v_directeur[0] * (poly.outer()[j].x() - first_point.x()) + v_directeur[1] * (poly.outer()[j].y() - first_point.y());
                coefficient_of_all_points[j].second = v_normale[0] * (poly.outer()[j].x() - first_point.x()) + v_normale[1] * (poly.outer()[j].y() - first_point.y());
                //cout<<"--> "<< coefficient_of_all_points[j].first<< " - "<< coefficient_of_all_points[j].second<< endl;
                
                if (coefficient_of_all_points[j].first <= left_extremum.first){
                    if (coefficient_of_all_points[j].first < left_extremum.first){
                        left_extremum = coefficient_of_all_points[j];
                    }
                    else{
                        if (coefficient_of_all_points[j].second > left_extremum.second)
                            left_extremum = coefficient_of_all_points[j];
                    }
                }
                if (coefficient_of_all_points[j].first >= right_extremum.first){
                    if (coefficient_of_all_points[j].first > right_extremum.first){
                        right_extremum = coefficient_of_all_points[j];
                    }
                    else{
                        if (coefficient_of_all_points[j].second > right_extremum.second)
                            right_extremum = coefficient_of_all_points[j];
                    }
                }
                if (coefficient_of_all_points[j].second > lower_extremum.second){
                    lower_extremum = coefficient_of_all_points[j];
                }

                if((coefficient_of_all_points[j].first!= 0 || coefficient_of_all_points[j].second!= 0) && coefficient_of_all_points[j].first < d_alpha[0]){
                    d_alpha[0]= coefficient_of_all_points[j].first;
                    d_beta[0]= coefficient_of_all_points[j].second;
                }
                    
                if((coefficient_of_all_points[j].first!= edge_distance || coefficient_of_all_points[j].second != 0) && (coefficient_of_all_points[j].first-edge_distance) > d_alpha[1]){
                    d_alpha[1]= coefficient_of_all_points[j].first - edge_distance;
                    d_beta[1]= coefficient_of_all_points[j].second;
                }
            }

            // Saving respectively the <lamda, beta> pair of the left, right and lower extremities coefficient_of_extreme_points
            std::pair<double, double> coefficient_of_extreme_points[3]={left_extremum, right_extremum,lower_extremum};
            // Computing OBBs similarity factors compared to the knowledge base boxes
            double range_error=0.1;
            double l= length+range_error; 
            double w= width+range_error;
            
            for (int i=0; i<2; i++){
                bool c1= fabs(coefficient_of_extreme_points[i].first)+(1-i)*edge_distance <= l;
                bool c2= coefficient_of_extreme_points[2].second <= w;
                if (c1 && c2){ 
                    double angle_factor, width_factor, edge_factor, box_error;
                    
                    angle_factor= fabs(d_alpha[i])/l;
                    edge_factor= fabs(l-(fabs(coefficient_of_extreme_points[0].first) + fabs(coefficient_of_extreme_points[1].first)))/l;
                    width_factor= (w-coefficient_of_extreme_points[2].second)/w;
                    
                    
                    // Weights definition mode
                    /*
                    polygon box; 
                    box= create_shifted_bounding_box_with_real_dimensions(i, first_point, v_directeur, coefficient_of_extreme_points[i].first, length, width);
                    cout<<"new box generated"<<endl;
                    
                    grid_search(poly, box, weights, min_f1_score, angle_factor, edge_factor, width_factor);
                    box_error= association_score(weights, angle_factor, edge_factor, width_factor);

                    cout<<"weights= "<<weights[0]<<" "<<weights[1]<<" "<<weights[2]<< " ,min_f1_score= "<< min_f1_score<<endl;
                    */
                    
                    // Mapping mode
                    
                    weights[0] = 0.50; weights[1] = 0.30; weights[2] = 0.20;
                    box_error= association_score(weights, angle_factor, edge_factor, width_factor);

                    if (box_error < 0.4){
                        polygon box;
                        box= create_shifted_bounding_box_with_real_dimensions(i, first_point, v_directeur, coefficient_of_extreme_points[i].first, length, width);
                        std::pair<polygon, double> new_candidat;
                        new_candidat.first=box;
                        new_candidat.second= box_error;
                        selected_obb_list.push_back(new_candidat);
                    } 
                    
                }
            } 
        }
    }

    std::pair<polygon, double> SemanticMap::create_object_box_using_prior_knowledge(polygon poly, const std::string &name, bool use_first_plan_edges)
    {
        // Getting real object dimensions from knowledge base, return <0,0> if object dont exist
        std::pair<double, double> dimensions= get_real_object_length_width(name);
        //cout<< "New detection of a "<< name << endl ;
        if (dimensions.first!=0 && dimensions.second!=0){
            // Geometric association and generation of possible OBBs  
            std::vector<std::pair<polygon, double>> selected_obb_list;
            double area_fit= bg::area(poly)/(dimensions.first*dimensions.second);
            //cout<<"area fit= "<<area_fit<<endl;
            if(area_fit > 0.1 && area_fit < 1.5){
                /* Launch chrono to compute association time */
                // std::chrono::time_point<std::chrono::system_clock> start, end;
                // start = std::chrono::system_clock::now();

                /* Improving polygon */
                number_of_initial_edges+= poly.outer().size()-1;
                poly= improve_polygon(poly, 0.02);
                number_of_edges_after_filtering+= poly.outer().size()-1;

                /* Get the polygon first plan edges in reference to the robot */
                std::list<std::pair<point,point>> association_edges_list;
                if(use_first_plan_edges){
                    point robot_position = getRobotPosition();
                    association_edges_list= get_polygon_first_plan_edges(poly, robot_position); 
                }
                else
                    association_edges_list= get_association_valid_edges(poly);

                number_of_processed_edges+= association_edges_list.size();

                /* Predefined bounding boxes association */
                associate_real_box_to_partial_polygon(poly, association_edges_list, dimensions.first, dimensions.second, selected_obb_list);
                associate_real_box_to_partial_polygon(poly, association_edges_list, dimensions.second, dimensions.first, selected_obb_list);

                /* Selecting the best_obb using lamda and beta values */ 
                if (selected_obb_list.size()){
                    std::pair<polygon, double> best_obb= selected_obb_list[0];
                    for(int i=0; i < selected_obb_list.size(); i++)
                    {
                        if ((selected_obb_list[i].second < best_obb.second))
                            best_obb= selected_obb_list[i]; 
                    }

                    /* Computing the association time */
                    // number_of_association++;
                    // end = std::chrono::system_clock::now();
                    // std::chrono::duration<double> elapsed_seconds = end - start;
                    // cout<<"association time = "<<elapsed_seconds.count()<<" association number= "<<number_of_association<<endl;
                    // std::ofstream myfile;
                    // myfile.open ("src/sem_mapping/semmapping/processing_time_cluttered.csv", ios::out | ios::app);
                    // myfile << elapsed_seconds.count() << ","<< number_of_association << "\n";
                    // myfile.close();

                    bg::correct(best_obb.first);
                    return best_obb;
                } 
                
                /* Computing the association time */
                // number_of_association++;
                // end = std::chrono::system_clock::now();
                // std::chrono::duration<double> elapsed_seconds = end - start;
                // cout<<"association time = "<<elapsed_seconds.count()<<" association number= "<<number_of_association<<endl;
                // std::ofstream myfile;
                // myfile.open ("src/sem_mapping/semmapping/processing_time_cluttered.csv", ios::out | ios::app);
                // myfile << elapsed_seconds.count() << ","<< number_of_association << "\n";
                // myfile.close();

                // cout << "No good candidates, convex hull was used!" << endl;  
            }
            // else
                // cout << "Area fit condition is not valid, convex hull was used!" << endl;
        }
        // else
            // cout<<"Object dont exist in the knowledge base, convex hull was used!" << endl;
        std::pair<polygon, double> best_obb;
        best_obb.first= poly;
        best_obb.second= 1;
        return best_obb;
    }

    pcl::PointCloud<pcl::PointXYZ>::Ptr pointCloudFromInd(pcl::PointIndices::Ptr input_indices,  pcl::PointCloud<pcl::PointXYZ>::ConstPtr input_cloud)
    {
        pcl::ExtractIndices<pcl::PointXYZ> extract;
        typename pcl::PointCloud<pcl::PointXYZ>::Ptr result_cloud(new pcl::PointCloud<pcl::PointXYZ>);
        extract.setInputCloud(input_cloud);
        extract.setIndices(input_indices);
        extract.filter(*result_cloud);
        return result_cloud;
    }

    std::vector<pcl::PointCloud<pcl::PointXYZ>> SemanticMap::getObjectPointsReg(pcl::PointCloud<pcl::PointXYZ>::ConstPtr cloud)
    {
        pcl::PointCloud<pcl::PointXYZ> return_cloud;
        std::vector<pcl::PointIndices> cluster_indices;
        std::vector<pcl::PointCloud<pcl::PointXYZ>> point_cloud_cluster;
        pcl::search::Search<pcl::PointXYZ>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZ>);
        pcl::PointCloud <pcl::Normal>::Ptr normals (new pcl::PointCloud <pcl::Normal>);

        pcl::NormalEstimation<pcl::PointXYZ, pcl::Normal> normal_estimator;
        normal_estimator.setSearchMethod (tree);
        normal_estimator.setInputCloud (cloud);
        normal_estimator.setKSearch (50);
        normal_estimator.compute (*normals);


        pcl::RegionGrowing<pcl::PointXYZ, pcl::Normal> reg;
        reg.setMinClusterSize (50);
        reg.setMaxClusterSize (1000000);
        reg.setSearchMethod (tree);
        reg.setNumberOfNeighbours (30);
        reg.setInputCloud (cloud);

        reg.setInputNormals (normals);
        reg.setSmoothnessThreshold (20.0 / 180.0 * M_PI);
        reg.setCurvatureThreshold (1.0);

        std::vector <pcl::PointIndices> clusters;
        reg.extract (cluster_indices);

        if (cluster_indices.size() == 0)
        {
            ROS_WARN("No points in cluster indicies");
            return_cloud.points = cloud->points;
            point_cloud_cluster.push_back(return_cloud);
        }
        for(int i=0;i<cluster_indices.size();i++){
            pcl::PointIndices::Ptr temp_indices(new pcl::PointIndices);
            temp_indices->indices = cluster_indices[i].indices;
            point_cloud_cluster.push_back(*pointCloudFromInd(temp_indices,cloud));
        }
        return point_cloud_cluster;
    }

    std::vector<pcl::PointCloud<pcl::PointXYZ>> SemanticMap::getObjectPointsEuc(pcl::PointCloud<pcl::PointXYZ>::ConstPtr cloud)
    {
        std::vector<pcl::PointCloud<pcl::PointXYZ>> point_cloud_cluster;
        pcl::PointCloud<pcl::PointXYZ> return_cloud;
        std::vector<pcl::PointIndices> cluster_indices;


        if (cloud->points.size() == 0)
        {
            ROS_WARN("No points in cloud before Euclead and tree");
            return_cloud.points = cloud->points;
            point_cloud_cluster.push_back(return_cloud);
            return point_cloud_cluster;
        }
        // Creating the KdTree object for the search method of the extraction
        pcl::search::KdTree<pcl::PointXYZ>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZ>);
        tree->setInputCloud (cloud);

        //Do eucledean clustering
        pcl::EuclideanClusterExtraction<pcl::PointXYZ> ec;
        ec.setClusterTolerance (0.1);
        ec.setMinClusterSize (double(100));
        ec.setMaxClusterSize (cloud->points.size());
        ec.setSearchMethod (tree);
        ec.setInputCloud (cloud);
        ec.extract (cluster_indices);

        if (cluster_indices.size() == 0)
        {
            ROS_WARN("No points in cluster indicies");
            return_cloud.points = cloud->points;
            point_cloud_cluster.push_back(return_cloud);
        }
        for(int i=0;i<cluster_indices.size();i++){
            pcl::PointIndices::Ptr temp_indices(new pcl::PointIndices);
            temp_indices->indices = cluster_indices[i].indices;
            point_cloud_cluster.push_back(*pointCloudFromInd(temp_indices,cloud));
        }
        return point_cloud_cluster;
    }

    double calculateMeanHight(pcl::PointCloud<pcl::PointXYZ>::ConstPtr input_cloud){
        Eigen::Vector4f centroid;
        pcl::compute3DCentroid(*input_cloud,centroid);
        return centroid[2];
        }
    
    // Combine shapes
    void SemanticMap::updateUnion(size_t id)
    {
        SemanticObject &obj = objectList.at(id);

        if (obj.shapes.size() < 1)
        {
            ROS_ERROR("Semantic object has no shape");
            return;
        }

        obj.shape_union = computeConvexHullPcl(obj.point_cloud);

        std::pair<double, double> dimensions = get_real_object_length_width(obj.name);
        double realArea = dimensions.first * dimensions.second;

        //if (obj.times_merged > 5 || bg::area(obj.shape_union) > realArea)
        if (bg::area(obj.shape_union) > realArea)
        { 
            obj.times_merged = 0;

            // Remove outliers from the point cloud
            obj.point_cloud = removeOutliers(obj.point_cloud);

            // Cluster the point cloud
            std::vector<pcl::PointCloud<pcl::PointXYZ>> point_cloud_cluster; 
            point_cloud_cluster = getObjectPointsEuc(obj.point_cloud);

            // Find the largest cluster
            pcl::PointCloud<pcl::PointXYZ>::Ptr biggest_cluster(new pcl::PointCloud<pcl::PointXYZ>);
            size_t biggest_cluster_size = 0;
            for(const auto& cluster : point_cloud_cluster) {
                if(cluster.size() > biggest_cluster_size) {
                    *biggest_cluster = cluster;
                    biggest_cluster_size = cluster.size();
                }
            }
            
            // Replace obj.point_cloud with the biggest cluster
            obj.point_cloud = biggest_cluster;
            obj.shape_union = computeConvexHullPcl(obj.point_cloud);
        }

        std::pair<polygon, double> selected_obb;
        selected_obb = create_object_box_using_prior_knowledge(obj.shape_union, obj.name);
        obj.obb = selected_obb.first;
        obj.obb_score = 1 - selected_obb.second;
        bg::centroid(obj.obb, obj.oriented_box_cen);
        bg::centroid(obj.shape_union, obj.shape_union_cen);

        objectRtree.remove(std::make_pair(obj.bounding_box, id));
        obj.bounding_box = bg::return_envelope<box>(obj.shape_union);
        objectRtree.insert(std::make_pair(obj.bounding_box, id));
    }

    size_t SemanticMap::combineObjects(std::set<size_t> objects)
    {
        ROS_INFO_STREAM("Combining " << objects.size() << " objects");
        auto it = objects.begin();
        size_t combinedId = *it;
        it++;
        SemanticObject &combinedObj = objectList.at(combinedId);
        //pcl::VoxelGrid<pcl::PointXYZ> vox;
        for (; it != objects.end(); it++)
        {

            SemanticObject &toMerge = objectList.at(*it);
            *combinedObj.point_cloud += *toMerge.point_cloud;
            combinedObj.mean_height = double(combinedObj.mean_height+toMerge.mean_height)/2.0;
            combinedObj.class_confidence = double(combinedObj.class_confidence+toMerge.class_confidence)/2.0;
            if (toMerge.counting_queue.size() > combinedObj.counting_queue.size())
                combinedObj.counting_queue = toMerge.counting_queue;

            removeObject(*it);
        }
        //updateUnion(combinedId);
        return combinedId;
    }

    // Add new object or update existing object
    void SemanticMap::addEvidence(const std::string &name, const float &confidence, const polygon &pg, double mean_height, pcl::PointCloud<pcl::PointXYZ>::Ptr cloud)
    {
        
        std::set<size_t> existingObjects = getObjectsByNameInRange(name, pg);

        //filter all neighbors with IoU < 0.2
        //filterIntersectionThresh(existingObjects, pg);
        if (existingObjects.empty()) 
        {
            // no object evidence exists yet, create new
            ROS_INFO("No Neighbors fitting, Create new object");
            addNewObject(name,confidence, pg, mean_height, cloud);
        } 
        else 
        {
            size_t objectId = *existingObjects.begin();

            // if more than one object fits, combine objects
            if (existingObjects.size() > 1) {
                objectId = combineObjects(existingObjects);
            }

            // combine combinedShape with new one
            SemanticObject &obj = objectList.at(objectId);

            // For existence prob update: if queue size is > 30 pop first entry and push 1
            if (obj.counting_queue.size() > param_config.queue_size) obj.counting_queue.pop();
            obj.counting_queue.push(1);
            obj.times_merged++;

            obj.shape_union = computeConvexHullPcl(obj.point_cloud);
            obj.isCombined = true;

            // Object occupancy zone update if the object shape shows important change
            polygon newCloudpolygon = computeConvexHullPcl(cloud);
            double overlap = iou(obj.shape_union, newCloudpolygon);

            if(overlap < 0.9){
                obj.class_confidence = (obj.class_confidence + confidence)/ 2;
                obj.mean_height = (obj.mean_height + mean_height) / 2;
                *obj.point_cloud += *cloud;

                pcl::VoxelGrid <pcl::PointXYZ> vox;
                vox.setInputCloud(obj.point_cloud);
                vox.setLeafSize(0.02, 0.02, 0.02);
                vox.setSaveLeafLayout(true);
                vox.filter(*obj.point_cloud);

                updateUnion(objectId);
            }
        }

        pcl::PassThrough<pcl::PointXYZ> pass;
        
        // check if the object polygon lies on table and filter table plan
        for (size_t table_id : tableList){
            SemanticObject &table = objectList.at(table_id);
            std::set<size_t> tableObjects = getObjectsInRange(table.shape_union);
            for (size_t id : tableObjects)
            {
                SemanticObject &tableObj = objectList.at(id);
                if (tableObj.name == "Table"){
                    continue;
                }
                pass.setInputCloud (tableObj.point_cloud);
                pass.setFilterFieldName ("z");
                pass.setFilterLimits (table.mean_height-0.20, table.mean_height+0.02);
                pass.setNegative (true);
                pass.filter(*tableObj.point_cloud);

                if(tableObj.point_cloud->points.size() < 5)
                {
                    ROS_INFO_STREAM("Object " << tableObj.name << " removed beacause it was in table points");
                    removeObject(id);
                }
                else
                {
                    tableObj.shape_union = computeConvexHullPcl(tableObj.point_cloud);
                    std::pair<polygon, double> selected_obb;
                    selected_obb = create_object_box_using_prior_knowledge(tableObj.shape_union, tableObj.name);
                    tableObj.obb = selected_obb.first;
                    tableObj.obb_score = 1-selected_obb.second;
                }
            }
        }
    }

    void SemanticMap::updateEvidenceCertainty(const std::string &name, const polygon &pg)
    {
        std::set<size_t> existingObjects = getObjectsByNameInRange(name, pg);
        if (!existingObjects.empty()) 
        {
            size_t objectId = *existingObjects.begin();

            if (existingObjects.size() > 1) {
                objectId = combineObjects(existingObjects);
            }

            SemanticObject &obj = objectList.at(objectId);

            //if queue size is > 30 pop first entry and push 1
            if (obj.counting_queue.size() > param_config.queue_size) obj.counting_queue.pop();
            obj.counting_queue.push(1);

            obj.isCombined = true;
        }
    }
    
    double calculateCertainty(std::queue<int> counting_queue){
        int hit = 0;
        int miss = 0;
        std::queue <int> temp = counting_queue;
        while (!temp.empty())
        {
            if (temp.front() == 1) hit+=1;
            else if(temp.front() == 0) miss+=1;
            temp.pop();
        }
        return (double)hit/(double)(hit+ miss + (1./counting_queue.size()));
    }
    
    void SemanticMap::removeEvidence(const polygon &visibilityArea, const point &robot)
    {
        std::set<size_t> existingObjects = getObjectsWithinRange(visibilityArea);

        for (size_t id : existingObjects)
        {
            SemanticObject &obj = objectList.at(id);
            point cen_point;
            bg::centroid(obj.shape_union, cen_point);
            double dist_to_obj = bg::distance(robot, cen_point);
            double obj_area = bg::area(obj.shape_union);

            multi_polygon ObjectPartInVisibilityArea;
            bg::intersection(visibilityArea, obj.shape_union, ObjectPartInVisibilityArea);
            double objectCoveredArea = bg::area(ObjectPartInVisibilityArea) / obj_area;

            // Skip objects that are out of range or not sufficiently covered
            if ((dist_to_obj > 3.0 || dist_to_obj < 1.7 || objectCoveredArea < 0.8) && !obj.isCombined)
            {
                // ROS_INFO_STREAM(obj.name << " is not in range! Its prob is not updated.");
                continue;
            }

            // Update certainty for combined objects
            if (obj.isCombined)
            {
                obj.exist_certainty = calculateCertainty(obj.counting_queue);
                // ROS_INFO_STREAM(obj.name << " is combined ! Its prob is is equal " << obj.exist_certainty);
            }
            else
            {
                bool hasVisibleEdge = false;

                for (size_t i = 0; i < obj.obb.outer().size() - 1; ++i)
                {
                    polygon area_from_robot_to_edge;
                    bg::append(area_from_robot_to_edge.outer(), robot);
                    bg::append(area_from_robot_to_edge.outer(), obj.obb.outer()[i]);
                    bg::append(area_from_robot_to_edge.outer(), obj.obb.outer()[i + 1]);
                    bg::append(area_from_robot_to_edge.outer(), robot);

                    if (!bg::is_valid(area_from_robot_to_edge))
                    {
                        area_from_robot_to_edge.clear();
                        bg::append(area_from_robot_to_edge.outer(), robot);
                        bg::append(area_from_robot_to_edge.outer(), obj.obb.outer()[i + 1]);
                        bg::append(area_from_robot_to_edge.outer(), obj.obb.outer()[i]);
                        bg::append(area_from_robot_to_edge.outer(), robot);
                    }

                    multi_polygon intersection;
                    bg::intersection(area_from_robot_to_edge, obj.obb, intersection);

                    if (!bg::area(intersection))
                    {
                        hasVisibleEdge = true;

                        for (size_t id2 : existingObjects)
                        {
                            if (id2 == id) continue;

                            SemanticObject &obj2 = objectList.at(id2);
                            if (!checkTheAbilityOfObjectsToOverlap(obj.name, obj2.name))
                                break;

                            multi_polygon intersection2;
                            bg::intersection(area_from_robot_to_edge, obj2.obb, intersection2);

                            if (bg::area(intersection2))
                            {
                                hasVisibleEdge = false;
                                break;
                            }
                        }

                        if (hasVisibleEdge)
                            break;
                    }
                }

                // Reduce certainty if at least one edge is visible
                if (hasVisibleEdge)
                {
                    if (obj.counting_queue.size() > param_config.queue_size) 
                        obj.counting_queue.pop();
                    obj.counting_queue.push(0);
                    obj.exist_certainty = calculateCertainty(obj.counting_queue);
                    // ROS_INFO_STREAM(obj.name << " is not combined and has visible edge ! Its prob reduced " << obj.exist_certainty);
                }
                else
                {
                    // ROS_INFO_STREAM(obj.name << " is not combined but possibly occluded ! Its prob is not reduced.");
                }
            }

            obj.isCombined = false;

            // Remove object if conditions are met
            if ((dist_to_obj >= 1.7 && dist_to_obj <= 3.0 && objectCoveredArea >= 0.8) &&
                obj.counting_queue.size() >= param_config.queue_thresh && obj.exist_certainty < 0.25)
            {
                removeObject(id);
                ROS_INFO_STREAM(obj.name << " is removed !!");
            }
        }
    }
 
    void SemanticMap::addNewObject(const std::string &name, const float &confidence, const polygon &initial_shape, double &mean_height,  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud)
    {
        SemanticObject obj;
        obj.name = name;
        obj.class_confidence = confidence;
        point shape_centroid;
        bg::centroid(initial_shape, shape_centroid);
        obj.shapes.push_back({initial_shape, shape_centroid, 1});
        obj.counting_queue.push(1);
        obj.isCombined = true;
        obj.exist_certainty = 1.0;
        obj.shape_union = initial_shape;
        obj.centroid_sum = shape_centroid;
        obj.centroid_sum_sq = point_square(shape_centroid);
        obj.centroid_mean = shape_centroid;
        obj.bounding_box = bg::return_envelope<box>(obj.shape_union);
        obj.mean_height = mean_height;
        obj.point_cloud = cloud;
        bg::centroid(obj.shape_union, obj.shape_union_cen);

        double angle;
        obj.oriented_box = create_oriented_box(obj.shape_union, angle);
        obj.rotation_angle = angle;
        // ROS_INFO_STREAM("Object rotation angle = " << obj.rotation_angle);

        std::pair<polygon, double> selected_obb;
        selected_obb= create_object_box_using_prior_knowledge(obj.shape_union, obj.name);
        obj.obb = selected_obb.first;
        obj.obb_score = 1-selected_obb.second;
        
        bg::centroid(obj.obb, obj.oriented_box_cen);
        // std::cout << "obj obb 2 size: " << obj.obb.outer().size() << std::endl;
        addObject(obj);
    }

    void SemanticMap::addObject(const SemanticObject &obj)
    {
        if (obj.name == "Table"){
            tableList.insert(next_index);
        }
        //ROS_INFO_STREAM("Adding object" << obj.name << "to map");
        objectList[next_index] = obj;
        rtree_entry ent = {obj.bounding_box, next_index};
        objectRtree.insert(ent);
        //ROS_INFO_STREAM("Succesfully added, size: " << objectRtree.size());
        next_index++;
    }

    void SemanticMap::removeObject(size_t id)
    {
        SemanticObject &obj = objectList.at(id);
        objectRtree.remove(std::make_pair(obj.bounding_box, id));
        objectList.erase(id);
        if (tableList.find(id) != tableList.end()){
            tableList.erase(id);
        }
    }

    void SemanticMap::clearAll()
    {
        objectList.clear();
        objectRtree.clear();
        tableList.clear();
        next_index = 0;
    }

    point SemanticMap::getRobotPosition(){
        tf2_ros::TransformListener tfListener(tfBuffer);
        geometry_msgs::TransformStamped transform;
        try{
            transform = tfBuffer.lookupTransform("map", "base_link", ros::Time(0));
        }
        catch (tf2::TransformException ex){
            ROS_ERROR("%s",ex.what());
            ros::Duration(1.0).sleep();
        }
        point robot;
        robot.x(transform.transform.translation.x);
        robot.y(transform.transform.translation.y);
        return robot;
    }
    
    std::set<size_t> SemanticMap::getObjectsWithinRange(const polygon &pg)
    {
        double coveredAreaPercentage;
        std::vector<rtree_entry> result_obj;
        std::set<size_t> result;
        objectRtree.query(bgi::intersects(pg), std::back_inserter(result_obj));
        for (rtree_entry val : result_obj)
        {
            multi_polygon sect;
            const SemanticObject &foundObject = objectList.at(val.second);
            bg::intersection(pg, foundObject.shape_union, sect);
            coveredAreaPercentage = bg::area(sect)/bg::area(foundObject.shape_union);
            if(coveredAreaPercentage > 0.5)
                result.insert(val.second);
        }
        return result;
    }

    std::set<size_t> SemanticMap::getObjectsByNameInRange(const std::string &name, const polygon &pg)
    {
        std::vector<rtree_entry> result_obj;
        std::set<size_t> result;
        objectRtree.query(bgi::intersects(pg), std::back_inserter(result_obj));
        for (rtree_entry val : result_obj)
        {
            const SemanticObject &foundObject = objectList.at(val.second);
        
            if (foundObject.name == name && (bg::intersects(pg, foundObject.shape_union)
            || bg::within(pg, foundObject.shape_union) || bg::touches(pg, foundObject.shape_union)))
                result.insert(val.second);
            
        }
        return result;
    }

    std::set<size_t> SemanticMap::getObjectsInRange(const polygon &pg)
    {
        std::vector<rtree_entry> result_obj;
        std::set<size_t> result;
        objectRtree.query(bgi::intersects(pg), std::back_inserter(result_obj));
        for (rtree_entry val : result_obj)
        {
            const SemanticObject &foundObject = objectList.at(val.second);
            if (bg::intersects(pg, foundObject.shape_union) || bg::within(pg, foundObject.shape_union))
                result.insert(val.second);
        }
        return result;
    }

    polygon SemanticMap::polygonFromBox(const box &bbox, const double &angle){
        semmapping::point min;
        semmapping::point max;
        semmapping::point maxmin;
        semmapping::point minmax;

        maxmin.x(bbox.max_corner().x()); maxmin.y(bbox.min_corner().y());
        minmax.x(bbox.min_corner().x()); minmax.y(bbox.max_corner().y());

        bg::strategy::transform::rotate_transformer<boost::geometry::degree, double, 2, 2> rotate(angle * (180/M_PI));
        bg::transform(bbox.min_corner(), min, rotate);
        bg::transform(bbox.max_corner(), max, rotate);
        bg::transform(minmax, minmax, rotate);
        bg::transform(maxmin, maxmin, rotate);

        semmapping::polygon pg;
        semmapping::bg::append(pg.outer(), min);
        semmapping::bg::append(pg.outer(), maxmin);
        semmapping::bg::append(pg.outer(), max);
        semmapping::bg::append(pg.outer(), minmax);
        semmapping::bg::correct(pg);
        return pg;
    }

    pcl::PointCloud<pcl::PointXYZ>::Ptr SemanticMap::removeOutliers(pcl::PointCloud<pcl::PointXYZ>::ConstPtr cloud){
        pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_filtered (new pcl::PointCloud<pcl::PointXYZ>);
        // Create the filtering object
        pcl::StatisticalOutlierRemoval<pcl::PointXYZ> sor;
        sor.setInputCloud(cloud);
        sor.setMeanK (40);
        sor.setStddevMulThresh (1.0);
        sor.filter (*cloud_filtered);
        return cloud_filtered;
    }

    pcl::PointCloud<pcl::PointXYZ>::Ptr SemanticMap::removeRadiusOutliers(pcl::PointCloud<pcl::PointXYZ>::ConstPtr cloud){
        pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_filtered (new pcl::PointCloud<pcl::PointXYZ>);
        // Create the filtering object
        pcl::RadiusOutlierRemoval<pcl::PointXYZ> outrem;
        outrem.setInputCloud(cloud);
        outrem.setRadiusSearch(0.08);
        outrem.setMinNeighborsInRadius (1500);
        outrem.setKeepOrganized(true);
        // apply filter
        outrem.filter (*cloud_filtered);
        return cloud_filtered;
    }

    mapping_msgs::SemanticMap::Ptr SemanticMap::createMapMessage(const point &robot, double loaded)
    {
        bool isChair = false;
        bool isTable = false;
        int chairID = 0;
        int tableID = 0;


        ROS_WARN("erstelle map msg ");
        std::vector<int> remove_ids;

        mapping_msgs::SemanticMap::Ptr map(new mapping_msgs::SemanticMap);

        for (auto &val : objectList)
        {
            viewer_index += 1;
            SemanticObject &obj = val.second;
            if (obj.name == "Chair" && !isChair){
                isChair = true;
                chairID = val.first;
            }
            if (obj.name == "Table" && !isTable){
                isTable = true;
                tableID = val.first;
            }
            if(loaded == false) {
                if (bg::within(robot, obj.shape_union)) {
                    remove_ids.push_back(val.first);
                    ROS_INFO_STREAM("Object " << obj.name << " removed BECAUSE INTERFERENCE WITH ROBOT");
                    std::cout << "REMOVE OBJECT BECAUSE INTERFERENCE WITH ROBOT" << std::endl;
                    continue;
                }
            }
            if (obj.exist_certainty > 0.25)// param_config.certainty_thresh)
            {
                mapping_msgs::SemanticObject obj_msg;
                obj_msg.id = val.first;
                obj_msg.name = obj.name;
                obj_msg.exist_certainty = obj.exist_certainty;
                if(!obj.obb.outer().empty()){
                    obj_msg.obb = boostToPolygonMsg(obj.obb);
                }
                obj_msg.shape = boostToPolygonMsg(obj.shape_union);
                point centroid;
                bg::centroid(obj.shape_union, centroid);
                obj.shape_union_cen = centroid;
                obj_msg.position = boostToPointMsg(centroid);
                sensor_msgs::PointCloud2 msg_cloud;

                //ROS_WARN_STREAM("CREATING MAP MESSAGE for obj: "<< obj.name);
                if(obj.point_cloud != nullptr){
                    pcl::toROSMsg(*obj.point_cloud, msg_cloud);
                    msg_cloud.header.frame_id = "map";
                    obj_msg.pointcloud = msg_cloud;
                }

                map->objects.push_back(std::move(obj_msg));
            }
        }
    
        for(int i= 0; i<remove_ids.size(); i++){
            removeObject(remove_ids[i]);
        }
        map->header.frame_id = "map";
        map->header.stamp = ros::Time::now();
        return map;
    }

    pcl::PointCloud<pcl::PointXYZRGB>::Ptr SemanticMap::createColoredPointCloud(std::string name, pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud, double objectExistenceCertainty) 
    {
        pcl::PointCloud<pcl::PointXYZRGB>::Ptr color_cloud(new pcl::PointCloud<pcl::PointXYZRGB>);
        color_cloud->header = cloud->header;

        // Default color (e.g., white) if class name not found
        uint8_t r = 255, g = 255, b = 255;

        // Find the color associated with the class name
        auto it = classColorMap.find(name);
        if (it != classColorMap.end()) {
            const std::tuple<uint8_t, uint8_t, uint8_t>& color = it->second;
            r = std::get<0>(color) * (1 - objectExistenceCertainty);
            g = std::get<1>(color) * (1 - objectExistenceCertainty);
            b = std::get<2>(color) * (1 - objectExistenceCertainty);
        }

        for (const auto& point : cloud->points) {
            pcl::PointXYZRGB color_point;
            color_point.x = point.x;
            color_point.y = point.y;
            color_point.z = point.z;
            color_point.r = r;
            color_point.g = g;
            color_point.b = b;
            color_cloud->points.push_back(color_point);
        }

        return color_cloud;
    }

    mapping_msgs::SemanticMap::Ptr SemanticMap::createMapMessage(const point &robot, double loaded, const ros::Publisher& poinCloudPublisher)
    {
        bool isChair = false;
        bool isTable = false;
        int chairID = 0;
        int tableID = 0;


        ROS_WARN("erstelle map msg ");
        std::vector<int> remove_ids;

        mapping_msgs::SemanticMap::Ptr map(new mapping_msgs::SemanticMap);

        pcl::PointCloud<pcl::PointXYZRGB>::Ptr total_cloud(new pcl::PointCloud<pcl::PointXYZRGB>);

        for (auto &val : objectList)
        {
            viewer_index += 1;
            SemanticObject &obj = val.second;
            if (obj.name == "Chair" && !isChair){
                isChair = true;
                chairID = val.first;
            }
            if (obj.name == "Table" && !isTable){
                isTable = true;
                tableID = val.first;
            }
            if(loaded == false) {
                if (bg::within(robot, obj.shape_union)) {
                    remove_ids.push_back(val.first);
                    ROS_INFO_STREAM("Object " << obj.name << " removed BECAUSE INTERFERENCE WITH ROBOT");
                    std::cout << "REMOVE OBJECT BECAUSE INTERFERENCE WITH ROBOT" << std::endl;
                    continue;
                }
            }

            if (obj.exist_certainty > 0.25)// param_config.certainty_thresh)
            {
                mapping_msgs::SemanticObject obj_msg;
                obj_msg.id = val.first;
                obj_msg.name = obj.name;
                obj_msg.exist_certainty = obj.exist_certainty;
                if(!obj.obb.outer().empty()){
                    obj_msg.obb = boostToPolygonMsg(obj.obb);
                }
                obj_msg.shape = boostToPolygonMsg(obj.shape_union);
                point centroid;
                bg::centroid(obj.shape_union, centroid);
                obj.shape_union_cen = centroid;
                obj_msg.position = boostToPointMsg(centroid);
                sensor_msgs::PointCloud2 msg_cloud;

                //ROS_WARN_STREAM("CREATING MAP MESSAGE for obj: "<< obj.name);
                if(obj.point_cloud != nullptr){

                    pcl::PointCloud<pcl::PointXYZRGB>::Ptr color_cloud = createColoredPointCloud(obj.name, obj.point_cloud, obj.exist_certainty);
                    *total_cloud += *color_cloud;

                    pcl::toROSMsg(*obj.point_cloud, msg_cloud);
                    msg_cloud.header.frame_id = "map";
                    obj_msg.pointcloud = msg_cloud;
                }

                map->objects.push_back(std::move(obj_msg));
            }
        }

        if (!total_cloud->empty()) {
            sensor_msgs::PointCloud2 msg_full_cloud;
            pcl::toROSMsg(*total_cloud, msg_full_cloud);
            msg_full_cloud.header.frame_id = "map";
            poinCloudPublisher.publish(msg_full_cloud);
        }

    
        for(int i= 0; i<remove_ids.size(); i++){
            removeObject(remove_ids[i]);
        }
        map->header.frame_id = "map";
        map->header.stamp = ros::Time::now();
        return map;
    }

    mapping_msgs::SemanticMap::Ptr SemanticMap::createGroundTruthMapMessage(){
        ROS_WARN("Ground Truth map msg ");
        mapping_msgs::SemanticMap::Ptr map(new mapping_msgs::SemanticMap);
        for (auto &val : groundTruthObjectList)
        {
            viewer_index += 1;
            SemanticObject &obj = val.second;
            mapping_msgs::SemanticObject obj_msg;
            obj_msg.id = val.first;
            obj_msg.name = obj.name;
            obj_msg.exist_certainty = 1;
            obj_msg.obb = boostToPolygonMsg(obj.shape_union);
            obj_msg.shape = boostToPolygonMsg(obj.shape_union);
            point centroid;
            bg::centroid(obj.shape_union, centroid);
            obj.shape_union_cen = centroid;
            obj_msg.position = boostToPointMsg(centroid);
            sensor_msgs::PointCloud2 msg_cloud;

            map->objects.push_back(std::move(obj_msg));
        }

        map->header.frame_id = "ground_truth_map";
        map->header.stamp = ros::Time::now();
        return map;
    }

    bool SemanticMap::writeLikelihoodData(std::ostream &output)
    {
        YAML::Node map;
        YAML::Node n;
        std::ostringstream sh;
        std::copy(likelihood_value_chair.begin(), likelihood_value_chair.end()-1, std::ostream_iterator<double>(sh, ","));
        sh << likelihood_value_chair.back();
        n["likelihood_chair"] = sh.str();
        std::ostringstream sh1;
        std::copy(time_value_chair.begin(), time_value_chair.end()-1, std::ostream_iterator<double>(sh1, ","));
        sh1 << time_value_chair.back();
        n["time_chair"] = sh1.str();
        std::ostringstream sh2;
        std::copy(likelihood_value_table.begin(), likelihood_value_table.end()-1, std::ostream_iterator<double>(sh2, ","));
        sh << likelihood_value_table.back();
        n["likelihood_table"] = sh2.str();
        std::ostringstream sh3;
        std::copy(time_value_table.begin(), time_value_table.end()-1, std::ostream_iterator<double>(sh3, ","));
        sh1 << time_value_table.back();
        n["time_table"] = sh3.str();
        map.push_back(n);
        output << map;
        return true;
    }

    bool SemanticMap::writeMapData(std::ostream &output)
    {
        YAML::Node map;
        for(const auto &map_entry : objectList)
        {
            const SemanticObject &obj = map_entry.second;
            YAML::Node n;
            n["name"] = obj.name;
            n["exist_certainty"] = obj.exist_certainty;
            n["oriented_box_rot"] = obj.rotation_angle;
            std::ostringstream sh;
            sh << bg::wkt(obj.shape_union);
            n["shape_union"] = sh.str();
            std::ostringstream sh_cen;
            sh_cen << bg::wkt(obj.shape_union_cen);
            n["shape_union_cen"] = sh_cen.str();
            std::ostringstream obb;
            obb << bg::wkt(obj.obb);
            n["oriented_box"] = obb.str();
            std::ostringstream obb_cen;
            obb_cen << bg::wkt(obj.oriented_box_cen);
            n["oriented_box_cen"] = obb_cen.str();
            n["oriented_box_score"] = obj.obb_score;
            map.push_back(n);
        }
        output << map;
        return true;
    }

    bool SemanticMap::readMapData(std::istream &input)
    {
        clearAll();
        YAML::Node map = YAML::Load(input);
        for (const YAML::Node &entry : map)
        {
            SemanticObject obj;
            obj.name = entry["name"].as<std::string>();
            obj.exist_certainty = entry["exist_certainty"].as<double>();
            try
            {
                bg::read_wkt(entry["shape_union"].as<std::string>(), obj.shape_union);
            }
            catch (const bg::read_wkt_exception &e)
            {
                ROS_ERROR_STREAM("Error reading object shape: " << e.what());
                return false;
            }
            try
            {
                bg::read_wkt(entry["shape_union_cen"].as<std::string>(), obj.shape_union_cen);
            }
            catch (const bg::read_wkt_exception &e)
            {
                ROS_ERROR_STREAM("Error reading object shape centroid: " << e.what());
                return false;
            }
            try
            {
                bg::read_wkt(entry["oriented_box"].as<std::string>(), obj.obb);
            }
            catch (const bg::read_wkt_exception &e)
            {
                ROS_ERROR_STREAM("Error reading obb: " << e.what());
                return false;
            }
            try
            {
                bg::read_wkt(entry["oriented_box_cen"].as<std::string>(), obj.oriented_box_cen);
            }
            catch (const bg::read_wkt_exception &e)
            {
                ROS_ERROR_STREAM("Error reading obb centroid: " << e.what());
                return false;
            }
            obj.bounding_box = bg::return_envelope<box>(obj.shape_union);
            obj.obb_score = entry["oriented_box_score"].as<double>();
            addObject(obj);
        }
        cout << "Map to evaluate loaded !" << endl;
        return true;
    }

    bool SemanticMap::loadGroundTruthMap(std::istream &input)
    {
        groundTruthObjectList.clear();
        groundTruthObjectRtree.clear();
        groundTruthNext_index = 0;
        YAML::Node map = YAML::Load(input);
        for (const YAML::Node &entry : map)
        {
            SemanticObject obj;
            obj.name = entry["name"].as<std::string>();
            obj.id = entry["id"].as<int>();
            obj.exist_certainty = 1;
            try
            {
                bg::read_wkt(entry["shape_union"].as<std::string>(), obj.shape_union);
            }
            catch (const bg::read_wkt_exception &e)
            {
                ROS_ERROR_STREAM("Error reading object shape: " << e.what());
                return false;
            }
            obj.obb= obj.shape_union;
            obj.bounding_box = bg::return_envelope<box>(obj.shape_union);
            groundTruthObjectList[groundTruthNext_index] = obj;
            rtree_entry ent = {obj.bounding_box, groundTruthNext_index};
            groundTruthObjectRtree.insert(ent);
            //ROS_INFO_STREAM("Succesfully added to GTMap, size: " << groundTruthObjectRtree.size());
            groundTruthNext_index++;
        }
        cout << "Ground Truth Map loaded !" << endl;
        return true;
    }
   
    mapping_msgs::ObjectPositions::Ptr SemanticMap::findObjectPosition(const mapping_msgs::FindObjects &request)
    {
        point robot = getRobotPosition();
        geometry_msgs::Point center;
        point near_to_position;
        near_to_position.x(request.near_to_position.x);
        near_to_position.y(request.near_to_position.y);
        mapping_msgs::ObjectPositions::Ptr position_msg(new mapping_msgs::ObjectPositions);
        if (request.near_to == "" && request.nearest_to_robot == false) {
            for (auto &val : objectList) {
                const SemanticObject obj = val.second;
                if (obj.name == request.name) {
                    position_msg->name = obj.name;
                    center.x = obj.shape_union_cen.x();
                    center.y = obj.shape_union_cen.y();
                    position_msg->positions.push_back(center);
                }
            }
        }
        else if (request.nearest_to_robot == false) {
            std::vector<size_t> find_objects;
            std::vector<size_t> near_objects;
            size_t best_near_object;
            size_t best_find_object;
            for (auto &val : objectList) {
                const SemanticObject &obj = val.second;
                if (obj.name == request.name) {
                    find_objects.push_back(val.first);
                } 
                else if (obj.name == request.near_to) {
                    near_objects.push_back(val.first);
                }
            }
            double best_near_dist = std::numeric_limits<double>::infinity();
            for (size_t id : near_objects) {
                if (bg::distance(robot, objectList.at(id).shape_union_cen) < best_near_dist) {
                    best_near_object = id;
                    best_near_dist = bg::distance(robot, objectList.at(id).shape_union_cen);
                }
            }
            double best_find_dist = std::numeric_limits<double>::infinity();
            for (size_t id : find_objects) {
                if (bg::distance(objectList.at(best_near_object).shape_union_cen, objectList.at(id).shape_union_cen) < best_find_dist) {
                    best_find_object = id;
                    best_find_dist = bg::distance(objectList.at(best_near_object).shape_union_cen,
                                                objectList.at(id).shape_union_cen);
                }
            }
            position_msg->name = objectList.at(best_find_object).name;
            center.x = objectList.at(best_find_object).shape_union_cen.x();
            center.y = objectList.at(best_find_object).shape_union_cen.y();
            position_msg->positions.push_back(center);
        }
        else if (request.nearest_to_robot == true){
            std::vector<size_t> find_objects;
            size_t best_object;
            for (auto &val : objectList) {
                const SemanticObject obj = val.second;
                if (obj.name == request.name)
                    find_objects.push_back(val.first);
            }
            double best_dist = std::numeric_limits<double>::infinity();
            for(size_t id : find_objects){
                if (bg::distance(robot, objectList.at(id).shape_union_cen) < best_dist)
                    best_object = id;
            }
            position_msg->name = objectList.at(best_object).name;
            center.x = objectList.at(best_object).shape_union_cen.x();
            center.y = objectList.at(best_object).shape_union_cen.y();
            position_msg->positions.push_back(center);
        }
        else if (bg::is_empty(near_to_position) == false){
            std::vector<size_t> find_objects;
            size_t best_object;
            for (auto &val : objectList) {
                const SemanticObject obj = val.second;
                if (obj.name == request.name) {
                    find_objects.push_back(val.first);
                }
            }
            double best_dist = std::numeric_limits<double>::infinity();
            for(size_t id : find_objects){
                if (bg::distance(near_to_position, objectList.at(id).shape_union_cen) < best_dist)
                    best_object = id;
            }
            position_msg->name = objectList.at(best_object).name;
            center.x = objectList.at(best_object).shape_union_cen.x();
            center.y = objectList.at(best_object).shape_union_cen.y();
            position_msg->positions.push_back(center);
        }
        return position_msg;
    }

    void SemanticMap::classRating(std::pair<std::string, double*> &class_data, double mapping_factor, double dengler_factor, double com_offset, double com_offset_dengler){ 
        class_data.second[0]++;
        class_data.second[1]= (class_data.second[1]*(class_data.second[0]-1) + mapping_factor)/class_data.second[0];
        class_data.second[2]= (class_data.second[2]*(class_data.second[0]-1) + com_offset)/class_data.second[0];
        class_data.second[4]= (class_data.second[4]*(class_data.second[0]-1) + dengler_factor)/class_data.second[0];
        class_data.second[5]= (class_data.second[5]*(class_data.second[0]-1) + com_offset_dengler)/class_data.second[0];
    }

    double SemanticMap::association_score(std::vector<double> &weights, double f1, double f2, double f3) {
    // Calculate the score using the weights and the input variables
    return weights[0] * f1 + weights[1] * f2 + weights[2] * f3;
    }
    
    void SemanticMap::gradient_descent(std::vector<double> &weights, int n, double f1, double f2, double f3) {
        
        double learning_rate = 0.005;
        double tolerance = 0.00001;

        double last_score = association_score(weights, f1, f2, f3);
        cout<<"last_score= "<<last_score<<endl;

        for (int i = 0; i < n; i++) {
            // Calculate the gradient
            double gradient[3];
            gradient[0] = f1 *(1-last_score);
            gradient[1] = f2 *(1-last_score);
            gradient[2] = f3 *(1-last_score);
            
            /*
            // Update the weights and ensure that weights are between 0 and 1
            for (int j = 0; j < 3; j++) {
                weights[j] = weights[j] - learning_rate * gradient[j];
                //weights[j] = fmax(0, fmin(1, weights[j]));
            }*/

            weights[0] = weights[0] - gradient[0]*learning_rate;
            weights[1] = weights[1] - gradient[1]*learning_rate;
            weights[2] = weights[2] - gradient[2]*learning_rate;

            // Ensure that w1 >= w2 >= w3
            if (weights[0] < weights[1])
                std::swap(weights[0], weights[1]);
            if (weights[1] < weights[2])
                std::swap(weights[1], weights[2]);
            if (weights[0] < weights[1])
                std::swap(weights[0], weights[1]);

            // Normalize weights to sum to 1
            double sum_weights = weights[0] + weights[1] + weights[2];
            for (int j = 0; j < 3; j++) {
                weights[j] /= sum_weights;
            }

            double current_score = association_score(weights, f1, f2, f3);
            if (abs(current_score - last_score) < tolerance) break;
            last_score = current_score;
        }
    }

    void SemanticMap::grid_search(polygon poly, polygon box, std::vector<double> &weights, double &min_f1_score, double f1, double f2, double f3)
    {
        std::vector<double> weights1, weights2, weights3;

        double step = 0.1;
        double curr_IOU = iou(poly, box);

        for (double w1 = 0.4; w1 < 0.6; w1 += step) {
            for (double w2 = 0.1; w2 < 1.0 - w1; w2 += step) {
                double w3 = 1 - (w1 + w2);    // Ensure that the weights sum to 1
                
                double curr_ERROR = w1*f1 + w2*f2 + w3*f3;
                double curr_f1_score = 2 * (((1-curr_IOU)*curr_ERROR)/((1-curr_IOU)+curr_ERROR));

                if (curr_f1_score <= min_f1_score) {
                    weights[0] = w1;
                    weights[1] = w2;
                    weights[2] = w3;
                    min_f1_score= curr_f1_score;
                }
            }
        }
        cout<<"min_f1_score= " << min_f1_score << endl;
    }
    
    void SemanticMap::save_stats(std::vector<std::pair<std::string, double*>> all_classes_data, std::string filename, bool save_dengler_stats){
        std::ofstream myfile;
        myfile.open (filename, ios::out | ios::app);
        myfile << "New map data" << "\n";
        std::vector<std::pair<std::string, double*>>::iterator it;
        for(it = all_classes_data.begin(); it != all_classes_data.end(); it++){
            std::pair<std::string, double*> class_data = *it;
            if(save_dengler_stats){
                //Class, TP, FP, Mean IOU, Mean IOU Dengler, Mean CoM Offset, Mean CoM Dengler
                myfile << class_data.first << ","<< class_data.second[0] << ","<< class_data.second[3] << ","<< class_data.second[1] << ","<< class_data.second[4] 
                << ","<< class_data.second[2] << ","<< class_data.second[5] << "\n";
            }
            else{
                //Class, TP, FP, Mean IOU, Mean CoM Offset
                myfile << class_data.first << ","<< class_data.second[0] << ","<< class_data.second[3] << ","<< class_data.second[1] << ","<< class_data.second[2] << "\n";
            }
        }
        myfile.close();
    }

    void SemanticMap::evaluteMap(std::string filename){
        std::vector<std::string> evaluted_classes{"Chair", "Table", "Shelf", "Couch"};
        std::vector<std::pair<std::string, double*>> all_classes_data;
        double initial_data1[6]={0,0,0,0,0,0}; double initial_data2[6]={0,0,0,0,0,0}; double initial_data3[6]={0,0,0,0,0,0}; double initial_data4[6]={0,0,0,0,0,0};
        all_classes_data.push_back(std::make_pair("Chair", initial_data1));
        all_classes_data.push_back(std::make_pair("Table", initial_data2));
        all_classes_data.push_back(std::make_pair("Shelf", initial_data3));
        all_classes_data.push_back(std::make_pair("Couch", initial_data4));

        if(!objectList.empty()){
            // first: number of instances, second: our solution factor, third: dengler factor 
            int false_detection=0;
            for (auto &val : objectList){
                SemanticObject &obj = val.second;
                bool object_not_found= true;
                for(auto &val2 : groundTruthObjectList){
                    SemanticObject &gtObj = val2.second;
                    //cout << "object name " << obj.name <<" - Truth object name: "<< gtObj.name<< endl;
                    if(obj.exist_certainty > 0.25 && obj.name == gtObj.name){
                        double mapping_factor= iou(obj.obb, gtObj.obb);
                        double mapping_factor_dengler= iou(obj.shape_union, gtObj.obb);
                        point truth_centroid;
                        bg::centroid(gtObj.obb, truth_centroid);
                        double com_offset_dengler, com_offset;
                        com_offset_dengler= sqrt((obj.shape_union_cen.x() - truth_centroid.x())*(obj.shape_union_cen.x() - truth_centroid.x()) 
                                + (obj.shape_union_cen.y() - truth_centroid.y())*(obj.shape_union_cen.y() - truth_centroid.y()));
                        com_offset= sqrt((obj.oriented_box_cen.x() - truth_centroid.x())*(obj.oriented_box_cen.x() - truth_centroid.x()) 
                                + (obj.oriented_box_cen.y() - truth_centroid.y())*(obj.oriented_box_cen.y() - truth_centroid.y()));
                        
                        if(mapping_factor!=0)
                        {
                            //cout<< obj.name << val.first <<" represents object " << gtObj.name << val2.first << " with IOU: " << mapping_factor << " and CoM Offset: " 
                            //<< com_offset << endl;
                            object_not_found= false;
                            std::vector<std::pair<std::string, double*>>::iterator it;
                            for(it = all_classes_data.begin(); it != all_classes_data.end(); it++){
                                std::pair<std::string, double*> class_data = *it;
                                if(class_data.first == obj.name){
                                    classRating(class_data, mapping_factor, mapping_factor_dengler, com_offset, com_offset_dengler);
                                }
                            }     
                        }
                    }
                }

                if(obj.exist_certainty > 0.25 && object_not_found){
                    //cout << obj.name << val.first << " dont exist in the truth map!" << endl;
                    std::vector<std::pair<std::string, double*>>::iterator it;
                    for(it = all_classes_data.begin(); it != all_classes_data.end(); it++){
                        std::pair<std::string, double*> class_data = *it;
                        if(class_data.first == obj.name)
                            class_data.second[3]++;
                    }
                    false_detection++;
                }
            }

            cout <<"--- Map Evaluation ---" << endl;
            cout << std::left << setw(20)<< "class name" << setw(20)<< "TP" << setw(20)<< "FP"<< setw(20) << "Mean IOU" << setw(20) <<"Mean IOU Dengler"
            << setw(20) << "Mean CoM offset" << setw(20) <<"Mean CoM Dengler"<< endl;
            std::vector<std::pair<std::string, double*>>::iterator it;
            for(it = all_classes_data.begin(); it != all_classes_data.end(); it++){
                std::pair<std::string, double*> class_data = *it;
                cout << std::left << setw(20)<< class_data.first << setw(20) << class_data.second[0] << setw(20)<< class_data.second[3] << setw(20)
                << class_data.second[1] << setw(20) << class_data.second[4]<< setw(20) << class_data.second[2]<< setw(20) << class_data.second[5] << endl;
            }
            save_stats(all_classes_data, filename, true);
        }
        else
            ROS_INFO_STREAM("The Map is empty, so it can't be rated!");
    }

    std::map<size_t, SemanticObject> SemanticMap::getObjectList(){
        return objectList;
    }

    void SemanticMap::setObjectList(std::map<size_t, SemanticObject> object_List){
        clearAll();
        objectList= object_List;
    }

    size_t SemanticMap::getNextIndex(){
        return next_index;
    }
    
    void SemanticMap::setNextIndex(size_t nextIndex){
        next_index= nextIndex;
    }

    std::map<size_t, SemanticObject> SemanticMap::getGroundTruthObjectList(){
        return groundTruthObjectList;
    }

    void SemanticMap::setGroundTruthObjectList(std::map<size_t, SemanticObject> object_List){
        groundTruthObjectList.clear();
        groundTruthObjectList= object_List;
    }
}
