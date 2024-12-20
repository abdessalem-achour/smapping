// Generated by gencpp from file mir_msgs/WorldModel.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_WORLDMODEL_H
#define MIR_MSGS_MESSAGE_WORLDMODEL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mir_msgs/WorldMap.h>

namespace mir_msgs
{
template <class ContainerAllocator>
struct WorldModel_
{
  typedef WorldModel_<ContainerAllocator> Type;

  WorldModel_()
    : header()
    , world_map()  {
    }
  WorldModel_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , world_map(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::mir_msgs::WorldMap_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::mir_msgs::WorldMap_<ContainerAllocator> >> _world_map_type;
  _world_map_type world_map;





  typedef boost::shared_ptr< ::mir_msgs::WorldModel_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::WorldModel_<ContainerAllocator> const> ConstPtr;

}; // struct WorldModel_

typedef ::mir_msgs::WorldModel_<std::allocator<void> > WorldModel;

typedef boost::shared_ptr< ::mir_msgs::WorldModel > WorldModelPtr;
typedef boost::shared_ptr< ::mir_msgs::WorldModel const> WorldModelConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::WorldModel_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::WorldModel_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::WorldModel_<ContainerAllocator1> & lhs, const ::mir_msgs::WorldModel_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.world_map == rhs.world_map;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::WorldModel_<ContainerAllocator1> & lhs, const ::mir_msgs::WorldModel_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::WorldModel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::WorldModel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::WorldModel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::WorldModel_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::WorldModel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::WorldModel_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::WorldModel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bbe92832ba9b048a0eac3da06992a9f8";
  }

  static const char* value(const ::mir_msgs::WorldModel_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbbe92832ba9b048aULL;
  static const uint64_t static_value2 = 0x0eac3da06992a9f8ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::WorldModel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/WorldModel";
  }

  static const char* value(const ::mir_msgs::WorldModel_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::WorldModel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"mir_msgs/WorldMap[] world_map # world model for a particular map\n"
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
"MSG: mir_msgs/WorldMap\n"
"mir_msgs/ResourcesState positions\n"
"mir_msgs/ResourcesState areas\n"
"mir_msgs/ExternalRobots robots\n"
"int32 map_id\n"
"\n"
"================================================================================\n"
"MSG: mir_msgs/ResourcesState\n"
"Header header\n"
"ResourceState[] resources\n"
"\n"
"================================================================================\n"
"MSG: mir_msgs/ResourceState\n"
"string[] assigned # A token that is true whenever the resource is busy.\n"
"uint32 ROBOT_POSITION=0\n"
"uint32 STAGING_POSITION=1\n"
"uint32 CHARGING_STATION=2\n"
"uint32 AREA=3\n"
"uint32 type # The resource type\n"
"uint32 path_idx # The index from the global path in which the robot gets into the position\n"
"float32 distance # The distance from the robot to the resource\n"
"geometry_msgs/Point collision_point # The collision point with the resource\n"
"string[] queue # The queue for a resource. It's a list of robots ips.\n"
"string name # The name of the resource\n"
"string guid # The guid of the resource\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: mir_msgs/ExternalRobots\n"
"Header header\n"
"mir_msgs/ExternalRobot[] robots\n"
"\n"
"================================================================================\n"
"MSG: mir_msgs/ExternalRobot\n"
"Header header\n"
"uint32 id\n"
"uint32 MIR100=1\n"
"uint32 MIR500=3\n"
"uint32 type_id\n"
"string name\n"
"float64 robot_length\n"
"float64 robot_width\n"
"string footprint\n"
"string ip\n"
"uint32 map_id\n"
"int32 priority\n"
"geometry_msgs/Pose pose\n"
"geometry_msgs/Pose extrapolated_pose\n"
"geometry_msgs/Twist twist\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
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
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mir_msgs::WorldModel_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::WorldModel_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.world_map);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WorldModel_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::WorldModel_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::WorldModel_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "world_map[]" << std::endl;
    for (size_t i = 0; i < v.world_map.size(); ++i)
    {
      s << indent << "  world_map[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mir_msgs::WorldMap_<ContainerAllocator> >::stream(s, indent + "    ", v.world_map[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_WORLDMODEL_H
