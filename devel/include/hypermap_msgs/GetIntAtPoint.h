// Generated by gencpp from file hypermap_msgs/GetIntAtPoint.msg
// DO NOT EDIT!


#ifndef HYPERMAP_MSGS_MESSAGE_GETINTATPOINT_H
#define HYPERMAP_MSGS_MESSAGE_GETINTATPOINT_H

#include <ros/service_traits.h>


#include <hypermap_msgs/GetIntAtPointRequest.h>
#include <hypermap_msgs/GetIntAtPointResponse.h>


namespace hypermap_msgs
{

struct GetIntAtPoint
{

typedef GetIntAtPointRequest Request;
typedef GetIntAtPointResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetIntAtPoint
} // namespace hypermap_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hypermap_msgs::GetIntAtPoint > {
  static const char* value()
  {
    return "5b82ad85c0c95a55d71d18e8d12c4b30";
  }

  static const char* value(const ::hypermap_msgs::GetIntAtPoint&) { return value(); }
};

template<>
struct DataType< ::hypermap_msgs::GetIntAtPoint > {
  static const char* value()
  {
    return "hypermap_msgs/GetIntAtPoint";
  }

  static const char* value(const ::hypermap_msgs::GetIntAtPoint&) { return value(); }
};


// service_traits::MD5Sum< ::hypermap_msgs::GetIntAtPointRequest> should match
// service_traits::MD5Sum< ::hypermap_msgs::GetIntAtPoint >
template<>
struct MD5Sum< ::hypermap_msgs::GetIntAtPointRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hypermap_msgs::GetIntAtPoint >::value();
  }
  static const char* value(const ::hypermap_msgs::GetIntAtPointRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hypermap_msgs::GetIntAtPointRequest> should match
// service_traits::DataType< ::hypermap_msgs::GetIntAtPoint >
template<>
struct DataType< ::hypermap_msgs::GetIntAtPointRequest>
{
  static const char* value()
  {
    return DataType< ::hypermap_msgs::GetIntAtPoint >::value();
  }
  static const char* value(const ::hypermap_msgs::GetIntAtPointRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hypermap_msgs::GetIntAtPointResponse> should match
// service_traits::MD5Sum< ::hypermap_msgs::GetIntAtPoint >
template<>
struct MD5Sum< ::hypermap_msgs::GetIntAtPointResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hypermap_msgs::GetIntAtPoint >::value();
  }
  static const char* value(const ::hypermap_msgs::GetIntAtPointResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hypermap_msgs::GetIntAtPointResponse> should match
// service_traits::DataType< ::hypermap_msgs::GetIntAtPoint >
template<>
struct DataType< ::hypermap_msgs::GetIntAtPointResponse>
{
  static const char* value()
  {
    return DataType< ::hypermap_msgs::GetIntAtPoint >::value();
  }
  static const char* value(const ::hypermap_msgs::GetIntAtPointResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HYPERMAP_MSGS_MESSAGE_GETINTATPOINT_H
