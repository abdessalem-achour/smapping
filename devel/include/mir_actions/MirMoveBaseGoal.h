// Generated by gencpp from file mir_actions/MirMoveBaseGoal.msg
// DO NOT EDIT!


#ifndef MIR_ACTIONS_MESSAGE_MIRMOVEBASEGOAL_H
#define MIR_ACTIONS_MESSAGE_MIRMOVEBASEGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/Pose2D.h>
#include <geometry_msgs/Pose2D.h>

namespace mir_actions
{
template <class ContainerAllocator>
struct MirMoveBaseGoal_
{
  typedef MirMoveBaseGoal_<ContainerAllocator> Type;

  MirMoveBaseGoal_()
    : move_task(0)
    , target_pose()
    , goal_dist_threshold(0.0)
    , goal_orientation_threshold(0.0)
    , path()
    , max_plan_time(0.0)
    , clear_costmaps(false)
    , pause_command(false)
    , continue_command(false)
    , yaw(0.0)
    , collision_detection(false)
    , collision_avoidance(false)
    , disable_collision_check_dist(0.0)
    , max_linear_speed(0.0)
    , max_rotational_speed(0.0)
    , pid_dist_offset(0.0)
    , target_offset(0.0)
    , only_collision_detection(false)
    , timeout(0.0)
    , pattern_type(0)
    , pattern_value(0)
    , only_track(false)
    , same_goal(false)
    , pose_frame()
    , pose()
    , offset()
    , bar_length(0.0)
    , bar_distance(0.0)
    , shelf_leg_asymmetry_x(0.0)
    , tolerance(0.0)  {
    }
  MirMoveBaseGoal_(const ContainerAllocator& _alloc)
    : move_task(0)
    , target_pose(_alloc)
    , goal_dist_threshold(0.0)
    , goal_orientation_threshold(0.0)
    , path(_alloc)
    , max_plan_time(0.0)
    , clear_costmaps(false)
    , pause_command(false)
    , continue_command(false)
    , yaw(0.0)
    , collision_detection(false)
    , collision_avoidance(false)
    , disable_collision_check_dist(0.0)
    , max_linear_speed(0.0)
    , max_rotational_speed(0.0)
    , pid_dist_offset(0.0)
    , target_offset(0.0)
    , only_collision_detection(false)
    , timeout(0.0)
    , pattern_type(0)
    , pattern_value(0)
    , only_track(false)
    , same_goal(false)
    , pose_frame(_alloc)
    , pose(_alloc)
    , offset(_alloc)
    , bar_length(0.0)
    , bar_distance(0.0)
    , shelf_leg_asymmetry_x(0.0)
    , tolerance(0.0)  {
  (void)_alloc;
    }



   typedef int16_t _move_task_type;
  _move_task_type move_task;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _target_pose_type;
  _target_pose_type target_pose;

   typedef double _goal_dist_threshold_type;
  _goal_dist_threshold_type goal_dist_threshold;

   typedef double _goal_orientation_threshold_type;
  _goal_orientation_threshold_type goal_orientation_threshold;

   typedef  ::nav_msgs::Path_<ContainerAllocator>  _path_type;
  _path_type path;

   typedef float _max_plan_time_type;
  _max_plan_time_type max_plan_time;

   typedef uint8_t _clear_costmaps_type;
  _clear_costmaps_type clear_costmaps;

   typedef uint8_t _pause_command_type;
  _pause_command_type pause_command;

   typedef uint8_t _continue_command_type;
  _continue_command_type continue_command;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef uint8_t _collision_detection_type;
  _collision_detection_type collision_detection;

   typedef uint8_t _collision_avoidance_type;
  _collision_avoidance_type collision_avoidance;

   typedef double _disable_collision_check_dist_type;
  _disable_collision_check_dist_type disable_collision_check_dist;

   typedef double _max_linear_speed_type;
  _max_linear_speed_type max_linear_speed;

   typedef double _max_rotational_speed_type;
  _max_rotational_speed_type max_rotational_speed;

   typedef double _pid_dist_offset_type;
  _pid_dist_offset_type pid_dist_offset;

   typedef double _target_offset_type;
  _target_offset_type target_offset;

   typedef uint8_t _only_collision_detection_type;
  _only_collision_detection_type only_collision_detection;

   typedef double _timeout_type;
  _timeout_type timeout;

   typedef int32_t _pattern_type_type;
  _pattern_type_type pattern_type;

   typedef int32_t _pattern_value_type;
  _pattern_value_type pattern_value;

   typedef uint8_t _only_track_type;
  _only_track_type only_track;

   typedef uint8_t _same_goal_type;
  _same_goal_type same_goal;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _pose_frame_type;
  _pose_frame_type pose_frame;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _offset_type;
  _offset_type offset;

   typedef double _bar_length_type;
  _bar_length_type bar_length;

   typedef double _bar_distance_type;
  _bar_distance_type bar_distance;

