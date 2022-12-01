// Generated by gencpp from file mapping_msgs/ObbMap.msg
// DO NOT EDIT!


#ifndef MAPPING_MSGS_MESSAGE_OBBMAP_H
#define MAPPING_MSGS_MESSAGE_OBBMAP_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Polygon.h>

namespace mapping_msgs
{
template <class ContainerAllocator>
struct ObbMap_
{
  typedef ObbMap_<ContainerAllocator> Type;

  ObbMap_()
    : objects_obb()  {
    }
  ObbMap_(const ContainerAllocator& _alloc)
    : objects_obb(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Polygon_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Polygon_<ContainerAllocator> >> _objects_obb_type;
  _objects_obb_type objects_obb;





  typedef boost::shared_ptr< ::mapping_msgs::ObbMap_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mapping_msgs::ObbMap_<ContainerAllocator> const> ConstPtr;

}; // struct ObbMap_

typedef ::mapping_msgs::ObbMap_<std::allocator<void> > ObbMap;

typedef boost::shared_ptr< ::mapping_msgs::ObbMap > ObbMapPtr;
typedef boost::shared_ptr< ::mapping_msgs::ObbMap const> ObbMapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mapping_msgs::ObbMap_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mapping_msgs::ObbMap_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mapping_msgs::ObbMap_<ContainerAllocator1> & lhs, const ::mapping_msgs::ObbMap_<ContainerAllocator2> & rhs)
{
  return lhs.objects_obb == rhs.objects_obb;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mapping_msgs::ObbMap_<ContainerAllocator1> & lhs, const ::mapping_msgs::ObbMap_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mapping_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mapping_msgs::ObbMap_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mapping_msgs::ObbMap_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mapping_msgs::ObbMap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mapping_msgs::ObbMap_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mapping_msgs::ObbMap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mapping_msgs::ObbMap_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mapping_msgs::ObbMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fb56d8292e7d369877fd0b4896a6a391";
  }

  static const char* value(const ::mapping_msgs::ObbMap_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfb56d8292e7d3698ULL;
  static const uint64_t static_value2 = 0x77fd0b4896a6a391ULL;
};

template<class ContainerAllocator>
struct DataType< ::mapping_msgs::ObbMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mapping_msgs/ObbMap";
  }

  static const char* value(const ::mapping_msgs::ObbMap_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mapping_msgs::ObbMap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Polygon[] objects_obb\n"
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

  static const char* value(const ::mapping_msgs::ObbMap_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mapping_msgs::ObbMap_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.objects_obb);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObbMap_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mapping_msgs::ObbMap_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mapping_msgs::ObbMap_<ContainerAllocator>& v)
  {
    s << indent << "objects_obb[]" << std::endl;
    for (size_t i = 0; i < v.objects_obb.size(); ++i)
    {
      s << indent << "  objects_obb[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Polygon_<ContainerAllocator> >::stream(s, indent + "    ", v.objects_obb[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAPPING_MSGS_MESSAGE_OBBMAP_H