// Generated by gencpp from file data_capture/ImageSaveResponse.msg
// DO NOT EDIT!


#ifndef DATA_CAPTURE_MESSAGE_IMAGESAVERESPONSE_H
#define DATA_CAPTURE_MESSAGE_IMAGESAVERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace data_capture
{
template <class ContainerAllocator>
struct ImageSaveResponse_
{
  typedef ImageSaveResponse_<ContainerAllocator> Type;

  ImageSaveResponse_()
    : success(0)
    , message()  {
    }
  ImageSaveResponse_(const ContainerAllocator& _alloc)
    : success(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::data_capture::ImageSaveResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::data_capture::ImageSaveResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ImageSaveResponse_

typedef ::data_capture::ImageSaveResponse_<std::allocator<void> > ImageSaveResponse;

typedef boost::shared_ptr< ::data_capture::ImageSaveResponse > ImageSaveResponsePtr;
typedef boost::shared_ptr< ::data_capture::ImageSaveResponse const> ImageSaveResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::data_capture::ImageSaveResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::data_capture::ImageSaveResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace data_capture

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': False, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::data_capture::ImageSaveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::data_capture::ImageSaveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::data_capture::ImageSaveResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::data_capture::ImageSaveResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::data_capture::ImageSaveResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::data_capture::ImageSaveResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::data_capture::ImageSaveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "657ce69af7a318d40580c01237bc6d1f";
  }

  static const char* value(const ::data_capture::ImageSaveResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x657ce69af7a318d4ULL;
  static const uint64_t static_value2 = 0x0580c01237bc6d1fULL;
};

template<class ContainerAllocator>
struct DataType< ::data_capture::ImageSaveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "data_capture/ImageSaveResponse";
  }

  static const char* value(const ::data_capture::ImageSaveResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::data_capture::ImageSaveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 success\n\
string message\n\
\n\
";
  }

  static const char* value(const ::data_capture::ImageSaveResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::data_capture::ImageSaveResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImageSaveResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::data_capture::ImageSaveResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::data_capture::ImageSaveResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DATA_CAPTURE_MESSAGE_IMAGESAVERESPONSE_H
