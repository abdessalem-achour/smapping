// Generated by gencpp from file hypermap_msgs/GetSemanticByAreaResponse.msg
// DO NOT EDIT!


#ifndef HYPERMAP_MSGS_MESSAGE_GETSEMANTICBYAREARESPONSE_H
#define HYPERMAP_MSGS_MESSAGE_GETSEMANTICBYAREARESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <hypermap_msgs/SemanticObject.h>

namespace hypermap_msgs
{
template <class ContainerAllocator>
struct GetSemanticByAreaResponse_
{
  typedef GetSemanticByAreaResponse_<ContainerAllocator> Type;

  GetSemanticByAreaResponse_()
    : objects()  {
    }
  GetSemanticByAreaResponse_(const ContainerAllocator& _alloc)
    : objects(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::hypermap_msgs::SemanticObject_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::hypermap_msgs::SemanticObject_<ContainerAllocator> >> _objects_type;
  _objects_type objects;





  typedef boost::shared_ptr< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetSemanticByAreaResponse_

typedef ::hypermap_msgs::GetSemanticByAreaResponse_<std::allocator<void> > GetSemanticByAreaResponse;

typedef boost::shared_ptr< ::hypermap_msgs::GetSemanticByAreaResponse > GetSemanticByAreaResponsePtr;
typedef boost::shared_ptr< ::hypermap_msgs::GetSemanticByAreaResponse const> GetSemanticByAreaResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator1> & lhs, const ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator2> & rhs)
{
  return lhs.objects == rhs.objects;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator1> & lhs, const ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hypermap_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7a9fabb4f60c26753ffd36e7aa0f969d";
  }

  static const char* value(const ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7a9fabb4f60c2675ULL;
  static const uint64_t static_value2 = 0x3ffd36e7aa0f969dULL;
};

template<class ContainerAllocator>
struct DataType< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hypermap_msgs/GetSemanticByAreaResponse";
  }

  static const char* value(const ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "SemanticObject[] objects\n"
"\n"
"\n"
"================================================================================\n"
"MSG: hypermap_msgs/SemanticObject\n"
"int32 id\n"
"geometry_msgs/Polygon shape\n"
"geometry_msgs/Point position # should be centroid of shape\n"
"string name\n"
"string[] tags\n"
"float64[] confidence\n"
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
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.objects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetSemanticByAreaResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hypermap_msgs::GetSemanticByAreaResponse_<ContainerAllocator>& v)
  {
    s << indent << "objects[]" << std::endl;
    for (size_t i = 0; i < v.objects.size(); ++i)
    {
      s << indent << "  objects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::hypermap_msgs::SemanticObject_<ContainerAllocator> >::stream(s, indent + "    ", v.objects[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HYPERMAP_MSGS_MESSAGE_GETSEMANTICBYAREARESPONSE_H