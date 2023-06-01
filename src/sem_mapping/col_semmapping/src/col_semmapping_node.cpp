#include <ros/ros.h>
#include <col_semmapping/sem_fusion.h>
#include <semanticmap.h>
#include <csignal>

ros::Publisher referenceSemanticMapPub;
ros::Publisher unfilteredReferenceSemanticMapPub;
ros::Publisher receivedSemanticMapPub;
ros::Publisher unfilteredReceivedSemanticMapPub;
ros::Publisher fusedSemanticMapPub;

//Testing parameters
std::string ground_truth_map_file_name= "src/sem_mapping/col_semmapping/fused_maps/ground_truth_maps/truth_map_well_arranged_world.yaml";
std::string reference_map_name="ref_map2"; //ref_map2 very bad_map & ref_map3 good map
std::string reference_map_file_name= "src/sem_mapping/col_semmapping/fused_maps/reference_maps/"+reference_map_name+".yaml";
std::string single_robot_maps_directory = "/home/abdessalem/smapping/src/sem_mapping/col_semmapping/fused_maps/single_robot_maps";
std::string fused_maps_directory = "/home/abdessalem/smapping/src/sem_mapping/col_semmapping/fused_maps/fused_maps/"+reference_map_name;
std::string backup_file_name= "src/sem_mapping/col_semmapping/statistical_data/"+reference_map_name+".csv";
//Parameters for manual testing
std::string received_map_file_name= "src/sem_mapping/col_semmapping/fused_maps/single_robot_maps/test1.yaml";
std::string fused_map_file_name= "src/sem_mapping/col_semmapping/fused_maps/fused_maps/test_fusion.yaml";

