// Generated by gencpp from file hypermap_msgs/GetLocationsByStringRequest.msg
// DO NOT EDIT!


#ifndef HYPERMAP_MSGS_MESSAGE_GETLOCATIONSBYSTRINGREQUEST_H
#define HYPERMAP_MSGS_MESSAGE_GETLOCATIONSBYSTRINGREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PolygonStamped.h>

namespace hypermap_msgs
{
template <class ContainerAllocator>
struct GetLocationsByStringRequest_
{
  typedef GetLocationsByStringRequest_<ContainerAllocator> Type;

  GetLocationsByStringRequest_()
    : layer()
    , name()
    , area()  {
    }
  GetLocationsByStringRequest_(const ContainerAllocator& _alloc)
    : layer(_alloc)
    , name(_alloc)
    , area(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _layer_type;
  _layer_type layer;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef  ::geometry_msgs::PolygonStamped_<ContainerAllocator>  _area_type;
  _area_type area;





  typedef boost::shared_ptr< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetLocationsByStringRequest_

typedef ::hypermap_msgs::GetLocationsByStringRequest_<std::allocator<void> > GetLocationsByStringRequest;

typedef boost::shared_ptr< ::hypermap_msgs::GetLocationsByStringRequest > GetLocationsByStringRequestPtr;
typedef boost::shared_ptr< ::hypermap_msgs::GetLocationsByStringRequest const> GetLocationsByStringRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator1> & lhs, const ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator2> & rhs)
{
  return lhs.layer == rhs.layer &&
    lhs.name == rhs.name &&
    lhs.area == rhs.area;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator1> & lhs, const ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hypermap_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e0bbc15e255ff109f640e25de6c69302";
  }

  static const char* value(const ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe0bbc15e255ff109ULL;
  static const uint64_t static_value2 = 0xf640e25de6c69302ULL;
};

template<class ContainerAllocator>
struct DataType< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hypermap_msgs/GetLocationsByStringRequest";
  }

  static const char* value(const ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string layer\n"
"string name\n"
"geometry_msgs/PolygonStamped area\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PolygonStamped\n"
"# This represents a Polygon with reference coordinate frame and timestamp\n"
"Header header\n"
"Polygon polygon\n"
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
"MSG: geometry_msgs/Polygon\n"
"#A specification of a polygon where the first and last points are assumed to be connected\n"
"Point32[] points\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.layer);
      stream.next(m.name);
      stream.next(m.area);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetLocationsByStringRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hypermap_msgs::GetLocationsByStringRequest_<ContainerAllocator>& v)
  {
    s << indent << "layer: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.layer);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "area: ";
    s << std::endl;
    Printer< ::geometry_msgs::PolygonStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.area);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HYPERMAP_MSGS_MESSAGE_GETLOCATIONSBYSTRINGREQUEST_H
