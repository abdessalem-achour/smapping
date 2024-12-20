// Generated by gencpp from file hypermap_msgs/StoreMapRequest.msg
// DO NOT EDIT!


#ifndef HYPERMAP_MSGS_MESSAGE_STOREMAPREQUEST_H
#define HYPERMAP_MSGS_MESSAGE_STOREMAPREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hypermap_msgs
{
template <class ContainerAllocator>
struct StoreMapRequest_
{
  typedef StoreMapRequest_<ContainerAllocator> Type;

  StoreMapRequest_()
    : filename()  {
    }
  StoreMapRequest_(const ContainerAllocator& _alloc)
    : filename(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _filename_type;
  _filename_type filename;





  typedef boost::shared_ptr< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> const> ConstPtr;

}; // struct StoreMapRequest_

typedef ::hypermap_msgs::StoreMapRequest_<std::allocator<void> > StoreMapRequest;

typedef boost::shared_ptr< ::hypermap_msgs::StoreMapRequest > StoreMapRequestPtr;
typedef boost::shared_ptr< ::hypermap_msgs::StoreMapRequest const> StoreMapRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hypermap_msgs::StoreMapRequest_<ContainerAllocator1> & lhs, const ::hypermap_msgs::StoreMapRequest_<ContainerAllocator2> & rhs)
{
  return lhs.filename == rhs.filename;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hypermap_msgs::StoreMapRequest_<ContainerAllocator1> & lhs, const ::hypermap_msgs::StoreMapRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hypermap_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "030824f52a0628ead956fb9d67e66ae9";
  }

  static const char* value(const ::hypermap_msgs::StoreMapRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x030824f52a0628eaULL;
  static const uint64_t static_value2 = 0xd956fb9d67e66ae9ULL;
};

template<class ContainerAllocator>
struct DataType< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hypermap_msgs/StoreMapRequest";
  }

  static const char* value(const ::hypermap_msgs::StoreMapRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string filename\n"
;
  }

  static const char* value(const ::hypermap_msgs::StoreMapRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.filename);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StoreMapRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hypermap_msgs::StoreMapRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hypermap_msgs::StoreMapRequest_<ContainerAllocator>& v)
  {
    s << indent << "filename: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.filename);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HYPERMAP_MSGS_MESSAGE_STOREMAPREQUEST_H
