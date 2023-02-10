// Generated by gencpp from file novatel_pkg/CommonShortHeader.msg
// DO NOT EDIT!


#ifndef NOVATEL_PKG_MESSAGE_COMMONSHORTHEADER_H
#define NOVATEL_PKG_MESSAGE_COMMONSHORTHEADER_H


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
struct CommonShortHeader_
{
  typedef CommonShortHeader_<ContainerAllocator> Type;

  CommonShortHeader_()
    : length(0)
    , id(0)
    , gnss_week(0)
    , gnss_mili(0)  {
    }
  CommonShortHeader_(const ContainerAllocator& _alloc)
    : length(0)
    , id(0)
    , gnss_week(0)
    , gnss_mili(0)  {
  (void)_alloc;
    }



   typedef uint8_t _length_type;
  _length_type length;

   typedef uint16_t _id_type;
  _id_type id;

   typedef uint16_t _gnss_week_type;
  _gnss_week_type gnss_week;

   typedef int32_t _gnss_mili_type;
  _gnss_mili_type gnss_mili;





  typedef boost::shared_ptr< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> const> ConstPtr;

}; // struct CommonShortHeader_

typedef ::novatel_pkg::CommonShortHeader_<std::allocator<void> > CommonShortHeader;

typedef boost::shared_ptr< ::novatel_pkg::CommonShortHeader > CommonShortHeaderPtr;
typedef boost::shared_ptr< ::novatel_pkg::CommonShortHeader const> CommonShortHeaderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::novatel_pkg::CommonShortHeader_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::novatel_pkg::CommonShortHeader_<ContainerAllocator1> & lhs, const ::novatel_pkg::CommonShortHeader_<ContainerAllocator2> & rhs)
{
  return lhs.length == rhs.length &&
    lhs.id == rhs.id &&
    lhs.gnss_week == rhs.gnss_week &&
    lhs.gnss_mili == rhs.gnss_mili;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::novatel_pkg::CommonShortHeader_<ContainerAllocator1> & lhs, const ::novatel_pkg::CommonShortHeader_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace novatel_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "24bd93da6a66ad1feeb30cf4cc10f233";
  }

  static const char* value(const ::novatel_pkg::CommonShortHeader_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x24bd93da6a66ad1fULL;
  static const uint64_t static_value2 = 0xeeb30cf4cc10f233ULL;
};

template<class ContainerAllocator>
struct DataType< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "novatel_pkg/CommonShortHeader";
  }

  static const char* value(const ::novatel_pkg::CommonShortHeader_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Short Binary Header NovAtel OEM7\n"
"# Author: Brandon Medellin\n"
"# Date: 2/1/2023\n"
"\n"
"# Message Length not including header (12 bytes) or CRC (4 byte)\n"
"uint8 length\n"
"\n"
"# Message ID of the log being output.\n"
"uint16 id\n"
"\n"
"# GNSS week number\n"
"uint16 gnss_week\n"
"\n"
"# GNSS Miliseconds from beginning of GNSS week\n"
"int32 gnss_mili\n"
;
  }

  static const char* value(const ::novatel_pkg::CommonShortHeader_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.length);
      stream.next(m.id);
      stream.next(m.gnss_week);
      stream.next(m.gnss_mili);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CommonShortHeader_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::novatel_pkg::CommonShortHeader_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::novatel_pkg::CommonShortHeader_<ContainerAllocator>& v)
  {
    s << indent << "length: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.length);
    s << indent << "id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.id);
    s << indent << "gnss_week: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.gnss_week);
    s << indent << "gnss_mili: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gnss_mili);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NOVATEL_PKG_MESSAGE_COMMONSHORTHEADER_H