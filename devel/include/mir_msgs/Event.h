// Generated by gencpp from file mir_msgs/Event.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_EVENT_H
#define MIR_MSGS_MESSAGE_EVENT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace mir_msgs
{
template <class ContainerAllocator>
struct Event_
{
  typedef Event_<ContainerAllocator> Type;

  Event_()
    : eventType(0)
    , area_guid()
    , area_name()
    , polygon()  {
    }
  Event_(const ContainerAllocator& _alloc)
    : eventType(0)
    , area_guid(_alloc)
    , area_name(_alloc)
    , polygon(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _eventType_type;
  _eventType_type eventType;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _area_guid_type;
  _area_guid_type area_guid;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _area_name_type;
  _area_name_type area_name;

   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _polygon_type;
  _polygon_type polygon;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(EV_SPEED)
  #undef EV_SPEED
#endif
#if defined(_WIN32) && defined(EV_BLINK)
  #undef EV_BLINK
#endif
#if defined(_WIN32) && defined(EV_SOUND)
  #undef EV_SOUND
#endif
#if defined(_WIN32) && defined(EV_DOOR)
  #undef EV_DOOR
#endif
#if defined(_WIN32) && defined(EV_AMCLOFF)
  #undef EV_AMCLOFF
#endif
#if defined(_WIN32) && defined(EV_FWDDIST)
  #undef EV_FWDDIST
#endif
#if defined(_WIN32) && defined(EV_IO)
  #undef EV_IO
#endif
#if defined(_WIN32) && defined(EV_FLEETLCK)
  #undef EV_FLEETLCK
#endif
#if defined(_WIN32) && defined(EV_EMERGENCY)
  #undef EV_EMERGENCY
#endif

  enum {
    EV_SPEED = 1u,
    EV_BLINK = 2u,
    EV_SOUND = 3u,
    EV_DOOR = 4u,
    EV_AMCLOFF = 5u,
    EV_FWDDIST = 6u,
    EV_IO = 7u,
    EV_FLEETLCK = 8u,
    EV_EMERGENCY = 9u,
  };


  typedef boost::shared_ptr< ::mir_msgs::Event_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::Event_<ContainerAllocator> const> ConstPtr;

}; // struct Event_

typedef ::mir_msgs::Event_<std::allocator<void> > Event;

typedef boost::shared_ptr< ::mir_msgs::Event > EventPtr;
typedef boost::shared_ptr< ::mir_msgs::Event const> EventConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::Event_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::Event_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mir_msgs::Event_<ContainerAllocator1> & lhs, const ::mir_msgs::Event_<ContainerAllocator2> & rhs)
{
  return lhs.eventType == rhs.eventType &&
    lhs.area_guid == rhs.area_guid &&
    lhs.area_name == rhs.area_name &&
    lhs.polygon == rhs.polygon;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mir_msgs::Event_<ContainerAllocator1> & lhs, const ::mir_msgs::Event_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mir_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::Event_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::Event_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::Event_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::Event_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::Event_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::Event_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::Event_<ContainerAllocator> >
{
  static const char* value()
  {
    return "03782c584d14555433c75de52c9adea7";
  }

  static const char* value(const ::mir_msgs::Event_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x03782c584d145554ULL;
  static const uint64_t static_value2 = 0x33c75de52c9adea7ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::Event_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/Event";
  }

  static const char* value(const ::mir_msgs::Event_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::Event_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 EV_SPEED=1\n"
"uint32 EV_BLINK=2\n"
"uint32 EV_SOUND=3\n"
"uint32 EV_DOOR=4\n"
"uint32 EV_AMCLOFF=5\n"
"uint32 EV_FWDDIST=6\n"
"uint32 EV_IO=7\n"
"uint32 EV_FLEETLCK=8	# Fleet\n"
"uint32 EV_EMERGENCY=9	# Fleet\n"
"uint32 eventType	# The area event type\n"
"string area_guid	# The area unique identifier\n"
"string area_name	# The name of the area\n"
"geometry_msgs/Point[] polygon # An array of corner points that define the edges of the area\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mir_msgs::Event_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::Event_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.eventType);
      stream.next(m.area_guid);
      stream.next(m.area_name);
      stream.next(m.polygon);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Event_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::Event_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::Event_<ContainerAllocator>& v)
  {
    s << indent << "eventType: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.eventType);
    s << indent << "area_guid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.area_guid);
    s << indent << "area_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.area_name);
    s << indent << "polygon[]" << std::endl;
    for (size_t i = 0; i < v.polygon.size(); ++i)
    {
      s << indent << "  polygon[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.polygon[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_EVENT_H
