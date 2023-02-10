// Generated by gencpp from file novatel_pkg/CommonLongHeader.msg
// DO NOT EDIT!


#ifndef NOVATEL_PKG_MESSAGE_COMMONLONGHEADER_H
#define NOVATEL_PKG_MESSAGE_COMMONLONGHEADER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace novatel_pkg
{
template <class ContainerAllocator>
struct CommonLongHeader_
{
  typedef CommonLongHeader_<ContainerAllocator> Type;

  CommonLongHeader_()
    : head_length(0)
    , id(0)
    , msg_type(0)
    , port_addr(0)
    , length(0)
    , sequence(0)
    , idle_time(0)
    , time_status(0)
    , gnss_week(0)
    , gnss_mili(0)
    , reserved(0)
    , software_version(0)  {
    }
  CommonLongHeader_(const ContainerAllocator& _alloc)
    : head_length(0)
    , id(0)
    , msg_type(0)
    , port_addr(0)
    , length(0)
    , sequence(0)
    , idle_time(0)
    , time_status(0)
    , gnss_week(0)
    , gnss_mili(0)
    , reserved(0)
    , software_version(0)  {
  (void)_alloc;
    }



   typedef uint8_t _head_length_type;
  _head_length_type head_length;

   typedef uint16_t _id_type;
  _id_type id;

   typedef uint8_t _msg_type_type;
  _msg_type_type msg_type;

   typedef uint8_t _port_addr_type;
  _port_addr_type port_addr;

   typedef uint16_t _length_type;
  _length_type length;

   typedef uint16_t _sequence_type;
  _sequence_type sequence;

   typedef uint8_t _idle_time_type;
  _idle_time_type idle_time;

   typedef uint8_t _time_status_type;
  _time_status_type time_status;

   typedef uint16_t _gnss_week_type;
  _gnss_week_type gnss_week;

   typedef int32_t _gnss_mili_type;
  _gnss_mili_type gnss_mili;

   typedef uint16_t _reserved_type;
  _reserved_type reserved;

   typedef uint16_t _software_version_type;
  _software_version_type software_version;





  typedef boost::shared_ptr< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> const> ConstPtr;

}; // struct CommonLongHeader_

typedef ::novatel_pkg::CommonLongHeader_<std::allocator<void> > CommonLongHeader;

typedef boost::shared_ptr< ::novatel_pkg::CommonLongHeader > CommonLongHeaderPtr;
typedef boost::shared_ptr< ::novatel_pkg::CommonLongHeader const> CommonLongHeaderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::novatel_pkg::CommonLongHeader_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::novatel_pkg::CommonLongHeader_<ContainerAllocator1> & lhs, const ::novatel_pkg::CommonLongHeader_<ContainerAllocator2> & rhs)
{
  return lhs.head_length == rhs.head_length &&
    lhs.id == rhs.id &&
    lhs.msg_type == rhs.msg_type &&
    lhs.port_addr == rhs.port_addr &&
    lhs.length == rhs.length &&
    lhs.sequence == rhs.sequence &&
    lhs.idle_time == rhs.idle_time &&
    lhs.time_status == rhs.time_status &&
    lhs.gnss_week == rhs.gnss_week &&
    lhs.gnss_mili == rhs.gnss_mili &&
    lhs.reserved == rhs.reserved &&
    lhs.software_version == rhs.software_version;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::novatel_pkg::CommonLongHeader_<ContainerAllocator1> & lhs, const ::novatel_pkg::CommonLongHeader_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace novatel_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3f5766af824e367c70c99b070c50ec08";
  }

  static const char* value(const ::novatel_pkg::CommonLongHeader_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3f5766af824e367cULL;
  static const uint64_t static_value2 = 0x70c99b070c50ec08ULL;
};

template<class ContainerAllocator>
struct DataType< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "novatel_pkg/CommonLongHeader";
  }

  static const char* value(const ::novatel_pkg::CommonLongHeader_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Long Binary Header NovAtel\n"
"# Author: Brandon Medellin\n"
"# Date: 2/1/2023\n"
"\n"
"# Length of the header\n"
"uint8 head_length\n"
"\n"
"# Message ID of the log being output\n"
"uint16 id\n"
"\n"
"# Measurement source, format, response bit.\n"
"uint8 msg_type\n"
"\n"
"# Port address\n"
"uint8 port_addr\n"
"\n"
"# Message length not including header (25 bytes) nor CRC (4 bytes)\n"
"uint16 length\n"
"\n"
"# Used for multiple related logs. It is a number that counts down from N-1 to 0 where N is the number of related logs ...\n"
"uint16 sequence\n"
"\n"
"# Time the processor is idle, calculated once per second - more in documentation\n"
"uint8 idle_time\n"
"\n"
"# Indicates the quality of the gps reference time\n"
"uint8 time_status\n"
"\n"
"# GNSS week number\n"
"uint16 gnss_week\n"
"\n"
"# GNSS Miliseconds from beginning of GNSS week\n"
"int32 gnss_mili\n"
"\n"
"# Reserved for internal use\n"
"uint16 reserved\n"
"\n"
"# A value (0-65535) representing the receiver software build number\n"
"uint16 software_version\n"
"\n"
;
  }

  static const char* value(const ::novatel_pkg::CommonLongHeader_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.head_length);
      stream.next(m.id);
      stream.next(m.msg_type);
      stream.next(m.port_addr);
      stream.next(m.length);
      stream.next(m.sequence);
      stream.next(m.idle_time);
      stream.next(m.time_status);
      stream.next(m.gnss_week);
      stream.next(m.gnss_mili);
      stream.next(m.reserved);
      stream.next(m.software_version);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CommonLongHeader_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::novatel_pkg::CommonLongHeader_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::novatel_pkg::CommonLongHeader_<ContainerAllocator>& v)
  {
    s << indent << "head_length: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.head_length);
    s << indent << "id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.id);
    s << indent << "msg_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.msg_type);
    s << indent << "port_addr: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.port_addr);
    s << indent << "length: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.length);
    s << indent << "sequence: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.sequence);
    s << indent << "idle_time: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.idle_time);
    s << indent << "time_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.time_status);
    s << indent << "gnss_week: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.gnss_week);
    s << indent << "gnss_mili: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gnss_mili);
    s << indent << "reserved: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.reserved);
    s << indent << "software_version: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.software_version);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NOVATEL_PKG_MESSAGE_COMMONLONGHEADER_H
