// Generated by gencpp from file ars_40X/MaxDistanceRequest.msg
// DO NOT EDIT!


#ifndef ARS_40X_MESSAGE_MAXDISTANCEREQUEST_H
#define ARS_40X_MESSAGE_MAXDISTANCEREQUEST_H


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
struct MaxDistanceRequest_
{
  typedef MaxDistanceRequest_<ContainerAllocator> Type;

  MaxDistanceRequest_()
    : max_distance(0)  {
    }
  MaxDistanceRequest_(const ContainerAllocator& _alloc)
    : max_distance(0)  {
  (void)_alloc;
    }



   typedef uint8_t _max_distance_type;
  _max_distance_type max_distance;





  typedef boost::shared_ptr< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MaxDistanceRequest_

typedef ::ars_40X::MaxDistanceRequest_<std::allocator<void> > MaxDistanceRequest;

typedef boost::shared_ptr< ::ars_40X::MaxDistanceRequest > MaxDistanceRequestPtr;
typedef boost::shared_ptr< ::ars_40X::MaxDistanceRequest const> MaxDistanceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ars_40X::MaxDistanceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ars_40X::MaxDistanceRequest_<ContainerAllocator1> & lhs, const ::ars_40X::MaxDistanceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.max_distance == rhs.max_distance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ars_40X::MaxDistanceRequest_<ContainerAllocator1> & lhs, const ::ars_40X::MaxDistanceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ars_40X

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "721f4b602fafb1f59d20d474bb2d42da";
  }

  static const char* value(const ::ars_40X::MaxDistanceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x721f4b602fafb1f5ULL;
  static const uint64_t static_value2 = 0x9d20d474bb2d42daULL;
};

template<class ContainerAllocator>
struct DataType< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ars_40X/MaxDistanceRequest";
  }

  static const char* value(const ::ars_40X::MaxDistanceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Maximum distance of far scan (near scan maximum\n"
"# distance is set proportionally to half of the far scan).\n"
"# The maximum distance will also change the range\n"
"# resolution proportionally. For example, 200 m\n"
"# maximum distance will lead to:\n"
"# - far scan 200 m with 1.79 m range resolution,\n"
"# - near scan 100 m with 0.42 m range resolution.\n"
"\n"
"# Standard Range: 150 – 190 m\n"
"# Extended Range: 90 – 1000 m\n"
"\n"
"uint8 max_distance\n"
;
  }

  static const char* value(const ::ars_40X::MaxDistanceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.max_distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MaxDistanceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ars_40X::MaxDistanceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ars_40X::MaxDistanceRequest_<ContainerAllocator>& v)
  {
    s << indent << "max_distance: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.max_distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARS_40X_MESSAGE_MAXDISTANCEREQUEST_H
