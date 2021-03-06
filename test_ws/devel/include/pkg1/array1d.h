// Generated by gencpp from file pkg1/array1d.msg
// DO NOT EDIT!


#ifndef PKG1_MESSAGE_ARRAY1D_H
#define PKG1_MESSAGE_ARRAY1D_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pkg1
{
template <class ContainerAllocator>
struct array1d_
{
  typedef array1d_<ContainerAllocator> Type;

  array1d_()
    : a()  {
    }
  array1d_(const ContainerAllocator& _alloc)
    : a(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _a_type;
  _a_type a;





  typedef boost::shared_ptr< ::pkg1::array1d_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg1::array1d_<ContainerAllocator> const> ConstPtr;

}; // struct array1d_

typedef ::pkg1::array1d_<std::allocator<void> > array1d;

typedef boost::shared_ptr< ::pkg1::array1d > array1dPtr;
typedef boost::shared_ptr< ::pkg1::array1d const> array1dConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg1::array1d_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg1::array1d_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pkg1::array1d_<ContainerAllocator1> & lhs, const ::pkg1::array1d_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pkg1::array1d_<ContainerAllocator1> & lhs, const ::pkg1::array1d_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pkg1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pkg1::array1d_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg1::array1d_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg1::array1d_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg1::array1d_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg1::array1d_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg1::array1d_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg1::array1d_<ContainerAllocator> >
{
  static const char* value()
  {
    return "46c26f3e548098357cdcdd12adbb6b4c";
  }

  static const char* value(const ::pkg1::array1d_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x46c26f3e54809835ULL;
  static const uint64_t static_value2 = 0x7cdcdd12adbb6b4cULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg1::array1d_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg1/array1d";
  }

  static const char* value(const ::pkg1::array1d_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg1::array1d_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64[] a\n"
;
  }

  static const char* value(const ::pkg1::array1d_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg1::array1d_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct array1d_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg1::array1d_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg1::array1d_<ContainerAllocator>& v)
  {
    s << indent << "a[]" << std::endl;
    for (size_t i = 0; i < v.a.size(); ++i)
    {
      s << indent << "  a[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.a[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG1_MESSAGE_ARRAY1D_H
