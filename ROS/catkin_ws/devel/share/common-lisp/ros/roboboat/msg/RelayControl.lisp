; Auto-generated. Do not edit!


(cl:in-package roboboat-msg)


;//! \htmlinclude RelayControl.msg.html

(cl:defclass <RelayControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motor
    :reader motor
    :initarg :motor
    :type cl:boolean
    :initform cl:nil)
   (pump
    :reader pump
    :initarg :pump
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RelayControl (<RelayControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboboat-msg:<RelayControl> is deprecated: use roboboat-msg:RelayControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RelayControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:header-val is deprecated.  Use roboboat-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <RelayControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:motor-val is deprecated.  Use roboboat-msg:motor instead.")
  (motor m))

(cl:ensure-generic-function 'pump-val :lambda-list '(m))
(cl:defmethod pump-val ((m <RelayControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:pump-val is deprecated.  Use roboboat-msg:pump instead.")
  (pump m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayControl>) ostream)
  "Serializes a message object of type '<RelayControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pump) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayControl>) istream)
  "Deserializes a message object of type '<RelayControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'motor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pump) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayControl>)))
  "Returns string type for a message object of type '<RelayControl>"
  "roboboat/RelayControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayControl)))
  "Returns string type for a message object of type 'RelayControl"
  "roboboat/RelayControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayControl>)))
  "Returns md5sum for a message object of type '<RelayControl>"
  "d861d440ba0170c43fedaf3385911c0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayControl)))
  "Returns md5sum for a message object of type 'RelayControl"
  "d861d440ba0170c43fedaf3385911c0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayControl>)))
  "Returns full string definition for message of type '<RelayControl>"
  (cl:format cl:nil "Header header~%~%# Motor Power Relays~%bool motor~%~%# Pump Power Relays~%bool pump~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayControl)))
  "Returns full string definition for message of type 'RelayControl"
  (cl:format cl:nil "Header header~%~%# Motor Power Relays~%bool motor~%~%# Pump Power Relays~%bool pump~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayControl>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayControl
    (cl:cons ':header (header msg))
    (cl:cons ':motor (motor msg))
    (cl:cons ':pump (pump msg))
))
