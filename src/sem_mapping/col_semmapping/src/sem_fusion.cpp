#include <ros/ros.h>
#include <math.h>
#include <iostream>
#include <fstream>
#include <col_semmapping/sem_fusion.h>

namespace semmapping
{
    SemanticFusion::SemanticFusion(){}

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

        if (initial_obj.exist_certainty > recieved_obj.exist_certainty){
            obj.exist_certainty = initial_obj.exist_certainty;
            obj.shape_union = initial_obj.shape_union;
            obj.obb = initial_obj.obb;
        }
        else{
            obj.exist_certainty = recieved_obj.exist_certainty;
            obj.shape_union = recieved_obj.shape_union;
            obj.obb = recieved_obj.obb;
        }

        obj.bounding_box = bg::return_envelope<box>(obj.obb);
        bg::centroid(obj.shape_union, obj.shape_union_cen);
        bg::centroid(obj.obb, obj.oriented_box_cen);

        return obj;
    }

    void SemanticFusion::semfusion(semmapping::SemanticMap previous_map, semmapping::SemanticMap received_map, semmapping::SemanticMap &global_map)
    {
        if (!previous_map.getObjectList().empty())
        {
            for (auto &val : received_map.getObjectList())
            {
                SemanticObject &obj = val.second;
                for(auto &val2 : previous_map.getObjectList())
                {
                    size_t objId = val2.first;
                    SemanticObject &gtObj = val2.second;
                    point truth_centroid;
                    bg::centroid(gtObj.obb, truth_centroid);
                    double com_offset= sqrt((obj.oriented_box_cen.x() - truth_centroid.x())*(obj.oriented_box_cen.x() - truth_centroid.x()) 
                        + (obj.oriented_box_cen.y() - truth_centroid.y())*(obj.oriented_box_cen.y() - truth_centroid.y()));

                    if(obj.exist_certainty > 0.25 && obj.name == gtObj.name)
                    {
                        double similarity_factor= iou(obj.obb, gtObj.obb);
                        if(similarity_factor  > 0.5)
                        {
                            cout<< obj.name << val.first <<" represents object " << gtObj.name << val2.first << " with IOU: " << similarity_factor << " and CoM Offset: " 
                            << com_offset << endl;
                            SemanticObject fused_obj;
                            fused_obj= fuseObjectBoundingBoxes(obj, gtObj);
                            global_map.addObject(fused_obj);
                        }
                                
                    }
                }
            }
        }
        else
        {
            global_map.setObjectList(received_map.getObjectList());
            cout <<"Global map is empty, recieved map is considered as global map!" << endl;
        }
    }

}