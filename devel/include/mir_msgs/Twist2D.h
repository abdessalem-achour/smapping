// Generated by gencpp from file mir_msgs/Twist2D.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_TWIST2D_H
#define MIR_MSGS_MESSAGE_TWIST2D_H


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
struct Twist2D_
{
  typedef Twist2D_<ContainerAllocator> Type;

  Twist2D_()
    : linear(0.0)
    , angular(0.0)  {
    }
  Twist2D_(const ContainerAllocator& _alloc)
    : linear(0.0)
    , angular(0.0)  {
  (void)_alloc;
    }



   typedef float _linear_type;
  _linear_type linear;

   typedef float _angular_type;
  _angular_type angular;





  typedef boost::shared_ptr< ::mir_msgs::Twist2D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::Twist2D_<ContainerAllocator> const> ConstPtr;

}; // struct Twist2D_

typedef ::mir_msgs::Twist2D_<std::allocator<void> > Twist2D;

typedef boost::shared_ptr< ::mir_msgs::Twist2D > Twist2DPtr;
typedef boost::shared_ptr< ::mir_msgs::Twist2D const> Twist2DConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::Twist2D_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::Twist2D_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::Twist2D_<ContainerAllocator1> & lhs, const ::mir_msgs::Twist2D_<ContainerAllocator2> & rhs)
{
  return lhs.linear == rhs.linear &&
    lhs.angular == rhs.angular;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::Twist2D_<ContainerAllocator1> & lhs, const ::mir_msgs::Twist2D_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::Twist2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::Twist2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::Twist2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::Twist2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::Twist2D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::Twist2D_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::Twist2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9d5c2dcd348ac8f76ce2a4307bd63a13";
  }

  static const char* value(const ::mir_msgs::Twist2D_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9d5c2dcd348ac8f7ULL;
  static const uint64_t static_value2 = 0x6ce2a4307bd63a13ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::Twist2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/Twist2D";
  }

  static const char* value(const ::mir_msgs::Twist2D_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::Twist2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 linear\n"
"float32 angular\n"
;
  }

  static const char* value(const ::mir_msgs::Twist2D_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::Twist2D_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linear);
      stream.next(m.angular);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Twist2D_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::Twist2D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::Twist2D_<ContainerAllocator>& v)
  {
    s << indent << "linear: ";
    Printer<float>::stream(s, indent + "  ", v.linear);
    s << indent << "angular: ";
    Printer<float>::stream(s, indent + "  ", v.angular);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_TWIST2D_H
