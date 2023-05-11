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
        else if ((object1_name == "Chair" && object2_name == "Table") || (object1_name == "Table" && object2_name == "Chair")){
            return true;
        } 
        else{
            return false;
        }
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
    
    void SemanticFusion::removeMapInconsistencies(semmapping::SemanticMap map, semmapping::SemanticMap &map_cleared)
    {
        if (!map.getObjectList().empty()){
            //map_cleared is initially empty, then the first object of the map is added directly
            if (map_cleared.getObjectList().empty())
                map_cleared.addObject(map.getObjectList()[0]);

            //fill map_cleared while merging redundant objects with different labels
            for (auto &val : map.getObjectList()){
                SemanticObject &obj = val.second;
                if (inConsideredObjectList(obj.name) && obj.exist_certainty > 0.25){
                    for (auto &val2 : map_cleared.getObjectList()){
                        SemanticObject &cleared_map_obj = val2.second;
                        double overlap = ref_fit(cleared_map_obj.obb, obj.obb);
                        bool possible_overlap = checkTheAbilityOfObjectsToOverlap(obj.name, cleared_map_obj.name);

                        //There is an overlap + overlap between objects is possible
                        if((overlap > 0.4) && possible_overlap){
                            //Same or similar object labels
                            if (obj.name == cleared_map_obj.name || similarClasses(obj.name, cleared_map_obj.name)){
                                cout << obj.name << val.first << " overlap with object " << cleared_map_obj.name << val2.first << endl;
                                SemanticObject fused_obj;
                                fused_obj = GeometricFusionOfSemanticObject(cleared_map_obj, obj);
                                obj.isCombined = true;
                                map_cleared.removeObject(val2.first);
                                map_cleared.addObject(fused_obj);
                            }
                            //Different labels
                            else{
                                cout << obj.name << val.first << " overlap with object " << cleared_map_obj.name << val2.first << endl;
                                obj.isCombined = true;
                                obj.point_cloud = nullptr;
                                map_cleared.addObject(obj);
                            }
                        } 

                        //There is an overlap, but overlap between objects is not possible
                        if (overlap > 0.4 && !possible_overlap){
                            cout<< "Verifying shape of "<< obj.name << val.first<<endl;
                            bool shape_obj1_is_valid = validObjectSurface(obj.name, obj.obb);
                            cout<< "Verifying shape of "<< cleared_map_obj.name << val2.first<<endl;
                            bool shape_obj2_is_valid = validObjectSurface(cleared_map_obj.name, cleared_map_obj.obb);

                            if(!shape_obj2_is_valid){
                                map_cleared.removeObject(val2.first);
                                cout<< cleared_map_obj.name << val2.first<<" shape is not valid, removed from map!"<<endl;
                            }

                            if(shape_obj1_is_valid && (!shape_obj2_is_valid || bg::area(obj.obb) > bg::area(cleared_map_obj.obb))){
                                obj.point_cloud = nullptr;
                                map_cleared.addObject(obj);
                                cout<< obj.name << val.first<<" shape is valid and added to map!"<<endl;
                            }
                            obj.isCombined = true;
                        }
                    }

                    if(!obj.isCombined && obj.exist_certainty > 0.25){
                        obj.point_cloud = nullptr;
                        map_cleared.addObject(obj);
                    }
                }  
            }
        }
    }

    void SemanticFusion::semfusion(semmapping::SemanticMap previous_map, semmapping::SemanticMap received_map, semmapping::SemanticMap &global_map)
    {
        cout << "-- Fused Map --" << endl;
        if (!previous_map.getObjectList().empty())
        {
            for (auto &val : received_map.getObjectList())
            {
                SemanticObject &obj = val.second;
                if (obj.exist_certainty > 0.25){
                   for (auto &val2 : previous_map.getObjectList())
                    {
                       SemanticObject &gtObj = val2.second;
                       point truth_centroid;
                       bg::centroid(gtObj.obb, truth_centroid);
                       double com_offset = sqrt((obj.oriented_box_cen.x() - truth_centroid.x()) * (obj.oriented_box_cen.x() - truth_centroid.x()) + (obj.oriented_box_cen.y() - truth_centroid.y()) * (obj.oriented_box_cen.y() - truth_centroid.y()));

                       if (obj.exist_certainty > 0.25)
                        {
                           double similarity_factor = iou(obj.obb, gtObj.obb);
                           if (similarity_factor > 0.5 && (obj.name == gtObj.name || similarClasses(obj.name, gtObj.name)))
                           {
                               cout << obj.name << val.first << " represents object " << gtObj.name << val2.first << " with IOU: " << similarity_factor << " and CoM Offset: "
                                    << com_offset << endl;
                               SemanticObject fused_obj;
                               //fused_obj= nmsFusionOfSemanticObject(gtObj, obj);
                               fused_obj = GeometricFusionOfSemanticObject(gtObj, obj);
                               obj.isCombined = true;
                               global_map.addObject(fused_obj);
                            }
                        }
                    }
                    //an object that exists in a single map will be added if its certainty of existence is > 0.5
                    if (obj.exist_certainty > 0.5 && !obj.isCombined){
                       cout << obj.name << val.first <<" exists in one map, added to global map!" << endl;
                       obj.point_cloud = nullptr;
                       global_map.addObject(obj);
                    }
                }
            }
        }
        else
        {
            global_map.setObjectList(received_map.getObjectList());
            cout << "Global map is empty, recieved map is considered as global map!" << endl;
        }
    }

}