#include <ros/ros.h>
#include <col_semmapping/sem_fusion.h>
#include <semanticmap.h>
#include <csignal>

ros::Publisher previousSemanticMapPub;
ros::Publisher receivedSemanticMapPub;
ros::Publisher fusedSemanticMapPub;

std::string readNext(const std::string &str, std::string::const_iterator &begin) {
    std::string::const_iterator end = str.cend();
    std::string res;
    res.reserve(str.size());

    for (; begin != end && *begin == ' '; begin++); // skip leading whitespaces

    char end_char = ' ';
    if (begin != end && *begin == '"') {
        end_char = '"';
        begin++;
    }

    bool escape = false;
    for (; begin != end; begin++) {
        if (escape)
            escape = false;
        else if (*begin == '\\') {
            escape = true;
            continue;
        } else if (*begin == end_char) {
            begin++; // remove end character
            break;
        }
        res += *begin;
    }
    return res;
}

void sigintHandler(int sig) {
    exit(0);
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "col_semmapping_node");
  ros::NodeHandle n;

  previousSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/previous_semantic_map", 1, true);
  receivedSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/received_semantic_map", 1, true);
  fusedSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/fused_semantic_map", 1, true);


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
  semmapping::SemanticMap map_cleared(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);
  semmapping::SemanticMap map2_cleared(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);
  semmapping::SemanticMap global_map(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);

  signal(SIGINT, sigintHandler);
  while (1) {
    cout << "Semantic Fusion Node" << endl;
    std::cout << "Available commands: fuse_maps" << std::endl;
    std::string in;
    std::getline(std::cin, in);
    std::string::const_iterator it = in.cbegin();
    std::string command = readNext(in, it);
    if (command == "fuse_maps")
     {
        map.readMapData(map1_file); map1_file.close();
        map2.readMapData(map2_file); map2_file.close();
        fusion_node.removeMapInconsistencies(map, map_cleared);
        fusion_node.removeMapInconsistencies(map2, map2_cleared);
        fusion_node.semfusion(map_cleared, map2_cleared, global_map);
        global_map.writeMapData(fusion_file); 
        fusion_file.close();
      }
    else if(command == "load_maps")
      {
        semmapping::point robot;
        mapping_msgs::SemanticMap::Ptr previous_map_msg= map_cleared.createMapMessage(robot, true);
        mapping_msgs::SemanticMap::Ptr received_map_msg= map2_cleared.createMapMessage(robot, true);
        mapping_msgs::SemanticMap::Ptr fused_map_msg= global_map.createMapMessage(robot, true);
        previousSemanticMapPub.publish(previous_map_msg);
        std::cout << "Previous Map loaded successfully" << std::endl;
        receivedSemanticMapPub.publish(received_map_msg);
        std::cout << "Received Map loaded successfully" << std::endl;
        fusedSemanticMapPub.publish(fused_map_msg);
        std::cout << "Fused Map loaded successfully" << std::endl;
      }
    else 
      {
        std::cout << "Command \"" << command << "\" not recognized" << std::endl;
      }
   }
  //ros::spin();
}