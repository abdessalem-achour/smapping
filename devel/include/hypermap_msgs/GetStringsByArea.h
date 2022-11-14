// Generated by gencpp from file hypermap_msgs/GetStringsByArea.msg
// DO NOT EDIT!


#ifndef HYPERMAP_MSGS_MESSAGE_GETSTRINGSBYAREA_H
#define HYPERMAP_MSGS_MESSAGE_GETSTRINGSBYAREA_H

#include <ros/service_traits.h>


#include <hypermap_msgs/GetStringsByAreaRequest.h>
#include <hypermap_msgs/GetStringsByAreaResponse.h>


namespace hypermap_msgs
{

struct GetStringsByArea
{

typedef GetStringsByAreaRequest Request;
typedef GetStringsByAreaResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetStringsByArea
} // namespace hypermap_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hypermap_msgs::GetStringsByArea > {
  static const char* value()
  {
    return "26b97ae5a059a35d222e8b1128c7abd4";
  }

  static const char* value(const ::hypermap_msgs::GetStringsByArea&) { return value(); }
};

template<>
struct DataType< ::hypermap_msgs::GetStringsByArea > {
  static const char* value()
  {
    return "hypermap_msgs/GetStringsByArea";
  }

  static const char* value(const ::hypermap_msgs::GetStringsByArea&) { return value(); }
};


// service_traits::MD5Sum< ::hypermap_msgs::GetStringsByAreaRequest> should match
// service_traits::MD5Sum< ::hypermap_msgs::GetStringsByArea >
template<>
struct MD5Sum< ::hypermap_msgs::GetStringsByAreaRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hypermap_msgs::GetStringsByArea >::value();
  }
  static const char* value(const ::hypermap_msgs::GetStringsByAreaRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hypermap_msgs::GetStringsByAreaRequest> should match
// service_traits::DataType< ::hypermap_msgs::GetStringsByArea >
template<>
struct DataType< ::hypermap_msgs::GetStringsByAreaRequest>
{
  static const char* value()
  {
    return DataType< ::hypermap_msgs::GetStringsByArea >::value();
  }
  static const char* value(const ::hypermap_msgs::GetStringsByAreaRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hypermap_msgs::GetStringsByAreaResponse> should match
// service_traits::MD5Sum< ::hypermap_msgs::GetStringsByArea >
template<>
struct MD5Sum< ::hypermap_msgs::GetStringsByAreaResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hypermap_msgs::GetStringsByArea >::value();
  }
  static const char* value(const ::hypermap_msgs::GetStringsByAreaResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hypermap_msgs::GetStringsByAreaResponse> should match
// service_traits::DataType< ::hypermap_msgs::GetStringsByArea >
template<>
struct DataType< ::hypermap_msgs::GetStringsByAreaResponse>
{
  static const char* value()
  {
    return DataType< ::hypermap_msgs::GetStringsByArea >::value();
  }
  static const char* value(const ::hypermap_msgs::GetStringsByAreaResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HYPERMAP_MSGS_MESSAGE_GETSTRINGSBYAREA_H
