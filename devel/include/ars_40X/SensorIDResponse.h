// Generated by gencpp from file ars_40X/SensorIDResponse.msg
// DO NOT EDIT!


#ifndef ARS_40X_MESSAGE_SENSORIDRESPONSE_H
#define ARS_40X_MESSAGE_SENSORIDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ars_40X
{
template <class ContainerAllocator>
struct SensorIDResponse_
{
  typedef SensorIDResponse_<ContainerAllocator> Type;

  SensorIDResponse_()
    {
    }
  SensorIDResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::ars_40X::SensorIDResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ars_40X::SensorIDResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SensorIDResponse_

typedef ::ars_40X::SensorIDResponse_<std::allocator<void> > SensorIDResponse;

typedef boost::shared_ptr< ::ars_40X::SensorIDResponse > SensorIDResponsePtr;
typedef boost::shared_ptr< ::ars_40X::SensorIDResponse const> SensorIDResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ars_40X::SensorIDResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ars_40X::SensorIDResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace ars_40X

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ars_40X::SensorIDResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ars_40X::SensorIDResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ars_40X::SensorIDResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ars_40X::SensorIDResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ars_40X::SensorIDResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ars_40X::SensorIDResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ars_40X::SensorIDResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ars_40X::SensorIDResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::ars_40X::SensorIDResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ars_40X/SensorIDResponse";
  }

  static const char* value(const ::ars_40X::SensorIDResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ars_40X::SensorIDResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::ars_40X::SensorIDResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ars_40X::SensorIDResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SensorIDResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ars_40X::SensorIDResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ars_40X::SensorIDResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ARS_40X_MESSAGE_SENSORIDRESPONSE_H
