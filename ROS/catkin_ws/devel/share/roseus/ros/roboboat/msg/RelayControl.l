;; Auto-generated. Do not edit!


(when (boundp 'roboboat::RelayControl)
  (if (not (find-package "ROBOBOAT"))
    (make-package "ROBOBOAT"))
  (shadow 'RelayControl (find-package "ROBOBOAT")))
(unless (find-package "ROBOBOAT::RELAYCONTROL")
  (make-package "ROBOBOAT::RELAYCONTROL"))

(in-package "ROS")
;;//! \htmlinclude RelayControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboboat::RelayControl
  :super ros::object
  :slots (_header _motor _pump ))

(defmethod roboboat::RelayControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motor __motor) nil)
    ((:pump __pump) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _motor __motor)
   (setq _pump __pump)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motor
   (&optional __motor)
   (if __motor (setq _motor __motor)) _motor)
  (:pump
   (&optional __pump)
   (if __pump (setq _pump __pump)) _pump)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _motor
    1
    ;; bool _pump
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _motor
       (if _motor (write-byte -1 s) (write-byte 0 s))
     ;; bool _pump
       (if _pump (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _motor
     (setq _motor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pump
     (setq _pump (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roboboat::RelayControl :md5sum-) "d861d440ba0170c43fedaf3385911c0c")
(setf (get roboboat::RelayControl :datatype-) "roboboat/RelayControl")
(setf (get roboboat::RelayControl :definition-)
      "Header header

# Motor Power Relays
bool motor

# Pump Power Relays
bool pump


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



(provide :roboboat/RelayControl "d861d440ba0170c43fedaf3385911c0c")


