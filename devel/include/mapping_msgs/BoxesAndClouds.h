// Generated by gencpp from file mapping_msgs/BoxesAndClouds.msg
// DO NOT EDIT!


#ifndef MAPPING_MSGS_MESSAGE_BOXESANDCLOUDS_H
#define MAPPING_MSGS_MESSAGE_BOXESANDCLOUDS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mapping_msgs/BoundingBoxes.h>
#include <sensor_msgs/PointCloud2.h>
#include <rosgraph_msgs/Clock.h>

namespace mapping_msgs
{
template <class ContainerAllocator>
struct BoxesAndClouds_
{
  typedef BoxesAndClouds_<ContainerAllocator> Type;

  BoxesAndClouds_()
    : bounding_boxes()
    , point_cloud()
    , clock()  {
    }
  BoxesAndClouds_(const ContainerAllocator& _alloc)
    : bounding_boxes(_alloc)
    , point_cloud(_alloc)
    , clock(_alloc)  {
  (void)_alloc;
    }



   typedef  ::mapping_msgs::BoundingBoxes_<ContainerAllocator>  _bounding_boxes_type;
  _bounding_boxes_type bounding_boxes;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _point_cloud_type;
  _point_cloud_type point_cloud;

   typedef  ::rosgraph_msgs::Clock_<ContainerAllocator>  _clock_type;
  _clock_type clock;





  typedef boost::shared_ptr< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> const> ConstPtr;

}; // struct BoxesAndClouds_

typedef ::mapping_msgs::BoxesAndClouds_<std::allocator<void> > BoxesAndClouds;

typedef boost::shared_ptr< ::mapping_msgs::BoxesAndClouds > BoxesAndCloudsPtr;
typedef boost::shared_ptr< ::mapping_msgs::BoxesAndClouds const> BoxesAndCloudsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mapping_msgs::BoxesAndClouds_<ContainerAllocator1> & lhs, const ::mapping_msgs::BoxesAndClouds_<ContainerAllocator2> & rhs)
{
  return lhs.bounding_boxes == rhs.bounding_boxes &&
    lhs.point_cloud == rhs.point_cloud &&
    lhs.clock == rhs.clock;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mapping_msgs::BoxesAndClouds_<ContainerAllocator1> & lhs, const ::mapping_msgs::BoxesAndClouds_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mapping_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a9d322cd162f39753ffb3778b7aa7277";
  }

  static const char* value(const ::mapping_msgs::BoxesAndClouds_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa9d322cd162f3975ULL;
  static const uint64_t static_value2 = 0x3ffb3778b7aa7277ULL;
};

template<class ContainerAllocator>
struct DataType< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mapping_msgs/BoxesAndClouds";
  }

  static const char* value(const ::mapping_msgs::BoxesAndClouds_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "BoundingBoxes bounding_boxes\n"
"sensor_msgs/PointCloud2 point_cloud\n"
"rosgraph_msgs/Clock clock\n"
"\n"
"================================================================================\n"
"MSG: mapping_msgs/BoundingBoxes\n"
"Header header\n"
"Header image_header\n"
"BoundingBox[] bounding_boxes\n"
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
"MSG: mapping_msgs/BoundingBox\n"
"float64 probability\n"
"int64 xmin\n"
"int64 ymin\n"
"int64 xmax\n"
"int64 ymax\n"
"int16 id\n"
"string Class\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
"\n"
"================================================================================\n"
"MSG: rosgraph_msgs/Clock\n"
"# roslib/Clock is used for publishing simulated time in ROS. \n"
"# This message simply communicates the current time.\n"
"# For more information, see http://www.ros.org/wiki/Clock\n"
"time clock\n"
;
  }

  static const char* value(const ::mapping_msgs::BoxesAndClouds_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.bounding_boxes);
      stream.next(m.point_cloud);
      stream.next(m.clock);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoxesAndClouds_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mapping_msgs::BoxesAndClouds_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mapping_msgs::BoxesAndClouds_<ContainerAllocator>& v)
  {
    s << indent << "bounding_boxes: ";
    s << std::endl;
    Printer< ::mapping_msgs::BoundingBoxes_<ContainerAllocator> >::stream(s, indent + "  ", v.bounding_boxes);
    s << indent << "point_cloud: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.point_cloud);
    s << indent << "clock: ";
    s << std::endl;
    Printer< ::rosgraph_msgs::Clock_<ContainerAllocator> >::stream(s, indent + "  ", v.clock);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAPPING_MSGS_MESSAGE_BOXESANDCLOUDS_H
