// Generated by gencpp from file mir_msgs/PrecisionDockingStatus.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_PRECISIONDOCKINGSTATUS_H
#define MIR_MSGS_MESSAGE_PRECISIONDOCKINGSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mir_msgs
{
template <class ContainerAllocator>
struct PrecisionDockingStatus_
{
  typedef PrecisionDockingStatus_<ContainerAllocator> Type;

  PrecisionDockingStatus_()
    : connected(false)
    , motor_forward(false)
    , motor_back(false)
    , left_docking(false)
    , right_docking(false)  {
    }
  PrecisionDockingStatus_(const ContainerAllocator& _alloc)
    : connected(false)
    , motor_forward(false)
    , motor_back(false)
    , left_docking(false)
    , right_docking(false)  {
  (void)_alloc;
    }



   typedef uint8_t _connected_type;
  _connected_type connected;

   typedef uint8_t _motor_forward_type;
  _motor_forward_type motor_forward;

   typedef uint8_t _motor_back_type;
  _motor_back_type motor_back;

   typedef uint8_t _left_docking_type;
  _left_docking_type left_docking;

   typedef uint8_t _right_docking_type;
  _right_docking_type right_docking;





  typedef boost::shared_ptr< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> const> ConstPtr;

}; // struct PrecisionDockingStatus_

typedef ::mir_msgs::PrecisionDockingStatus_<std::allocator<void> > PrecisionDockingStatus;

typedef boost::shared_ptr< ::mir_msgs::PrecisionDockingStatus > PrecisionDockingStatusPtr;
typedef boost::shared_ptr< ::mir_msgs::PrecisionDockingStatus const> PrecisionDockingStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator1> & lhs, const ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator2> & rhs)
{
  return lhs.connected == rhs.connected &&
    lhs.motor_forward == rhs.motor_forward &&
    lhs.motor_back == rhs.motor_back &&
    lhs.left_docking == rhs.left_docking &&
    lhs.right_docking == rhs.right_docking;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator1> & lhs, const ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "17548d8189172ef51cde6fef0830938f";
  }

  static const char* value(const ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x17548d8189172ef5ULL;
  static const uint64_t static_value2 = 0x1cde6fef0830938fULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/PrecisionDockingStatus";
  }

  static const char* value(const ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool connected\n"
"bool motor_forward\n"
"bool motor_back\n"
"bool left_docking\n"
"bool right_docking\n"
;
  }

  static const char* value(const ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.connected);
      stream.next(m.motor_forward);
      stream.next(m.motor_back);
      stream.next(m.left_docking);
      stream.next(m.right_docking);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PrecisionDockingStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::PrecisionDockingStatus_<ContainerAllocator>& v)
  {
    s << indent << "connected: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.connected);
    s << indent << "motor_forward: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor_forward);
    s << indent << "motor_back: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motor_back);
    s << indent << "left_docking: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.left_docking);
    s << indent << "right_docking: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.right_docking);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_PRECISIONDOCKINGSTATUS_H
