; Auto-generated. Do not edit!


(cl:in-package roboboat-msg)


;//! \htmlinclude BoatHealth.msg.html

(cl:defclass <BoatHealth> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (temp_l
    :reader temp_l
    :initarg :temp_l
    :type cl:float
    :initform 0.0)
   (temp_r
    :reader temp_r
    :initarg :temp_r
    :type cl:float
    :initform 0.0)
   (batt_p
    :reader batt_p
    :initarg :batt_p
    :type cl:float
    :initform 0.0)
   (batt_l
    :reader batt_l
    :initarg :batt_l
    :type cl:float
    :initform 0.0)
   (batt_r
    :reader batt_r
    :initarg :batt_r
    :type cl:float
    :initform 0.0)
   (water_l
    :reader water_l
    :initarg :water_l
    :type cl:boolean
    :initform cl:nil)
   (water_m
    :reader water_m
    :initarg :water_m
    :type cl:boolean
    :initform cl:nil)
   (water_r
    :reader water_r
    :initarg :water_r
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BoatHealth (<BoatHealth>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoatHealth>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoatHealth)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboboat-msg:<BoatHealth> is deprecated: use roboboat-msg:BoatHealth instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BoatHealth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:header-val is deprecated.  Use roboboat-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'temp_l-val :lambda-list '(m))
(cl:defmethod temp_l-val ((m <BoatHealth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:temp_l-val is deprecated.  Use roboboat-msg:temp_l instead.")
  (temp_l m))

(cl:ensure-generic-function 'temp_r-val :lambda-list '(m))
(cl:defmethod temp_r-val ((m <BoatHealth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:temp_r-val is deprecated.  Use roboboat-msg:temp_r instead.")
  (temp_r m))

(cl:ensure-generic-function 'batt_p-val :lambda-list '(m))
(cl:defmethod batt_p-val ((m <BoatHealth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:batt_p-val is deprecated.  Use roboboat-msg:batt_p instead.")
  (batt_p m))

(cl:ensure-generic-function 'batt_l-val :lambda-list '(m))
(cl:defmethod batt_l-val ((m <BoatHealth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:batt_l-val is deprecated.  Use roboboat-msg:batt_l instead.")
  (batt_l m))

(cl:ensure-generic-function 'batt_r-val :lambda-list '(m))
(cl:defmethod batt_r-val ((m <BoatHealth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:batt_r-val is deprecated.  Use roboboat-msg:batt_r instead.")
  (batt_r m))

(cl:ensure-generic-function 'water_l-val :lambda-list '(m))
(cl:defmethod water_l-val ((m <BoatHealth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:water_l-val is deprecated.  Use roboboat-msg:water_l instead.")
  (water_l m))

(cl:ensure-generic-function 'water_m-val :lambda-list '(m))
(cl:defmethod water_m-val ((m <BoatHealth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:water_m-val is deprecated.  Use roboboat-msg:water_m instead.")
  (water_m m))

(cl:ensure-generic-function 'water_r-val :lambda-list '(m))
(cl:defmethod water_r-val ((m <BoatHealth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboboat-msg:water_r-val is deprecated.  Use roboboat-msg:water_r instead.")
  (water_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoatHealth>) ostream)
  "Serializes a message object of type '<BoatHealth>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batt_p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batt_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'batt_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'water_l) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'water_m) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'water_r) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoatHealth>) istream)
  "Deserializes a message object of type '<BoatHealth>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batt_p) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batt_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'batt_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'water_l) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'water_m) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'water_r) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoatHealth>)))
  "Returns string type for a message object of type '<BoatHealth>"
  "roboboat/BoatHealth")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoatHealth)))
  "Returns string type for a message object of type 'BoatHealth"
  "roboboat/BoatHealth")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoatHealth>)))
  "Returns md5sum for a message object of type '<BoatHealth>"
  "99250fac6bf2b1f4a6ceeb24cfdc8ed9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoatHealth)))
  "Returns md5sum for a message object of type 'BoatHealth"
  "99250fac6bf2b1f4a6ceeb24cfdc8ed9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoatHealth>)))
  "Returns full string definition for message of type '<BoatHealth>"
  (cl:format cl:nil "Header header~%~%# Left Motor Controller Temperature~%float32 temp_l~%~%# Right Motor Controller Temperature~%float32 temp_r~%~%# Primary Battery Voltage~%float32 batt_p~%~%# Left Motor Battery Voltage~%float32 batt_l~%~%# Right Motor Battery Voltage~%float32 batt_r~%~%# Left Hull Water Sensor~%bool    water_l~%~%# Main Hull Water Sensor~%bool    water_m~%~%# Right Hull Water Sensor~%bool    water_r~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoatHealth)))
  "Returns full string definition for message of type 'BoatHealth"
  (cl:format cl:nil "Header header~%~%# Left Motor Controller Temperature~%float32 temp_l~%~%# Right Motor Controller Temperature~%float32 temp_r~%~%# Primary Battery Voltage~%float32 batt_p~%~%# Left Motor Battery Voltage~%float32 batt_l~%~%# Right Motor Battery Voltage~%float32 batt_r~%~%# Left Hull Water Sensor~%bool    water_l~%~%# Main Hull Water Sensor~%bool    water_m~%~%# Right Hull Water Sensor~%bool    water_r~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoatHealth>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoatHealth>))
  "Converts a ROS message object to a list"
  (cl:list 'BoatHealth
    (cl:cons ':header (header msg))
    (cl:cons ':temp_l (temp_l msg))
    (cl:cons ':temp_r (temp_r msg))
    (cl:cons ':batt_p (batt_p msg))
    (cl:cons ':batt_l (batt_l msg))
    (cl:cons ':batt_r (batt_r msg))
    (cl:cons ':water_l (water_l msg))
    (cl:cons ':water_m (water_m msg))
    (cl:cons ':water_r (water_r msg))
))
