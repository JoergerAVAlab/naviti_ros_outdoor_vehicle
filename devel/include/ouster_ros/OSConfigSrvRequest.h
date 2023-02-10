// Generated by gencpp from file ouster_ros/OSConfigSrvRequest.msg
// DO NOT EDIT!


#ifndef OUSTER_ROS_MESSAGE_OSCONFIGSRVREQUEST_H
#define OUSTER_ROS_MESSAGE_OSCONFIGSRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ouster_ros
{
template <class ContainerAllocator>
struct OSConfigSrvRequest_
{
  typedef OSConfigSrvRequest_<ContainerAllocator> Type;

  OSConfigSrvRequest_()
    {
    }
  OSConfigSrvRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct OSConfigSrvRequest_

typedef ::ouster_ros::OSConfigSrvRequest_<std::allocator<void> > OSConfigSrvRequest;

typedef boost::shared_ptr< ::ouster_ros::OSConfigSrvRequest > OSConfigSrvRequestPtr;
typedef boost::shared_ptr< ::ouster_ros::OSConfigSrvRequest const> OSConfigSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace ouster_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ouster_ros/OSConfigSrvRequest";
  }

  static const char* value(const ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OSConfigSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ouster_ros::OSConfigSrvRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // OUSTER_ROS_MESSAGE_OSCONFIGSRVREQUEST_H
