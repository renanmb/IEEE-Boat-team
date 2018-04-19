; Auto-generated. Do not edit!


(cl:in-package roboboat-msg)


;//! \htmlinclude MotorControl.msg.html

(cl:defclass <MotorControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_motor
    :reader left_motor
    :initarg :left_motor
    :type cl:fixnum
    :initform 0)
   (right_motor
    :reader right_motor
    :initarg :right_motor
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MotorControl (<MotorControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboboat-msg:<MotorControl> is deprecated: use roboboat-msg:MotorControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:header-val is deprecated.  Use roboboat-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_motor-val :lambda-list '(m))
(cl:defmethod left_motor-val ((m <MotorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:left_motor-val is deprecated.  Use roboboat-msg:left_motor instead.")
  (left_motor m))

(cl:ensure-generic-function 'right_motor-val :lambda-list '(m))
(cl:defmethod right_motor-val ((m <MotorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:right_motor-val is deprecated.  Use roboboat-msg:right_motor instead.")
  (right_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorControl>) ostream)
  "Serializes a message object of type '<MotorControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_motor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left_motor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_motor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_motor)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorControl>) istream)
  "Deserializes a message object of type '<MotorControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_motor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'left_motor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_motor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'right_motor)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorControl>)))
  "Returns string type for a message object of type '<MotorControl>"
  "roboboat/MotorControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorControl)))
  "Returns string type for a message object of type 'MotorControl"
  "roboboat/MotorControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorControl>)))
  "Returns md5sum for a message object of type '<MotorControl>"
  "4ce58821abb7342cd0cee3d9424cf458")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorControl)))
  "Returns md5sum for a message object of type 'MotorControl"
  "4ce58821abb7342cd0cee3d9424cf458")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorControl>)))
  "Returns full string definition for message of type '<MotorControl>"
  (cl:format cl:nil "Header header~%~%# Left Motor Control Pulse Width~%uint16 left_motor~%~%# Right Motor Control Pulse Width~%uint16 right_motor~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorControl)))
  "Returns full string definition for message of type 'MotorControl"
  (cl:format cl:nil "Header header~%~%# Left Motor Control Pulse Width~%uint16 left_motor~%~%# Right Motor Control Pulse Width~%uint16 right_motor~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorControl>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorControl
    (cl:cons ':header (header msg))
    (cl:cons ':left_motor (left_motor msg))
    (cl:cons ':right_motor (right_motor msg))
))
