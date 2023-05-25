#include <ros/ros.h>
#include <col_semmapping/sem_fusion.h>
#include <semanticmap.h>
#include <csignal>

ros::Publisher previousSemanticMapPub;
ros::Publisher unfilteredPreviousSemanticMapPub;
ros::Publisher receivedSemanticMapPub;
ros::Publisher unfilteredReceivedSemanticMapPub;
ros::Publisher fusedSemanticMapPub;

int get_command_number(std::string command){
  if(command == "fuse_maps")
    return 1;
  else
    return 3;
}

std::string readNext(const std::string &str, std::string::const_iterator &begin){
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

void sigintHandler(int sig){
    exit(0);
}

int main(int argc, char **argv){
  ros::init(argc, argv, "col_semmapping_node");
  ros::NodeHandle n;

  previousSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/previous_semantic_map", 1, true);
  unfilteredPreviousSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/unfiltered_previous_semantic_map", 1, true);
  receivedSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/received_semantic_map", 1, true);
  unfilteredReceivedSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/unfiltered_received_semantic_map", 1, true);
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
  while(1)
  {
    cout << "Semantic Fusion Node" << endl;
    cout << "Available commands: fuse_maps" << endl;
    std::string in;
    std::getline(std::cin, in);
    std::string::const_iterator it = in.cbegin();
    std::string command = readNext(in, it);
    int command_number = get_command_number(command);

    switch(command_number)
    {
      case 1:
        {
        // Read the two maps
        map.readMapData(map1_file); map1_file.close();
        map2.readMapData(map2_file); map2_file.close();
        // Filter the two maps
        fusion_node.removeMapInconsistencies(map, map_cleared);
        fusion_node.removeMapInconsistencies(map2, map2_cleared);
        // Fuse the two maps
        fusion_node.semfusion(map_cleared, map2_cleared, global_map); //fusion_node.semfusion(map, map2, global_map);
        global_map.writeMapData(fusion_file); 
        // Save the fused map
        fusion_file.close();
        // Create and publish all map messages
        semmapping::point robot;
        mapping_msgs::SemanticMap::Ptr unfiltered_previous_map_msg= map.createMapMessage(robot, true);
        mapping_msgs::SemanticMap::Ptr previous_map_msg= map_cleared.createMapMessage(robot, true);
        mapping_msgs::SemanticMap::Ptr unfiltered_received_map_msg= map2.createMapMessage(robot, true);
        mapping_msgs::SemanticMap::Ptr received_map_msg= map2_cleared.createMapMessage(robot, true);
        mapping_msgs::SemanticMap::Ptr fused_map_msg= global_map.createMapMessage(robot, true);
        previousSemanticMapPub.publish(previous_map_msg);
        unfilteredPreviousSemanticMapPub.publish(unfiltered_previous_map_msg);
        receivedSemanticMapPub.publish(received_map_msg);
        unfilteredReceivedSemanticMapPub.publish(unfiltered_received_map_msg);
        fusedSemanticMapPub.publish(fused_map_msg);
        cout << "-- All maps are published --" << endl;
        break;
        }
      default:
        std::cout << "Command \"" << command << "\" not recognized" << std::endl;
    }
  }
}