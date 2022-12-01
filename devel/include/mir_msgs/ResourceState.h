// Generated by gencpp from file mir_msgs/ResourceState.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_RESOURCESTATE_H
#define MIR_MSGS_MESSAGE_RESOURCESTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace mir_msgs
{
template <class ContainerAllocator>
struct ResourceState_
{
  typedef ResourceState_<ContainerAllocator> Type;

  ResourceState_()
    : assigned()
    , type(0)
    , path_idx(0)
    , distance(0.0)
    , collision_point()
    , queue()
    , name()
    , guid()  {
    }
  ResourceState_(const ContainerAllocator& _alloc)
    : assigned(_alloc)
    , type(0)
    , path_idx(0)
    , distance(0.0)
    , collision_point(_alloc)
    , queue(_alloc)
    , name(_alloc)
    , guid(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _assigned_type;
  _assigned_type assigned;

   typedef uint32_t _type_type;
  _type_type type;

   typedef uint32_t _path_idx_type;
  _path_idx_type path_idx;

   typedef float _distance_type;
  _distance_type distance;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _collision_point_type;
  _collision_point_type collision_point;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _queue_type;
  _queue_type queue;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _guid_type;
  _guid_type guid;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(ROBOT_POSITION)
  #undef ROBOT_POSITION
#endif
#if defined(_WIN32) && defined(STAGING_POSITION)
  #undef STAGING_POSITION
#endif
#if defined(_WIN32) && defined(CHARGING_STATION)
  #undef CHARGING_STATION
#endif
#if defined(_WIN32) && defined(AREA)
  #undef AREA
#endif

  enum {
    ROBOT_POSITION = 0u,
    STAGING_POSITION = 1u,
    CHARGING_STATION = 2u,
    AREA = 3u,
  };


  typedef boost::shared_ptr< ::mir_msgs::ResourceState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::ResourceState_<ContainerAllocator> const> ConstPtr;

}; // struct ResourceState_

typedef ::mir_msgs::ResourceState_<std::allocator<void> > ResourceState;

typedef boost::shared_ptr< ::mir_msgs::ResourceState > ResourceStatePtr;
typedef boost::shared_ptr< ::mir_msgs::ResourceState const> ResourceStateConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::ResourceState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::ResourceState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::ResourceState_<ContainerAllocator1> & lhs, const ::mir_msgs::ResourceState_<ContainerAllocator2> & rhs)
{
  return lhs.assigned == rhs.assigned &&
    lhs.type == rhs.type &&
    lhs.path_idx == rhs.path_idx &&
    lhs.distance == rhs.distance &&
    lhs.collision_point == rhs.collision_point &&
    lhs.queue == rhs.queue &&
    lhs.name == rhs.name &&
    lhs.guid == rhs.guid;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::ResourceState_<ContainerAllocator1> & lhs, const ::mir_msgs::ResourceState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::ResourceState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::ResourceState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::ResourceState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::ResourceState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::ResourceState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::ResourceState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::ResourceState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "df6513b10e65bfe7ec44f469810ded59";
  }

  static const char* value(const ::mir_msgs::ResourceState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdf6513b10e65bfe7ULL;
  static const uint64_t static_value2 = 0xec44f469810ded59ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::ResourceState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/ResourceState";
  }

  static const char* value(const ::mir_msgs::ResourceState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::ResourceState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] assigned # A token that is true whenever the resource is busy.\n"
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
;
  }

  static const char* value(const ::mir_msgs::ResourceState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::ResourceState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.assigned);
      stream.next(m.type);
      stream.next(m.path_idx);
      stream.next(m.distance);
      stream.next(m.collision_point);
      stream.next(m.queue);
      stream.next(m.name);
      stream.next(m.guid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ResourceState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::ResourceState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::ResourceState_<ContainerAllocator>& v)
  {
    s << indent << "assigned[]" << std::endl;
    for (size_t i = 0; i < v.assigned.size(); ++i)
    {
      s << indent << "  assigned[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.assigned[i]);
    }
    s << indent << "type: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.type);
    s << indent << "path_idx: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.path_idx);
    s << indent << "distance: ";
    Printer<float>::stream(s, indent + "  ", v.distance);
    s << indent << "collision_point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.collision_point);
    s << indent << "queue[]" << std::endl;
    for (size_t i = 0; i < v.queue.size(); ++i)
    {
      s << indent << "  queue[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.queue[i]);
    }
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "guid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.guid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_RESOURCESTATE_H
