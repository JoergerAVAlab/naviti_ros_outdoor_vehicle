// Generated by gencpp from file ars_40X/MaxDistance.msg
// DO NOT EDIT!


#ifndef ARS_40X_MESSAGE_MAXDISTANCE_H
#define ARS_40X_MESSAGE_MAXDISTANCE_H

#include <ros/service_traits.h>


#include <ars_40X/MaxDistanceRequest.h>
#include <ars_40X/MaxDistanceResponse.h>


namespace ars_40X
{

struct MaxDistance
{

typedef MaxDistanceRequest Request;
typedef MaxDistanceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MaxDistance
} // namespace ars_40X


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ars_40X::MaxDistance > {
  static const char* value()
  {
    return "721f4b602fafb1f59d20d474bb2d42da";
  }

  static const char* value(const ::ars_40X::MaxDistance&) { return value(); }
};

template<>
struct DataType< ::ars_40X::MaxDistance > {
  static const char* value()
  {
    return "ars_40X/MaxDistance";
  }

  static const char* value(const ::ars_40X::MaxDistance&) { return value(); }
};


// service_traits::MD5Sum< ::ars_40X::MaxDistanceRequest> should match
// service_traits::MD5Sum< ::ars_40X::MaxDistance >
template<>
struct MD5Sum< ::ars_40X::MaxDistanceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ars_40X::MaxDistance >::value();
  }
  static const char* value(const ::ars_40X::MaxDistanceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ars_40X::MaxDistanceRequest> should match
// service_traits::DataType< ::ars_40X::MaxDistance >
template<>
struct DataType< ::ars_40X::MaxDistanceRequest>
{
  static const char* value()
  {
    return DataType< ::ars_40X::MaxDistance >::value();
  }
  static const char* value(const ::ars_40X::MaxDistanceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ars_40X::MaxDistanceResponse> should match
// service_traits::MD5Sum< ::ars_40X::MaxDistance >
template<>
struct MD5Sum< ::ars_40X::MaxDistanceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ars_40X::MaxDistance >::value();
  }
  static const char* value(const ::ars_40X::MaxDistanceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ars_40X::MaxDistanceResponse> should match
// service_traits::DataType< ::ars_40X::MaxDistance >
template<>
struct DataType< ::ars_40X::MaxDistanceResponse>
{
  static const char* value()
  {
    return DataType< ::ars_40X::MaxDistance >::value();
  }
  static const char* value(const ::ars_40X::MaxDistanceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ARS_40X_MESSAGE_MAXDISTANCE_H