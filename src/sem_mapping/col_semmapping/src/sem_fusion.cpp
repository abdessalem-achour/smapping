#include <ros/ros.h>
#include <math.h>
#include <iostream>
#include <fstream>
#include <col_semmapping/sem_fusion.h>

namespace semmapping
{
    SemanticFusion::SemanticFusion() {}

    void SemanticFusion::show_map_id()
    {
        ROS_INFO_STREAM("Semantic Fusion Node");
    }

    SemanticObject SemanticFusion::copySemanticObject(SemanticObject obj)
    {
        SemanticObject c_obj;
        c_obj.name = obj.name;
        c_obj.rotation_angle = 0;
        c_obj.isCombined = true;
        c_obj.exist_certainty = obj.exist_certainty;
        c_obj.shape_union = obj.shape_union;
        c_obj.obb = obj.obb;
        c_obj.obb_score = obj.obb_score;
        c_obj.bounding_box = bg::return_envelope<box>(obj.obb);
        bg::centroid(c_obj.shape_union, c_obj.shape_union_cen);
        bg::centroid(c_obj.obb, c_obj.oriented_box_cen);
        c_obj.point_cloud = nullptr;
        return c_obj;
    }

    // Semantic Object fusion function: returns object OBB with the best score
    SemanticObject SemanticFusion::nmsFusionOfSemanticObject(SemanticObject initial_obj, SemanticObject received_obj)
    {
        SemanticObject obj;
        if (initial_obj.obb_score > received_obj.obb_score)
            obj=copySemanticObject(initial_obj);
        else
            obj=copySemanticObject(received_obj);

        //Partial polygons of fused object are stored in obj.shapes
        point initial_obj_centroid, received_obj_centroid;
        bg::centroid(initial_obj.shape_union, initial_obj_centroid); bg::centroid(received_obj.shape_union, received_obj_centroid);
        obj.shapes.push_back({initial_obj.shape_union, initial_obj_centroid, initial_obj.exist_certainty});
        obj.shapes.push_back({received_obj.shape_union, received_obj_centroid, received_obj.exist_certainty});

        obj.isCombined = true;

        return obj;
    }

    SemanticObject SemanticFusion::GeometricFusionOfSemanticObject(SemanticObject initial_obj, SemanticObject received_obj)
    {
        SemanticObject obj;

        double initial_obb_score = (ref_fit(initial_obj.obb, received_obj.shape_union) + ref_fit(initial_obj.obb, initial_obj.shape_union))/2;
        double received_obb_score = (ref_fit(received_obj.obb, initial_obj.shape_union) + ref_fit(received_obj.obb, received_obj.shape_union))/2;

        if(isRectangular(initial_obj.obb) && isRectangular(received_obj.obb))
        {
            cout<<"initial_obb_mapping_score= "<<initial_obj.obb_score<<" - received_obb_mapping_score= "<<received_obj.obb_score<<endl;
            cout<<"initial_obb_fusion_score= "<<initial_obb_score<<" - received_obb_fusion_score= "<<received_obb_score<<endl;
            if (initial_obb_score > received_obb_score)
                obj=copySemanticObject(initial_obj);
            else
                obj=copySemanticObject(received_obj);
        }
        else if(isRectangular(initial_obj.obb))
            obj=copySemanticObject(initial_obj);
        else if(isRectangular(received_obj.obb))
            obj=copySemanticObject(received_obj);
        else{
            obj.name = initial_obj.name;
            obj.rotation_angle = 0;
            multi_polygon sect;
            bg::intersection(initial_obj.obb, received_obj.obb, sect);
            obj.exist_certainty = (initial_obj.exist_certainty + received_obj.exist_certainty)/2;
            obj.shape_union = sect[0];
            obj.obb = sect[0];
            obj.bounding_box = bg::return_envelope<box>(obj.obb);
            bg::centroid(obj.shape_union, obj.shape_union_cen);
            bg::centroid(obj.obb, obj.oriented_box_cen);
            obj.point_cloud = nullptr;
        }

        //Partial polygons of fused object are stored in obj.shapes
        point initial_obj_centroid, received_obj_centroid;
        bg::centroid(initial_obj.shape_union, initial_obj_centroid); bg::centroid(received_obj.shape_union, received_obj_centroid);
        obj.shapes.push_back({initial_obj.shape_union, initial_obj_centroid, initial_obj.exist_certainty});
        obj.shapes.push_back({received_obj.shape_union, received_obj_centroid, received_obj.exist_certainty});

        obj.isCombined = true;

        return obj;
    }

    bool SemanticFusion::similarClasses(std::string object1_name, std::string object2_name)
    {
        if ((object1_name == "Sofa bed" && object2_name == "Couch") || (object1_name == "Couch" && object2_name == "Sofa bed"))
            return true;
        else
            return false;
    }

