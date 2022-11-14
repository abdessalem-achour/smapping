// Generated by gencpp from file mir_msgs/MirExtra.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_MIREXTRA_H
#define MIR_MSGS_MESSAGE_MIREXTRA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace mir_msgs
{
template <class ContainerAllocator>
struct MirExtra_
{
  typedef MirExtra_<ContainerAllocator> Type;

  MirExtra_()
    : header()
    , time_delta(0.0)
    , r_rpm(0.0)
    , l_rpm(0.0)
    , vel(0.0)
    , ang(0.0)  {
    }
  MirExtra_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , time_delta(0.0)
    , r_rpm(0.0)
    , l_rpm(0.0)
    , vel(0.0)
    , ang(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _time_delta_type;
  _time_delta_type time_delta;

   typedef float _r_rpm_type;
  _r_rpm_type r_rpm;

   typedef float _l_rpm_type;
  _l_rpm_type l_rpm;

   typedef float _vel_type;
  _vel_type vel;

   typedef float _ang_type;
  _ang_type ang;





  typedef boost::shared_ptr< ::mir_msgs::MirExtra_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::MirExtra_<ContainerAllocator> const> ConstPtr;

}; // struct MirExtra_

typedef ::mir_msgs::MirExtra_<std::allocator<void> > MirExtra;

typedef boost::shared_ptr< ::mir_msgs::MirExtra > MirExtraPtr;
typedef boost::shared_ptr< ::mir_msgs::MirExtra const> MirExtraConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::MirExtra_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::MirExtra_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::MirExtra_<ContainerAllocator1> & lhs, const ::mir_msgs::MirExtra_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.time_delta == rhs.time_delta &&
    lhs.r_rpm == rhs.r_rpm &&
    lhs.l_rpm == rhs.l_rpm &&
    lhs.vel == rhs.vel &&
    lhs.ang == rhs.ang;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::MirExtra_<ContainerAllocator1> & lhs, const ::mir_msgs::MirExtra_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::MirExtra_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::MirExtra_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::MirExtra_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::MirExtra_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::MirExtra_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::MirExtra_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::MirExtra_<ContainerAllocator> >
{
  static const char* value()
  {
    return "70adfdf09e98057d681bf9b0e6251bbf";
  }

  static const char* value(const ::mir_msgs::MirExtra_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x70adfdf09e98057dULL;
  static const uint64_t static_value2 = 0x681bf9b0e6251bbfULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::MirExtra_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/MirExtra";
  }

  static const char* value(const ::mir_msgs::MirExtra_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::MirExtra_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# MirExtra - to publish data on a topic\n"
"Header header\n"
"float32 time_delta # Time since last encoder update.\n"
"float32 r_rpm  # rmp speed from right encoder\n"
"float32 l_rpm  # rmp speed from left encoder\n"
"float32 vel # calc velocity\n"
"float32 ang # calculated angle speed\n"
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
;
  }

  static const char* value(const ::mir_msgs::MirExtra_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::MirExtra_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.time_delta);
      stream.next(m.r_rpm);
      stream.next(m.l_rpm);
      stream.next(m.vel);
      stream.next(m.ang);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MirExtra_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::MirExtra_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::MirExtra_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "time_delta: ";
    Printer<float>::stream(s, indent + "  ", v.time_delta);
    s << indent << "r_rpm: ";
    Printer<float>::stream(s, indent + "  ", v.r_rpm);
    s << indent << "l_rpm: ";
    Printer<float>::stream(s, indent + "  ", v.l_rpm);
    s << indent << "vel: ";
    Printer<float>::stream(s, indent + "  ", v.vel);
    s << indent << "ang: ";
    Printer<float>::stream(s, indent + "  ", v.ang);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_MIREXTRA_H
