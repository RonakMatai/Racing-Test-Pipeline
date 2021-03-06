# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pkg1/array2d.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import pkg1.msg

class array2d(genpy.Message):
  _md5sum = "514196907c24619763a39f051ec0299e"
  _type = "pkg1/array2d"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """array1d[] b

================================================================================
MSG: pkg1/array1d
int64[] a
"""
  __slots__ = ['b']
  _slot_types = ['pkg1/array1d[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       b

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(array2d, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.b is None:
        self.b = []
    else:
      self.b = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.b)
      buff.write(_struct_I.pack(length))
      for val1 in self.b:
        length = len(val1.a)
        buff.write(_struct_I.pack(length))
        pattern = '<%sq'%length
        buff.write(struct.Struct(pattern).pack(*val1.a))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.b is None:
        self.b = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.b = []
      for i in range(0, length):
        val1 = pkg1.msg.array1d()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sq'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.a = s.unpack(str[start:end])
        self.b.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.b)
      buff.write(_struct_I.pack(length))
      for val1 in self.b:
        length = len(val1.a)
        buff.write(_struct_I.pack(length))
        pattern = '<%sq'%length
        buff.write(val1.a.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.b is None:
        self.b = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.b = []
      for i in range(0, length):
        val1 = pkg1.msg.array1d()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sq'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.a = numpy.frombuffer(str[start:end], dtype=numpy.int64, count=length)
        self.b.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