    bool SemanticFusion::checkTheAbilityOfObjectsToOverlap(std::string object1_name, std::string object2_name){
        if(object1_name == object2_name)
            return true;
        else if(similarClasses(object1_name, object2_name))
            return true;
        else if ((object1_name == "Chair" && object2_name == "Table") || (object1_name == "Table" && object2_name == "Chair"))
            return true;
        else
            return false;
    }

    bool SemanticFusion::inConsideredObjectList(std::string object_name){
        bool found = (std::find(map_considered_objects.begin(), map_considered_objects.end(), object_name) != map_considered_objects.end());
        return found;
    }

    bool SemanticFusion::validObjectSurface(std::string object_name, polygon object_obb)
    {
        std::pair<double, double> dimensions= get_real_object_length_width(object_name);
        double area_fit= bg::area(object_obb)/(dimensions.first*dimensions.second);
        if(area_fit < 1.5){
            cout << "valid shape !" << endl;
            return 1;
        }
        else{
            cout << "not valid shape !" << endl;
            return 0;
        }
    }

    bool SemanticFusion::isRectangular(polygon object_obb)
    {
        if(object_obb.outer().size() != 5)
            return false;
        //When a polygon has 4 edges, check if it is a rectangle    
        //Check the length of the diagonals, the diagonals must be equal.
        double diag1_distance= sqrt((object_obb.outer()[2].x() - object_obb.outer()[0].x())*(object_obb.outer()[2].x() - object_obb.outer()[0].x()) 
                            + (object_obb.outer()[2].y() - object_obb.outer()[0].y())*(object_obb.outer()[2].y() - object_obb.outer()[0].y()));
        double diag2_distance= sqrt((object_obb.outer()[3].x() - object_obb.outer()[1].x())*(object_obb.outer()[3].x() - object_obb.outer()[1].x()) 
                            + (object_obb.outer()[3].y() - object_obb.outer()[1].y())*(object_obb.outer()[3].y() - object_obb.outer()[1].y()));
        double error = 0.05;
        //cout<<"diag1_distance= "<<diag1_distance<<" diag2_distance= "<< diag2_distance<<endl;
        bool condition1= std::abs(diag1_distance - diag2_distance) < error;
        if(!condition1){
            //cout<<"object is not rectangular"<<endl;
            return false;
        }
        //Determine polygon diagonals intersection
        double a = object_obb.outer()[2].y() - object_obb.outer()[0].y();
        double b = object_obb.outer()[0].x() - object_obb.outer()[2].x();
        double c = (a * object_obb.outer()[0].x()) + (b * object_obb.outer()[0].y());
        double a1 = object_obb.outer()[1].y() - object_obb.outer()[3].y();
        double b1 = object_obb.outer()[3].x() - object_obb.outer()[1].x();
        double c1 = (a1 * object_obb.outer()[3].x()) + (b1 * object_obb.outer()[3].y());
        double det = a*b1 - a1*b;
        double x_intersection = (b1*c - b*c1)/det;
        double y_intersection = (a*c1 - a1*c)/det;

        //The polygon is rectongular if diagonals are equal length and bisect
    
        /*cout<<"x_intersection= "<<x_intersection<<" y_intersection= "<< y_intersection<<endl;
        cout<<"(x_A+x_B / 2)= " << (object_obb.outer()[0].x()+object_obb.outer()[2].x())/2 << "(y_A+y_B / 2)= " << (object_obb.outer()[0].y()+object_obb.outer()[2].y())/2 <<endl;
        cout<<"(x_D+x_C / 2)= " << (object_obb.outer()[1].x()+object_obb.outer()[3].x())/2 << "(y_D+y_C / 2)= " << (object_obb.outer()[1].y()+object_obb.outer()[3].y())/2 <<endl;*/
        bool condition2= std::abs(x_intersection - ((object_obb.outer()[0].x() + object_obb.outer()[2].x())/2)) < error
                        && std::abs(y_intersection - ((object_obb.outer()[0].y() + object_obb.outer()[2].y())/2)) < error;
        bool condition3= std::abs(x_intersection - ((object_obb.outer()[1].x() + object_obb.outer()[3].x())/2)) < error
                        && std::abs(y_intersection - ((object_obb.outer()[1].y() + object_obb.outer()[3].y())/2)) < error;

        if(condition2 && condition3){
            //cout<<"object is rectangular"<<endl;
            return true;
        }
        else{
            //cout<<"object is not rectangular"<<endl;
            return false;
        }
    }
    
