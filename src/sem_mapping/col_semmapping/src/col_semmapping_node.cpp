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
std::string algorithm="our_solution"; // our_solution or modified_nms
double fusion_overlap_threshold=0.1; std::string buffer="0.1";
std::string reference_map_name="ref_cluttered"; //ref_map2 very bad_map & ref_map3 good map
std::string reference_map_file_name= "src/sem_mapping/col_semmapping/fused_maps/reference_maps/" + reference_map_name + ".yaml";
std::string fused_map_file_name= "src/sem_mapping/col_semmapping/fused_maps/fused_maps/test_fusion.yaml";

//testing
/*ground_truth_map_file_name= "src/sem_mapping/col_semmapping/fused_maps/ground_truth_maps/truth_map_well_arranged_world.yaml"; //testing environment
single_robot_maps_directory = "/home/abdessalem/smapping/src/sem_mapping/col_semmapping/fused_maps/single_robot_maps/testing_maps";
fused_maps_directory = "/home/abdessalem/smapping/src/sem_mapping/col_semmapping/fused_maps/fused_maps/testing_maps/threshold_" + buffer; //+"_nms";
backup_file_name= "/home/abdessalem/smapping/src/sem_mapping/col_semmapping/statistical_data/testing_data/fusion evaluation/" + algorithm + "/threshold_" + buffer + ".csv"; //"_nms"+".csv";
received_map_file_name= "src/sem_mapping/col_semmapping/fused_maps/single_robot_maps/testing_maps/test1.yaml";*/

//validation
std::string ground_truth_map_file_name= "src/sem_mapping/col_semmapping/fused_maps/ground_truth_maps/truth_map_cluttered_world_2.yaml"; //validation environment
std::string single_robot_maps_directory = "/home/abdessalem/smapping/src/sem_mapping/col_semmapping/fused_maps/single_robot_maps/validation_maps";
std::string fused_maps_directory = "/home/abdessalem/smapping/src/sem_mapping/col_semmapping/fused_maps/fused_maps/validation_maps/threshold_" + buffer; //+"_nms";
std::string nms_fused_maps_directory = "/home/abdessalem/smapping/src/sem_mapping/col_semmapping/fused_maps/fused_maps/nms_maps";
std::string modified_nms_fused_maps_directory = "/home/abdessalem/smapping/src/sem_mapping/col_semmapping/fused_maps/fused_maps/modified_nms_maps";
std::string backup_file_name= "/home/abdessalem/smapping/src/sem_mapping/col_semmapping/statistical_data/validation_data/fusion evaluation/" + algorithm + "/threshold_0.5.csv"; //"_nms"+".csv";
std::string received_map_file_name= "src/sem_mapping/col_semmapping/fused_maps/single_robot_maps/validation_maps/val8.yaml";


