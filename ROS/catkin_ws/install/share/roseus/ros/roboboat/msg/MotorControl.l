;; Auto-generated. Do not edit!


(when (boundp 'roboboat::MotorControl)
  (if (not (find-package "ROBOBOAT"))
    (make-package "ROBOBOAT"))
  (shadow 'MotorControl (find-package "ROBOBOAT")))
(unless (find-package "ROBOBOAT::MOTORCONTROL")
  (make-package "ROBOBOAT::MOTORCONTROL"))

(in-package "ROS")
;;//! \htmlinclude MotorControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboboat::MotorControl
  :super ros::object
  :slots (_header _left_motor _right_motor ))

(defmethod roboboat::MotorControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_motor __left_motor) 0)
    ((:right_motor __right_motor) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_motor (round __left_motor))
   (setq _right_motor (round __right_motor))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_motor
   (&optional __left_motor)
   (if __left_motor (setq _left_motor __left_motor)) _left_motor)
  (:right_motor
   (&optional __right_motor)
   (if __right_motor (setq _right_motor __right_motor)) _right_motor)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _left_motor
    2
    ;; uint16 _right_motor
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _left_motor
       (write-word _left_motor s)
     ;; uint16 _right_motor
       (write-word _right_motor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _left_motor
     (setq _left_motor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _right_motor
     (setq _right_motor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get roboboat::MotorControl :md5sum-) "4ce58821abb7342cd0cee3d9424cf458")
(setf (get roboboat::MotorControl :datatype-) "roboboat/MotorControl")
(setf (get roboboat::MotorControl :definition-)
      "Header header

# Left Motor Control Pulse Width
uint16 left_motor

# Right Motor Control Pulse Width
uint16 right_motor

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

")



(provide :roboboat/MotorControl "4ce58821abb7342cd0cee3d9424cf458")


