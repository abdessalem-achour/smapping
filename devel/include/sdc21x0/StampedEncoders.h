// Generated by gencpp from file sdc21x0/StampedEncoders.msg
// DO NOT EDIT!


#ifndef SDC21X0_MESSAGE_STAMPEDENCODERS_H
#define SDC21X0_MESSAGE_STAMPEDENCODERS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sdc21x0/Encoders.h>

namespace sdc21x0
{
template <class ContainerAllocator>
struct StampedEncoders_
{
  typedef StampedEncoders_<ContainerAllocator> Type;

  StampedEncoders_()
    : header()
    , encoders()  {
    }
  StampedEncoders_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , encoders(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::sdc21x0::Encoders_<ContainerAllocator>  _encoders_type;
  _encoders_type encoders;





  typedef boost::shared_ptr< ::sdc21x0::StampedEncoders_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sdc21x0::StampedEncoders_<ContainerAllocator> const> ConstPtr;

}; // struct StampedEncoders_

typedef ::sdc21x0::StampedEncoders_<std::allocator<void> > StampedEncoders;

typedef boost::shared_ptr< ::sdc21x0::StampedEncoders > StampedEncodersPtr;
typedef boost::shared_ptr< ::sdc21x0::StampedEncoders const> StampedEncodersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sdc21x0::StampedEncoders_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sdc21x0::StampedEncoders_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sdc21x0::StampedEncoders_<ContainerAllocator1> & lhs, const ::sdc21x0::StampedEncoders_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.encoders == rhs.encoders;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sdc21x0::StampedEncoders_<ContainerAllocator1> & lhs, const ::sdc21x0::StampedEncoders_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sdc21x0

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sdc21x0::StampedEncoders_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sdc21x0::StampedEncoders_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sdc21x0::StampedEncoders_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sdc21x0::StampedEncoders_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sdc21x0::StampedEncoders_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sdc21x0::StampedEncoders_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sdc21x0::StampedEncoders_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7c217717e3bf9ebebdee0e043bc42e56";
  }

  static const char* value(const ::sdc21x0::StampedEncoders_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7c217717e3bf9ebeULL;
  static const uint64_t static_value2 = 0xbdee0e043bc42e56ULL;
};

template<class ContainerAllocator>
struct DataType< ::sdc21x0::StampedEncoders_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sdc21x0/StampedEncoders";
  }

  static const char* value(const ::sdc21x0::StampedEncoders_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sdc21x0::StampedEncoders_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"Encoders encoders\n"
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
"MSG: sdc21x0/Encoders\n"
"float32 time_delta # Time since last encoder update.\n"
"int32 left_wheel  # Encoder counts (absolute or relative)\n"
"int32 right_wheel # Encoder counts (absolute or relative)\n"
;
  }

  static const char* value(const ::sdc21x0::StampedEncoders_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sdc21x0::StampedEncoders_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.encoders);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StampedEncoders_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sdc21x0::StampedEncoders_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sdc21x0::StampedEncoders_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "encoders: ";
    s << std::endl;
    Printer< ::sdc21x0::Encoders_<ContainerAllocator> >::stream(s, indent + "  ", v.encoders);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SDC21X0_MESSAGE_STAMPEDENCODERS_H
