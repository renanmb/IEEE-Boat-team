# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roboboat/BoatHealth.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class BoatHealth(genpy.Message):
  _md5sum = "99250fac6bf2b1f4a6ceeb24cfdc8ed9"
  _type = "roboboat/BoatHealth"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header

# Left Motor Controller Temperature
float32 temp_l

# Right Motor Controller Temperature
float32 temp_r

# Primary Battery Voltage
float32 batt_p

# Left Motor Battery Voltage
float32 batt_l

# Right Motor Battery Voltage
float32 batt_r

# Left Hull Water Sensor
bool    water_l

# Main Hull Water Sensor
bool    water_m

# Right Hull Water Sensor
bool    water_r


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

"""
  __slots__ = ['header','temp_l','temp_r','batt_p','batt_l','batt_r','water_l','water_m','water_r']
  _slot_types = ['std_msgs/Header','float32','float32','float32','float32','float32','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,temp_l,temp_r,batt_p,batt_l,batt_r,water_l,water_m,water_r

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BoatHealth, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.temp_l is None:
        self.temp_l = 0.
      if self.temp_r is None:
        self.temp_r = 0.
      if self.batt_p is None:
        self.batt_p = 0.
      if self.batt_l is None:
        self.batt_l = 0.
      if self.batt_r is None:
        self.batt_r = 0.
      if self.water_l is None:
        self.water_l = False
      if self.water_m is None:
        self.water_m = False
      if self.water_r is None:
        self.water_r = False
    else:
      self.header = std_msgs.msg.Header()
      self.temp_l = 0.
      self.temp_r = 0.
      self.batt_p = 0.
      self.batt_l = 0.
      self.batt_r = 0.
      self.water_l = False
      self.water_m = False
      self.water_r = False

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
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_5f3B.pack(_x.temp_l, _x.temp_r, _x.batt_p, _x.batt_l, _x.batt_r, _x.water_l, _x.water_m, _x.water_r))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 23
      (_x.temp_l, _x.temp_r, _x.batt_p, _x.batt_l, _x.batt_r, _x.water_l, _x.water_m, _x.water_r,) = _struct_5f3B.unpack(str[start:end])
      self.water_l = bool(self.water_l)
      self.water_m = bool(self.water_m)
      self.water_r = bool(self.water_r)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_5f3B.pack(_x.temp_l, _x.temp_r, _x.batt_p, _x.batt_l, _x.batt_r, _x.water_l, _x.water_m, _x.water_r))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 23
      (_x.temp_l, _x.temp_r, _x.batt_p, _x.batt_l, _x.batt_r, _x.water_l, _x.water_m, _x.water_r,) = _struct_5f3B.unpack(str[start:end])
      self.water_l = bool(self.water_l)
      self.water_m = bool(self.water_m)
      self.water_r = bool(self.water_r)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_5f3B = struct.Struct("<5f3B")
