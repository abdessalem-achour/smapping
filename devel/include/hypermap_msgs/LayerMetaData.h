// Generated by gencpp from file hypermap_msgs/LayerMetaData.msg
// DO NOT EDIT!


#ifndef HYPERMAP_MSGS_MESSAGE_LAYERMETADATA_H
#define HYPERMAP_MSGS_MESSAGE_LAYERMETADATA_H


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
struct LayerMetaData_
{
  typedef LayerMetaData_<ContainerAllocator> Type;

  LayerMetaData_()
    : class_name()
    , name()
    , frame_id()
    , subscribe_mode(false)
    , enable_update(false)
    , publish_global_topics(false)  {
    }
  LayerMetaData_(const ContainerAllocator& _alloc)
    : class_name(_alloc)
    , name(_alloc)
    , frame_id(_alloc)
    , subscribe_mode(false)
    , enable_update(false)
    , publish_global_topics(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _class_name_type;
  _class_name_type class_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _frame_id_type;
  _frame_id_type frame_id;

   typedef uint8_t _subscribe_mode_type;
  _subscribe_mode_type subscribe_mode;

   typedef uint8_t _enable_update_type;
  _enable_update_type enable_update;

   typedef uint8_t _publish_global_topics_type;
  _publish_global_topics_type publish_global_topics;





  typedef boost::shared_ptr< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> const> ConstPtr;

}; // struct LayerMetaData_

typedef ::hypermap_msgs::LayerMetaData_<std::allocator<void> > LayerMetaData;

typedef boost::shared_ptr< ::hypermap_msgs::LayerMetaData > LayerMetaDataPtr;
typedef boost::shared_ptr< ::hypermap_msgs::LayerMetaData const> LayerMetaDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hypermap_msgs::LayerMetaData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hypermap_msgs::LayerMetaData_<ContainerAllocator1> & lhs, const ::hypermap_msgs::LayerMetaData_<ContainerAllocator2> & rhs)
{
  return lhs.class_name == rhs.class_name &&
    lhs.name == rhs.name &&
    lhs.frame_id == rhs.frame_id &&
    lhs.subscribe_mode == rhs.subscribe_mode &&
    lhs.enable_update == rhs.enable_update &&
    lhs.publish_global_topics == rhs.publish_global_topics;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hypermap_msgs::LayerMetaData_<ContainerAllocator1> & lhs, const ::hypermap_msgs::LayerMetaData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hypermap_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cbb087715ec31cbe2dbbb7c5a3c3c3a7";
  }

  static const char* value(const ::hypermap_msgs::LayerMetaData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcbb087715ec31cbeULL;
  static const uint64_t static_value2 = 0x2dbbb7c5a3c3c3a7ULL;
};

template<class ContainerAllocator>
struct DataType< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hypermap_msgs/LayerMetaData";
  }

  static const char* value(const ::hypermap_msgs::LayerMetaData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string class_name\n"
"string name\n"
"string frame_id\n"
"bool subscribe_mode\n"
"bool enable_update\n"
"bool publish_global_topics\n"
;
  }

  static const char* value(const ::hypermap_msgs::LayerMetaData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.class_name);
      stream.next(m.name);
      stream.next(m.frame_id);
      stream.next(m.subscribe_mode);
      stream.next(m.enable_update);
      stream.next(m.publish_global_topics);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LayerMetaData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hypermap_msgs::LayerMetaData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hypermap_msgs::LayerMetaData_<ContainerAllocator>& v)
  {
    s << indent << "class_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.class_name);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.frame_id);
    s << indent << "subscribe_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.subscribe_mode);
    s << indent << "enable_update: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable_update);
    s << indent << "publish_global_topics: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.publish_global_topics);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HYPERMAP_MSGS_MESSAGE_LAYERMETADATA_H