   typedef double _shelf_leg_asymmetry_x_type;
  _shelf_leg_asymmetry_x_type shelf_leg_asymmetry_x;

   typedef double _tolerance_type;
  _tolerance_type tolerance;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(BASE_MOVE)
  #undef BASE_MOVE
#endif
#if defined(_WIN32) && defined(GLOBAL_MOVE)
  #undef GLOBAL_MOVE
#endif
#if defined(_WIN32) && defined(RELATIVE_MOVE)
  #undef RELATIVE_MOVE
#endif
#if defined(_WIN32) && defined(RELATIVE_MARKER_MOVE)
  #undef RELATIVE_MARKER_MOVE
#endif
#if defined(_WIN32) && defined(DOCKING_MOVE)
  #undef DOCKING_MOVE
#endif
#if defined(_WIN32) && defined(DOCKING_GLOBAL_MOVE)
  #undef DOCKING_GLOBAL_MOVE
#endif

  enum {
    BASE_MOVE = 0,
    GLOBAL_MOVE = 1,
    RELATIVE_MOVE = 2,
    RELATIVE_MARKER_MOVE = 3,
    DOCKING_MOVE = 4,
    DOCKING_GLOBAL_MOVE = 5,
  };


  typedef boost::shared_ptr< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> const> ConstPtr;

}; // struct MirMoveBaseGoal_

typedef ::mir_actions::MirMoveBaseGoal_<std::allocator<void> > MirMoveBaseGoal;

typedef boost::shared_ptr< ::mir_actions::MirMoveBaseGoal > MirMoveBaseGoalPtr;
typedef boost::shared_ptr< ::mir_actions::MirMoveBaseGoal const> MirMoveBaseGoalConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_actions::MirMoveBaseGoal_<ContainerAllocator1> & lhs, const ::mir_actions::MirMoveBaseGoal_<ContainerAllocator2> & rhs)
{
  return lhs.move_task == rhs.move_task &&
    lhs.target_pose == rhs.target_pose &&
    lhs.goal_dist_threshold == rhs.goal_dist_threshold &&
    lhs.goal_orientation_threshold == rhs.goal_orientation_threshold &&
    lhs.path == rhs.path &&
    lhs.max_plan_time == rhs.max_plan_time &&
    lhs.clear_costmaps == rhs.clear_costmaps &&
    lhs.pause_command == rhs.pause_command &&
    lhs.continue_command == rhs.continue_command &&
    lhs.yaw == rhs.yaw &&
    lhs.collision_detection == rhs.collision_detection &&
    lhs.collision_avoidance == rhs.collision_avoidance &&
    lhs.disable_collision_check_dist == rhs.disable_collision_check_dist &&
    lhs.max_linear_speed == rhs.max_linear_speed &&
    lhs.max_rotational_speed == rhs.max_rotational_speed &&
    lhs.pid_dist_offset == rhs.pid_dist_offset &&
    lhs.target_offset == rhs.target_offset &&
    lhs.only_collision_detection == rhs.only_collision_detection &&
    lhs.timeout == rhs.timeout &&
    lhs.pattern_type == rhs.pattern_type &&
    lhs.pattern_value == rhs.pattern_value &&
    lhs.only_track == rhs.only_track &&
    lhs.same_goal == rhs.same_goal &&
    lhs.pose_frame == rhs.pose_frame &&
    lhs.pose == rhs.pose &&
    lhs.offset == rhs.offset &&
    lhs.bar_length == rhs.bar_length &&
    lhs.bar_distance == rhs.bar_distance &&
    lhs.shelf_leg_asymmetry_x == rhs.shelf_leg_asymmetry_x &&
    lhs.tolerance == rhs.tolerance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_actions::MirMoveBaseGoal_<ContainerAllocator1> & lhs, const ::mir_actions::MirMoveBaseGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_actions

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d4841766618ad92857d4e3d683b072f3";
  }

  static const char* value(const ::mir_actions::MirMoveBaseGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd4841766618ad928ULL;
  static const uint64_t static_value2 = 0x57d4e3d683b072f3ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_actions/MirMoveBaseGoal";
  }

  static const char* value(const ::mir_actions::MirMoveBaseGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"#move type\n"
"int16 BASE_MOVE = 0\n"
"int16 GLOBAL_MOVE = 1\n"
"int16 RELATIVE_MOVE = 2\n"
"int16 RELATIVE_MARKER_MOVE = 3\n"
"int16 DOCKING_MOVE = 4\n"
"int16 DOCKING_GLOBAL_MOVE = 5\n"
"int16 move_task\n"
"\n"
"#shared parameters\n"
"geometry_msgs/PoseStamped target_pose\n"
"\n"
"#global move parameters\n"
"float64 goal_dist_threshold\n"
"float64 goal_orientation_threshold\n"
"nav_msgs/Path path\n"
"float32 max_plan_time\n"
"bool clear_costmaps\n"
"bool pause_command\n"
"bool continue_command\n"
"\n"
"#relative move parameters\n"
"float64 yaw\n"
"bool collision_detection\n"
"bool collision_avoidance\n"
"float64 disable_collision_check_dist\n"
"float64 max_linear_speed\n"
"float64 max_rotational_speed\n"
"float64 pid_dist_offset\n"
"float64 target_offset\n"
"bool only_collision_detection\n"
"float64 timeout\n"
"\n"
"#docking move parameters\n"
"int32 pattern_type\n"
"int32 pattern_value\n"
"bool only_track\n"
"bool same_goal\n"
"string pose_frame\n"
"geometry_msgs/Pose2D pose\n"
"geometry_msgs/Pose2D offset\n"
"float64 bar_length\n"
"float64 bar_distance\n"
"float64 shelf_leg_asymmetry_x\n"
"float64 tolerance\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Path\n"
"#An array of poses that represents a Path for a robot to follow\n"
"Header header\n"
"geometry_msgs/PoseStamped[] poses\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::mir_actions::MirMoveBaseGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.move_task);
      stream.next(m.target_pose);
      stream.next(m.goal_dist_threshold);
      stream.next(m.goal_orientation_threshold);
      stream.next(m.path);
      stream.next(m.max_plan_time);
      stream.next(m.clear_costmaps);
      stream.next(m.pause_command);
      stream.next(m.continue_command);
      stream.next(m.yaw);
      stream.next(m.collision_detection);
      stream.next(m.collision_avoidance);
      stream.next(m.disable_collision_check_dist);
      stream.next(m.max_linear_speed);
      stream.next(m.max_rotational_speed);
      stream.next(m.pid_dist_offset);
      stream.next(m.target_offset);
      stream.next(m.only_collision_detection);
      stream.next(m.timeout);
      stream.next(m.pattern_type);
      stream.next(m.pattern_value);
      stream.next(m.only_track);
      stream.next(m.same_goal);
      stream.next(m.pose_frame);
      stream.next(m.pose);
      stream.next(m.offset);
      stream.next(m.bar_length);
      stream.next(m.bar_distance);
      stream.next(m.shelf_leg_asymmetry_x);
      stream.next(m.tolerance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MirMoveBaseGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_actions::MirMoveBaseGoal_<ContainerAllocator>& v)
  {
    s << indent << "move_task: ";
    Printer<int16_t>::stream(s, indent + "  ", v.move_task);
    s << indent << "target_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.target_pose);
    s << indent << "goal_dist_threshold: ";
    Printer<double>::stream(s, indent + "  ", v.goal_dist_threshold);
    s << indent << "goal_orientation_threshold: ";
    Printer<double>::stream(s, indent + "  ", v.goal_orientation_threshold);
    s << indent << "path: ";
    s << std::endl;
    Printer< ::nav_msgs::Path_<ContainerAllocator> >::stream(s, indent + "  ", v.path);
    s << indent << "max_plan_time: ";
    Printer<float>::stream(s, indent + "  ", v.max_plan_time);
    s << indent << "clear_costmaps: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clear_costmaps);
    s << indent << "pause_command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.pause_command);
    s << indent << "continue_command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.continue_command);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "collision_detection: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.collision_detection);
    s << indent << "collision_avoidance: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.collision_avoidance);
    s << indent << "disable_collision_check_dist: ";
    Printer<double>::stream(s, indent + "  ", v.disable_collision_check_dist);
    s << indent << "max_linear_speed: ";
    Printer<double>::stream(s, indent + "  ", v.max_linear_speed);
    s << indent << "max_rotational_speed: ";
    Printer<double>::stream(s, indent + "  ", v.max_rotational_speed);
    s << indent << "pid_dist_offset: ";
    Printer<double>::stream(s, indent + "  ", v.pid_dist_offset);
    s << indent << "target_offset: ";
    Printer<double>::stream(s, indent + "  ", v.target_offset);
    s << indent << "only_collision_detection: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.only_collision_detection);
    s << indent << "timeout: ";
    Printer<double>::stream(s, indent + "  ", v.timeout);
    s << indent << "pattern_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pattern_type);
    s << indent << "pattern_value: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pattern_value);
    s << indent << "only_track: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.only_track);
    s << indent << "same_goal: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.same_goal);
    s << indent << "pose_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.pose_frame);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "offset: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.offset);
    s << indent << "bar_length: ";
    Printer<double>::stream(s, indent + "  ", v.bar_length);
    s << indent << "bar_distance: ";
    Printer<double>::stream(s, indent + "  ", v.bar_distance);
    s << indent << "shelf_leg_asymmetry_x: ";
    Printer<double>::stream(s, indent + "  ", v.shelf_leg_asymmetry_x);
    s << indent << "tolerance: ";
    Printer<double>::stream(s, indent + "  ", v.tolerance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_ACTIONS_MESSAGE_MIRMOVEBASEGOAL_H