    void SemanticFusion::removeMapInconsistencies(semmapping::SemanticMap map, semmapping::SemanticMap &filtered_map, double overlap_threshold)
    {
        if (!map.getObjectList().empty()){
            //filtered_map is initially empty, then the first object of the map is added directly
            if (filtered_map.getObjectList().empty())
                filtered_map.addObject(map.getObjectList()[0]);

            //fill filtered_map while merging redundant objects with different labels
            for (auto &val : map.getObjectList()){
                SemanticObject &new_obj = val.second;
                if (new_obj.exist_certainty > 0.25 && inConsideredObjectList(new_obj.name)){
                    for (auto &val2 : filtered_map.getObjectList()){
                        SemanticObject &ref_obj = val2.second;
                        double overlap = iou(ref_obj.obb, new_obj.obb);
                        bool possible_overlap = checkTheAbilityOfObjectsToOverlap(new_obj.name, ref_obj.name);

                        if(overlap > overlap_threshold){
                            //Parameter indicating that the object overlaps at least one object
                            new_obj.isCombined = true;
                            //Overlap between objects is possible
                            if(possible_overlap){
                                cout << new_obj.name << val.first << " overlap with object " << ref_obj.name << val2.first << endl;
                                //Same or similar labels: fuse objects
                                if (new_obj.name == ref_obj.name || similarClasses(new_obj.name, ref_obj.name)){
                                    SemanticObject fused_obj;
                                    fused_obj = GeometricFusionOfSemanticObject(ref_obj, new_obj);
                                    filtered_map.removeObject(val2.first);
                                    filtered_map.addObject(fused_obj);
                                }
                                //Different labels: add new object
                                else{
                                    new_obj.point_cloud = nullptr;
                                    filtered_map.addObject(new_obj);
                                }
                            }
                            //Overlap between objects is not possible 
                            else{
                                cout<< "Verifying shape of "<< new_obj.name << val.first<<endl;
                                bool shape_obj1_is_valid = validObjectSurface(new_obj.name, new_obj.obb);
                                cout<< "Verifying shape of "<< ref_obj.name << val2.first<<endl;
                                bool shape_obj2_is_valid = validObjectSurface(ref_obj.name, ref_obj.obb);
                                if(shape_obj1_is_valid && (!shape_obj2_is_valid || (bg::area(new_obj.obb) > bg::area(ref_obj.obb)))){
                                    cout<< ref_obj.name << val2.first<<" shape is not valid, object is removed from map! "
                                    << new_obj.name << val.first<<" shape is valid and added to map!"<<endl;
                                    filtered_map.removeObject(val2.first);
                                    new_obj.point_cloud = nullptr;
                                    filtered_map.addObject(new_obj);
                                }
                            }
                        }   
                    }
                    //There is no overlap with other objects
                    if(!new_obj.isCombined){
                        new_obj.point_cloud = nullptr;
                        filtered_map.addObject(new_obj);
                    }
                }  
            }
        }
        else
            cout<< "Map is not filtered because it is empty !!!" <<endl;
    }

    void SemanticFusion::semfusion(semmapping::SemanticMap previous_map, semmapping::SemanticMap received_map, semmapping::SemanticMap &global_map, double overlap_threshold)
    {
        cout << "-- Fused Map --" << endl;
        if (!previous_map.getObjectList().empty())
        {
            for (auto &val : received_map.getObjectList())
            {
                SemanticObject &new_obj = val.second;
                if (new_obj.exist_certainty > 0.25){
                    for (auto &val2 : previous_map.getObjectList())
                    {
                        SemanticObject &ref_obj = val2.second;
                        point truth_centroid;
                        bg::centroid(ref_obj.obb, truth_centroid);
                        double com_offset = sqrt((new_obj.oriented_box_cen.x() - truth_centroid.x()) * (new_obj.oriented_box_cen.x() - truth_centroid.x()) 
                                            + (new_obj.oriented_box_cen.y() - truth_centroid.y()) * (new_obj.oriented_box_cen.y() - truth_centroid.y()));
                        double overlap = iou(new_obj.obb, ref_obj.obb);
                        if (overlap > overlap_threshold && (new_obj.name == ref_obj.name || similarClasses(new_obj.name, ref_obj.name)))
                        {
                            cout << new_obj.name << val.first << " represents object " << ref_obj.name << val2.first << " with IOU: " << overlap <<
                            " and CoM Offset: " << com_offset << endl;
                            SemanticObject fused_obj;
                            //fused_obj= nmsFusionOfSemanticObject(ref_obj, new_obj);
                            fused_obj = GeometricFusionOfSemanticObject(ref_obj, new_obj);
                            new_obj.isCombined = true;
                            global_map.addObject(fused_obj);
                        }
                    }
                    //an object that exists in a single map will be added if its certainty of existence is > 0.5
                    if (!new_obj.isCombined && new_obj.exist_certainty > 0.5){
                        cout << new_obj.name << val.first <<" exists in one map, added to global map!" << endl;
                        new_obj.point_cloud = nullptr;
                        global_map.addObject(new_obj);
                    }
                }
            }
        }
        else
        {
            global_map.setObjectList(received_map.getObjectList());
            cout << "Global map is empty, received map is considered as global map!" << endl;
        }
    }

}