int get_command_number(std::string command){
  if(command == "fuse_maps")
    return 1;
  else if(command == "evaluate_reference_map")
    return 2;
  else if(command == "evaluate_received_map")
    return 3;
  else if(command == "evaluate_fused_map")
    return 4;
  else if(command == "fuse_all_maps_in_directory")
    return 5;
  else if(command == "evaluate_all_maps_in_directory")
    return 6;
  else
    return 10;
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

  referenceSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/cleared_reference_map", 1, true);
  unfilteredReferenceSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/original_reference_map", 1, true);
  receivedSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/cleared_received_map", 1, true);
  unfilteredReceivedSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/original_received_map", 1, true);
  fusedSemanticMapPub = n.advertise<mapping_msgs::SemanticMap>("/fused_map", 1, true);


  semmapping::SemanticFusion fusion_node;
  fusion_node.show_map_id();
  //ref2: bad_map, ref3: good_map
  std::ifstream ref_map_file(reference_map_file_name);
  std::ifstream received_map_file(received_map_file_name);
  std::ofstream fusion_file(fused_map_file_name);


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


  semmapping::SemanticMap ref_map(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);
  semmapping::SemanticMap received_map(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);
  semmapping::SemanticMap cleared_ref_map(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);
  semmapping::SemanticMap cleared_received_map(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);
  semmapping::SemanticMap global_map(tfBuffer, viewer, viewer_mtx, semmap_vport0, semmap_vport1, param_config);

  signal(SIGINT, sigintHandler);

  // Read reference map and create cleared reference map
  ref_map.readMapData(ref_map_file); ref_map_file.close();
  fusion_node.removeMapInconsistencies(ref_map, cleared_ref_map);

  // Create and publish reference (original/cleared) maps messages
  semmapping::point robot;
  mapping_msgs::SemanticMap::Ptr unfiltered_reference_map_msg= ref_map.createMapMessage(robot, true);
  mapping_msgs::SemanticMap::Ptr reference_map_msg= cleared_ref_map.createMapMessage(robot, true);
  referenceSemanticMapPub.publish(reference_map_msg);
  unfilteredReferenceSemanticMapPub.publish(unfiltered_reference_map_msg);
  cout << "-- Oroginal & Cleared reference maps are published --" << endl;

  // Create and publish received (original/cleared) maps messages
  received_map.readMapData(received_map_file); received_map_file.close();
  fusion_node.removeMapInconsistencies(received_map, cleared_received_map);
  mapping_msgs::SemanticMap::Ptr unfiltered_received_map_msg= received_map.createMapMessage(robot, true);
  mapping_msgs::SemanticMap::Ptr received_map_msg= cleared_received_map.createMapMessage(robot, true);
  receivedSemanticMapPub.publish(received_map_msg);
  unfilteredReceivedSemanticMapPub.publish(unfiltered_received_map_msg);
  cout << "-- Oroginal & Cleared received maps are published --" << endl;

  while(1)
  {
    cout << "Semantic Fusion Node" << endl;
    cout << "Available commands: fuse_maps, evaluate_reference_map, evaluate_received_map,"<< endl;
    cout << "evaluate_fused_map, fuse_all_maps_in_directory, evaluate_all_maps_in_directory" << endl;
    std::string in;
    std::getline(std::cin, in);
    std::string::const_iterator it = in.cbegin();
    std::string command = readNext(in, it);
    int command_number = get_command_number(command);

    switch(command_number)
    {
      case 1: //fuse_maps
        {
        // Fuse and save the two maps
        fusion_node.semfusion(cleared_ref_map, cleared_received_map, global_map); //fusion_node.semfusion(ref_map, received_map, global_map);
        global_map.writeMapData(fusion_file); 
        fusion_file.close();
        // Create and publish fused map message
        mapping_msgs::SemanticMap::Ptr fused_map_msg= global_map.createMapMessage(robot, true);
        fusedSemanticMapPub.publish(fused_map_msg);
        cout << "-- Fused map is published --" << endl;
        break;
        }
      case 2: //evaluate_reference_map
        {
        std::ifstream file(ground_truth_map_file_name);
        ref_map.loadGroundTruthMap(file);
        ref_map.evaluteMap(backup_file_name);
        file.close();
        break;
        }
      case 3: //evaluate_received_map
        {
        std::ifstream file2(ground_truth_map_file_name);
        received_map.loadGroundTruthMap(file2);
        received_map.evaluteMap(backup_file_name);
        file2.close();
        break;
        }
      case 4: //evaluate_fused_map
        {
        std::ifstream ground_truth_map_file(ground_truth_map_file_name);
        global_map.loadGroundTruthMap(ground_truth_map_file);
        fusion_node.evaluteFusedMap(global_map.getObjectList(), global_map.getGroundTruthObjectList(), backup_file_name);
        break;
        }
      case 5: //fuse_all_maps_in_directory
        {
        // Initializing the index of fused maps
        int filecount = 0;
        for (const auto & dir_entry: boost::filesystem::directory_iterator(single_robot_maps_directory)){
          filecount++;
          std::ifstream received_map_file(dir_entry.path().string());
          received_map.readMapData(received_map_file); received_map_file.close();
          // Filter the map
          cleared_received_map.clearAll();
          fusion_node.removeMapInconsistencies(received_map, cleared_received_map);
          // Fuse the two maps
          global_map.clearAll();
          fusion_node.semfusion(cleared_ref_map, cleared_received_map, global_map); //fusion_node.semfusion(ref_map, received_map, global_map);
          // Save the fused map
          std::stringstream filename;
          filename << "src/sem_mapping/col_semmapping/fused_maps/fused_maps/"+ reference_map_name +"/map_" << std::setw(4) << std::setfill('0') << filecount << ".yaml";
          std::ofstream fusion_file(filename.str().c_str());
          global_map.writeMapData(fusion_file); 
          fusion_file.close();
          }
        break;
        }
      case 6: //evaluate_all_maps_in_directory
        {
        std::ifstream ground_truth_map_file(ground_truth_map_file_name);
        global_map.loadGroundTruthMap(ground_truth_map_file);
        for (const auto & dir_entry: boost::filesystem::directory_iterator(fused_maps_directory)){
          std::ifstream fused_map_file(dir_entry.path().string());
          global_map.readMapData(fused_map_file); fused_map_file.close();
          fusion_node.evaluteFusedMap(global_map.getObjectList(), global_map.getGroundTruthObjectList(), backup_file_name);
          }
        break;
        }
      default:
        std::cout << "Command \"" << command << "\" not recognized" << std::endl;
    }
  }
}