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

    // Semantic Object fusion function: returns object with the best exist_certainty
    SemanticObject SemanticFusion::fuseObjectBoundingBoxes(SemanticObject initial_obj, SemanticObject recieved_obj)
    {
        SemanticObject obj;
        obj.name = initial_obj.name;
        obj.rotation_angle = 0;
        obj.isCombined = true;

        point polygon1_centroid, polygon2_centroid;
        bg::centroid(initial_obj.shape_union, polygon1_centroid);
        bg::centroid(recieved_obj.shape_union, polygon2_centroid);
        obj.shapes.push_back({initial_obj.shape_union, polygon1_centroid, initial_obj.exist_certainty});
        obj.shapes.push_back({recieved_obj.shape_union, polygon2_centroid, recieved_obj.exist_certainty});
        obj.counting_queue.push(1);
        for (auto &val : obj.shapes)
        {
            cout << "(" << val.shape.outer()[0].x() << "," << val.shape.outer()[0].y() << ") (" << val.shape.outer()[1].x() << "," << val.shape.outer()[1].y() << ") ("
                 << val.shape.outer()[2].x() << "," << val.shape.outer()[2].y() << ") (" << val.shape.outer()[3].x() << "," << val.shape.outer()[3].y() << ")" << endl;

            cout << " " << val.certainty << endl;
        }

        if (initial_obj.exist_certainty > recieved_obj.exist_certainty)
        {
            obj.exist_certainty = initial_obj.exist_certainty;
            obj.shape_union = initial_obj.shape_union;
            obj.obb = initial_obj.obb;
        }
        else
        {
            obj.exist_certainty = recieved_obj.exist_certainty;
            obj.shape_union = recieved_obj.shape_union;
            obj.obb = recieved_obj.obb;
        }

        obj.bounding_box = bg::return_envelope<box>(obj.obb);
        bg::centroid(obj.shape_union, obj.shape_union_cen);
        bg::centroid(obj.obb, obj.oriented_box_cen);
        obj.point_cloud = nullptr;

        return obj;
    }

    SemanticObject SemanticFusion::GeometricFusionOfSemanticObject(SemanticObject initial_obj, SemanticObject received_obj)
    {
        SemanticObject obj;
        obj.name = initial_obj.name;
        obj.rotation_angle = 0;
        obj.isCombined = true;

        point polygon1_centroid, polygon2_centroid;
        bg::centroid(initial_obj.shape_union, polygon1_centroid);
        bg::centroid(received_obj.shape_union, polygon2_centroid);
        obj.shapes.push_back({initial_obj.shape_union, polygon1_centroid, initial_obj.exist_certainty});
        obj.shapes.push_back({received_obj.shape_union, polygon2_centroid, received_obj.exist_certainty});

        double initial_obb_score = ref_fit(initial_obj.obb, received_obj.shape_union);
        double received_obb_score = ref_fit(received_obj.obb, initial_obj.shape_union);
        cout << "initial_obb_score= " << initial_obb_score << " received_obb_score= " << received_obb_score << endl;
        cout << "initial obb size= " << initial_obj.obb.outer().size() << " -- received obb size= " << received_obj.obb.outer().size()<< endl;

        if(initial_obj.obb.outer().size() == 5 && received_obj.obb.outer().size() != 5){
            obj.exist_certainty = initial_obj.exist_certainty;
            obj.shape_union = initial_obj.shape_union;
            obj.obb = initial_obj.obb;
        }
        else if(initial_obj.obb.outer().size() != 5 && received_obj.obb.outer().size() == 5){
            obj.exist_certainty = received_obj.exist_certainty;
            obj.shape_union = received_obj.shape_union;
            obj.obb = received_obj.obb;
        }
        else{
            if (initial_obb_score > received_obb_score){
                obj.exist_certainty = initial_obj.exist_certainty;
                obj.shape_union = initial_obj.shape_union;
                obj.obb = initial_obj.obb;
            }
            else {
            obj.exist_certainty = received_obj.exist_certainty;
            obj.shape_union = received_obj.shape_union;
            obj.obb = received_obj.obb;
            }
        }

        obj.bounding_box = bg::return_envelope<box>(obj.obb);
        bg::centroid(obj.shape_union, obj.shape_union_cen);
        bg::centroid(obj.obb, obj.oriented_box_cen);
        obj.point_cloud = nullptr;

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

    bool SemanticFusion::validObjectSurface(std::string object_name, polygon object_obb){
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
                                cout << obj.name << val.first << " represents object " << cleared_map_obj.name << val2.first << endl;
                                SemanticObject fused_obj;
                                fused_obj = GeometricFusionOfSemanticObject(cleared_map_obj, obj);
                                obj.isCombined = true;
                                map_cleared.removeObject(val2.first);
                                map_cleared.addObject(fused_obj);
                            }
                            //Different labels
                            else{
                                cout << obj.name << val.first << " represents object " << cleared_map_obj.name << val2.first << endl;
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

    void SemanticFusion::semfusion(semmapping::SemanticMap previous_map, semmapping::SemanticMap received_map, semmapping::SemanticMap &global_map){
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
                               // fused_obj= fuseObjectBoundingBoxes(obj, gtObj);
                               fused_obj = GeometricFusionOfSemanticObject(gtObj, obj);
                               obj.isCombined = true;
                               global_map.addObject(fused_obj);
                            }
                        }
                    }
                    //an object that exists in a single map will be added if its certainty of existence is > 0.5
                    if (obj.exist_certainty > 0.5 && !obj.isCombined){
                       cout << "-- Case 2: object exists in one map --" << endl;
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