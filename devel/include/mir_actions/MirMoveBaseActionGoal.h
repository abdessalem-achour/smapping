// Generated by gencpp from file mir_actions/MirMoveBaseActionGoal.msg
// DO NOT EDIT!


#ifndef MIR_ACTIONS_MESSAGE_MIRMOVEBASEACTIONGOAL_H
#define MIR_ACTIONS_MESSAGE_MIRMOVEBASEACTIONGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <mir_actions/MirMoveBaseGoal.h>

namespace mir_actions
{
template <class ContainerAllocator>
struct MirMoveBaseActionGoal_
{
  typedef MirMoveBaseActionGoal_<ContainerAllocator> Type;

  MirMoveBaseActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  MirMoveBaseActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::mir_actions::MirMoveBaseGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct MirMoveBaseActionGoal_

typedef ::mir_actions::MirMoveBaseActionGoal_<std::allocator<void> > MirMoveBaseActionGoal;

typedef boost::shared_ptr< ::mir_actions::MirMoveBaseActionGoal > MirMoveBaseActionGoalPtr;
typedef boost::shared_ptr< ::mir_actions::MirMoveBaseActionGoal const> MirMoveBaseActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator1> & lhs, const ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator1> & lhs, const ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_actions

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "914bd5ff203b40ccedbfd67f69a6ec0d";
  }

  static const char* value(const ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x914bd5ff203b40ccULL;
  static const uint64_t static_value2 = 0xedbfd67f69a6ec0dULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_actions/MirMoveBaseActionGoal";
  }

  static const char* value(const ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"MirMoveBaseGoal goal\n"
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
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: mir_actions/MirMoveBaseGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
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

  static const char* value(const ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MirMoveBaseActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_actions::MirMoveBaseActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::mir_actions::MirMoveBaseGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_ACTIONS_MESSAGE_MIRMOVEBASEACTIONGOAL_H