void printAvailableCommands(){
  cout << "--------- Available commands -------------"<< endl;
  cout << "1) fuse_maps" << endl;
  cout << "2) fuse_all_maps_in_directory" << endl;
  cout << "3) evaluate_reference_map" << endl;
  cout << "4) evaluate_cleared_reference_map"<< endl;
  cout << "5) evaluate_received_map" << endl;
  cout << "6) evaluate_fused_map" << endl;
  cout << "7) evaluate_all_maps_in_directory" << endl;
  cout << "8) f1Score_all_maps_in_directory" << endl;
  cout << "9) f1Score_all_cleared_maps" << endl;
  cout << "10) evaluate_cleared_received_map" << endl;
  cout << "11) nms_fuse_maps" << endl;
  cout << "12) nms_fuse_all_maps_in_directory" << endl;
  cout << "13) modified_nms_fuse_maps" << endl;
  cout << "14) modified_nms_fuse_all_maps_in_directory" << endl;
}

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
  else if(command == "evaluate_cleared_reference_map")
    return 7;
  else if(command == "f1Score_all_maps_in_directory")
    return 8;
  else if(command == "f1Score_all_cleared_maps")
    return 9;
  else if(command == "evaluate_cleared_received_map")
    return 10;
  else if(command == "nms_fuse_maps")
    return 11;
  else if(command == "nms_fuse_all_maps_in_directory")
    return 12;
  else if(command == "modified_nms_fuse_maps")
    return 13;
  else if(command == "modified_nms_fuse_all_maps_in_directory")
    return 14;
  else
    return 20;
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
  std::ifstream file(ground_truth_map_file_name);
  ref_map.loadGroundTruthMap(file);
  std::map<size_t, semmapping::SemanticObject> groundTruthObjectList= ref_map.getGroundTruthObjectList();

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
    printAvailableCommands();
    std::string in;
    std::getline(std::cin, in);
    std::string::const_iterator it = in.cbegin();
    std::string command = readNext(in, it);
    int command_number = get_command_number(command);

    switch(command_number){
        case 1: //fuse_maps
            {
            // Fuse and save the two maps
            fusion_node.semfusion_updated(cleared_ref_map, cleared_received_map, global_map, fusion_overlap_threshold); //fusion_node.semfusion(ref_map, received_map, global_map);
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
            int false_negative= fusion_node.numberFalseNegativeInMap(ref_map.getObjectList(), ref_map.getGroundTruthObjectList());
            std::pair<int,int> positive_detection= fusion_node.numberTrueFalseDetectionInMap(ref_map.getObjectList(), ref_map.getGroundTruthObjectList());
            int true_positive= positive_detection.first;
            int false_positive= positive_detection.second;
            double precision, recall, f1Score;
            std::array<double,3> indicators;
            indicators = fusion_node.computeMapF1Score(true_positive, false_positive, false_negative);
            precision= indicators[0]; recall= indicators[1]; f1Score= indicators[2];
            cout<<"FN= "<< false_negative <<" TP= "<< true_positive <<" FP= "<< false_positive <<endl;
            cout<<"precision= "<< precision <<" recall= "<< recall <<" f1Score= "<< f1Score <<endl;
            file.close();
            break;
            }
        case 3: //evaluate_received_map
            {
            std::ifstream file2(ground_truth_map_file_name);
            received_map.loadGroundTruthMap(file2);
            received_map.evaluteMap(backup_file_name);
            int false_negative= fusion_node.numberFalseNegativeInMap(received_map.getObjectList(), received_map.getGroundTruthObjectList());
            std::pair<int,int> positive_detection= fusion_node.numberTrueFalseDetectionInMap(received_map.getObjectList(), received_map.getGroundTruthObjectList());
            int true_positive= positive_detection.first;
            int false_positive= positive_detection.second;
            double precision, recall, f1Score;
            std::array<double,3> indicators;
            indicators = fusion_node.computeMapF1Score(true_positive, false_positive, false_negative);
            precision= indicators[0]; recall= indicators[1]; f1Score= indicators[2];
            cout<<"FN= "<< false_negative <<" TP= "<< true_positive <<" FP= "<< false_positive <<endl;
            cout<<"precision= "<< precision <<" recall= "<< recall <<" f1Score= "<< f1Score <<endl;
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
              fusion_node.semfusion_updated(cleared_ref_map, cleared_received_map, global_map, fusion_overlap_threshold); //fusion_node.semfusion(ref_map, received_map, global_map);
              // Save the fused map
              std::stringstream filename;
              filename << fused_maps_directory +"/map_" << std::setw(4) << std::setfill('0') << filecount << ".yaml";
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
        case 7: //evaluate_cleared_reference_map
            {
            std::ifstream file(ground_truth_map_file_name);
            cleared_ref_map.loadGroundTruthMap(file);
            cleared_ref_map.evaluteMap(backup_file_name);
            file.close();
            break;
            }
        case 8: //f1Score_all_maps_in_directory
            {
            std::ifstream ground_truth_map_file(ground_truth_map_file_name);
            received_map.loadGroundTruthMap(ground_truth_map_file);
            ground_truth_map_file.close();
            int index=0; double meanF1Score=0;
            for (const auto & dir_entry: boost::filesystem::directory_iterator(single_robot_maps_directory)){
              std::ifstream map_file(dir_entry.path().string());
              received_map.readMapData(map_file); map_file.close();
              int false_negative= fusion_node.numberFalseNegativeInMap(received_map.getObjectList(), received_map.getGroundTruthObjectList());
              std::pair<int,int> positive_detection= fusion_node.numberTrueFalseDetectionInMap(received_map.getObjectList(), received_map.getGroundTruthObjectList());
              int true_positive= positive_detection.first;
              int false_positive= positive_detection.second;
              double precision, recall, f1Score;
              std::array<double,3> indicators;
              indicators = fusion_node.computeMapF1Score(true_positive, false_positive, false_negative);
              precision= indicators[0]; recall= indicators[1]; f1Score= indicators[2];
              index++;
              meanF1Score+= f1Score;
              cout<<"Map "<< index <<endl;
              cout<<"FN= "<< false_negative <<" TP= "<< true_positive <<" FP= "<< false_positive <<endl;
              cout<<"precision= "<< precision <<" recall= "<< recall <<" f1Score= "<< f1Score <<endl;
              }
            meanF1Score/=index;
            cout<<"meanF1Score= "<< meanF1Score << endl;
            break;
            }
        case 9: //f1Score_all_cleared_maps
            {
            int index=0; double meanF1Score=0; double meanF1ScoreBefore=0;
            std::ofstream myfile;
            double overlap_threshold = 0.0;
            std::ostringstream s; s << overlap_threshold;
            std::string filteringStastsFilename= "src/sem_mapping/col_semmapping/statistical_data/filtering evaluation/filtering_threshold_"+ s.str() +".csv";
            myfile.open(filteringStastsFilename, ios::out | ios::app);
            for (const auto & dir_entry: boost::filesystem::directory_iterator(single_robot_maps_directory)){
              std::ifstream map_file(dir_entry.path().string());
              received_map.readMapData(map_file); map_file.close();
              cleared_received_map.clearAll();
              int tp, fp, fn;
              std::pair<int,int> positive_detection2;
              double precision, recall, f1Score;
              std::array<double,3> indicators2;

              fn= fusion_node.numberFalseNegativeInMap(received_map.getObjectList(), groundTruthObjectList);
              positive_detection2= fusion_node.numberTrueFalseDetectionInMap(received_map.getObjectList(), groundTruthObjectList);
              tp= positive_detection2.first;
              fp= positive_detection2.second;
              indicators2 = fusion_node.computeMapF1Score(tp, fp, fn);
              precision= indicators2[0]; recall= indicators2[1]; f1Score= indicators2[2];

              meanF1ScoreBefore+= f1Score;

              cout<<"Map "<< index <<endl;
              cout<<"FN= "<< fn <<" TP= "<< tp <<" FP= "<< fp <<endl;
              cout<<"precision= "<< precision <<" recall= "<< recall <<" f1Score= "<< f1Score <<endl;

              myfile << "MAP "<< index << "\n";
              myfile << tp << ","<< fp << ","<< fn << ","<< precision << ","<< recall << ","<< f1Score << "\n";

              fusion_node.removeMapInconsistencies(received_map, cleared_received_map, overlap_threshold);

              fn= fusion_node.numberFalseNegativeInMap(cleared_received_map.getObjectList(), groundTruthObjectList);
              positive_detection2= fusion_node.numberTrueFalseDetectionInMap(cleared_received_map.getObjectList(), groundTruthObjectList);
              tp= positive_detection2.first;
              fp= positive_detection2.second;
              indicators2 = fusion_node.computeMapF1Score(tp, fp, fn);
              precision= indicators2[0]; recall= indicators2[1]; f1Score= indicators2[2];

              index++;
              meanF1Score+= f1Score;
              cout<<"Map "<< index <<endl;
              cout<<"FN= "<< fn <<" TP= "<< tp <<" FP= "<< fp <<endl;
              cout<<"precision= "<< precision <<" recall= "<< recall <<" f1Score= "<< f1Score <<endl;
              
              myfile << tp << ","<< fp << ","<< fn << ","<< precision << ","<< recall << ","<< f1Score << "\n";
              }
            meanF1Score/=index;
            meanF1ScoreBefore/=index;
            cout<<"meanF1ScoreBefore= "<< meanF1ScoreBefore << "meanF1ScoreAfter= "<< meanF1Score << endl;
            myfile << meanF1ScoreBefore << "," <<meanF1Score << "\n";
            myfile.close();
            break;
            }
        case 10: //evaluate_cleared_received_map
            {
            std::ifstream file(ground_truth_map_file_name);
            cleared_received_map.loadGroundTruthMap(file);
            cleared_received_map.evaluteMap(backup_file_name);
            int false_negative= fusion_node.numberFalseNegativeInMap(cleared_received_map.getObjectList(), cleared_received_map.getGroundTruthObjectList());
            std::pair<int,int> positive_detection= fusion_node.numberTrueFalseDetectionInMap(cleared_received_map.getObjectList(), cleared_received_map.getGroundTruthObjectList());
            int true_positive= positive_detection.first;
            int false_positive= positive_detection.second;
            std::array<double,3> indicators;
            indicators = fusion_node.computeMapF1Score(true_positive, false_positive, false_negative);
            double precision, recall, f1Score;
            precision= indicators[0]; recall= indicators[1]; f1Score= indicators[2];
            cout<<"FN= "<< false_negative <<" TP= "<< true_positive <<" FP= "<< false_positive <<endl;
            cout<<"precision= "<< precision <<" recall= "<< recall <<" f1Score= "<< f1Score <<endl;
            file.close();
            break;
            }
        case 11: //nms_fuse_maps
            {
            // Fuse and save the two maps
            fusion_node.semfusion_nms(cleared_ref_map, received_map, global_map, 0.5); //fusion_node.semfusion(ref_map, received_map, global_map);
            global_map.writeMapData(fusion_file); 
            fusion_file.close();
            // Create and publish fused map message
            mapping_msgs::SemanticMap::Ptr fused_map_msg= global_map.createMapMessage(robot, true);
            fusedSemanticMapPub.publish(fused_map_msg);
            cout << "-- NMS Fused map is published --" << endl;
            break;
            }
        case 12: //nms_fuse_all_maps_in_directory
            {
            int filecount = 0;
            for (const auto & dir_entry: boost::filesystem::directory_iterator(single_robot_maps_directory)){
              filecount++;
              std::ifstream received_map_file(dir_entry.path().string());
              received_map.readMapData(received_map_file); received_map_file.close();
              // Fuse the two maps
              global_map.clearAll();
              fusion_node.semfusion_nms(cleared_ref_map, received_map, global_map, 0.5);
              // Save the fused map
              std::stringstream filename;
              filename << nms_fused_maps_directory +"/map_" << std::setw(4) << std::setfill('0') << filecount << ".yaml";
              std::ofstream fusion_file(filename.str().c_str());
              global_map.writeMapData(fusion_file); 
              fusion_file.close();
              }
            break;
            }
        case 13: //modified_nms_fuse_maps
            {
            // Fuse and save the two maps
            fusion_node.semfusion_modified_nms(cleared_ref_map, received_map, global_map, 0.5); //fusion_node.semfusion(ref_map, received_map, global_map);
            global_map.writeMapData(fusion_file); 
            fusion_file.close();
            // Create and publish fused map message
            mapping_msgs::SemanticMap::Ptr fused_map_msg= global_map.createMapMessage(robot, true);
            fusedSemanticMapPub.publish(fused_map_msg);
            cout << "-- Modified NMS Fused map is published --" << endl;
            break;
            }
        case 14: //modified_nms_fuse_all_maps_in_directory
            {
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
              fusion_node.semfusion_modified_nms(cleared_ref_map, cleared_received_map, global_map, 0.5);
              // Save the fused map
              std::stringstream filename;
              filename << modified_nms_fused_maps_directory +"/map_" << std::setw(4) << std::setfill('0') << filecount << ".yaml";
              std::ofstream fusion_file(filename.str().c_str());
              global_map.writeMapData(fusion_file); 
              fusion_file.close();
              }
            break;
            }
        default:
            std::cout << "Command \"" << command << "\" not recognized" << std::endl;
    }
  }
}