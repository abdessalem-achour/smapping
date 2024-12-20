// Generated by gencpp from file hypermap_msgs/GetLocationsByInt.msg
// DO NOT EDIT!


#ifndef HYPERMAP_MSGS_MESSAGE_GETLOCATIONSBYINT_H
#define HYPERMAP_MSGS_MESSAGE_GETLOCATIONSBYINT_H

#include <ros/service_traits.h>


#include <hypermap_msgs/GetLocationsByIntRequest.h>
#include <hypermap_msgs/GetLocationsByIntResponse.h>


namespace hypermap_msgs
{

struct GetLocationsByInt
{

typedef GetLocationsByIntRequest Request;
typedef GetLocationsByIntResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetLocationsByInt
} // namespace hypermap_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hypermap_msgs::GetLocationsByInt > {
  static const char* value()
  {
    return "b49980ebdc2170afb007a5755d50a9cc";
  }

  static const char* value(const ::hypermap_msgs::GetLocationsByInt&) { return value(); }
};

template<>
struct DataType< ::hypermap_msgs::GetLocationsByInt > {
  static const char* value()
  {
    return "hypermap_msgs/GetLocationsByInt";
  }

  static const char* value(const ::hypermap_msgs::GetLocationsByInt&) { return value(); }
};


// service_traits::MD5Sum< ::hypermap_msgs::GetLocationsByIntRequest> should match
// service_traits::MD5Sum< ::hypermap_msgs::GetLocationsByInt >
template<>
struct MD5Sum< ::hypermap_msgs::GetLocationsByIntRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hypermap_msgs::GetLocationsByInt >::value();
  }
  static const char* value(const ::hypermap_msgs::GetLocationsByIntRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hypermap_msgs::GetLocationsByIntRequest> should match
// service_traits::DataType< ::hypermap_msgs::GetLocationsByInt >
template<>
struct DataType< ::hypermap_msgs::GetLocationsByIntRequest>
{
  static const char* value()
  {
    return DataType< ::hypermap_msgs::GetLocationsByInt >::value();
  }
  static const char* value(const ::hypermap_msgs::GetLocationsByIntRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hypermap_msgs::GetLocationsByIntResponse> should match
// service_traits::MD5Sum< ::hypermap_msgs::GetLocationsByInt >
template<>
struct MD5Sum< ::hypermap_msgs::GetLocationsByIntResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hypermap_msgs::GetLocationsByInt >::value();
  }
  static const char* value(const ::hypermap_msgs::GetLocationsByIntResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hypermap_msgs::GetLocationsByIntResponse> should match
// service_traits::DataType< ::hypermap_msgs::GetLocationsByInt >
template<>
struct DataType< ::hypermap_msgs::GetLocationsByIntResponse>
{
  static const char* value()
  {
    return DataType< ::hypermap_msgs::GetLocationsByInt >::value();
  }
  static const char* value(const ::hypermap_msgs::GetLocationsByIntResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HYPERMAP_MSGS_MESSAGE_GETLOCATIONSBYINT_H
