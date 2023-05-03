#include <ros/ros.h>
#include <col_semmapping/sem_fusion.h>
#include <semanticmap.h>


int main(int argc, char **argv) {
  ros::init(argc, argv, "col_semmapping_node");
  ros::NodeHandle n;

  semmapping::SemanticFusion fusion_node;
  fusion_node.show_map_id();

  std::ifstream map1_file("src/sem_mapping/col_semmapping/fused_maps/robot_master_maps/test1.yaml");
  std::ifstream map2_file("src/sem_mapping/col_semmapping/fused_maps/robot_master_maps/test2.yaml");
  std::ofstream fusion_file("src/sem_mapping/col_semmapping/fused_maps/robot_master_maps/map_fusion.yaml");


  tf2_ros::Buffer tfBuffer(ros::Duration(20));
  pcl::visualization::PCLVisualizer *viewer;
  boost::mutex viewer_mtx;
  int vport0 = 0;
  int vport1 = 1;
  int vport2 = 2;
  int vport3 = 3;
  int semmap_vport0 = 4;
  int semmap_vport1 = 5;
  semmapping::ParamsConfig param_config;


  semmapping::SemanticMap map(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);
  semmapping::SemanticMap map2(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);
  semmapping::SemanticMap global_map(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);
  
  map.readMapData(map1_file); map1_file.close();
  map2.readMapData(map2_file); map2_file.close();

  fusion_node.semfusion(map, map2, global_map);
  global_map.writeMapData(fusion_file); 
  fusion_file.close();
  
  //ros::spin();
  return 0;
}