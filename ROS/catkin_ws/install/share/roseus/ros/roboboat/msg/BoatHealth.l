;; Auto-generated. Do not edit!


(when (boundp 'roboboat::BoatHealth)
  (if (not (find-package "ROBOBOAT"))
    (make-package "ROBOBOAT"))
  (shadow 'BoatHealth (find-package "ROBOBOAT")))
(unless (find-package "ROBOBOAT::BOATHEALTH")
  (make-package "ROBOBOAT::BOATHEALTH"))

(in-package "ROS")
;;//! \htmlinclude BoatHealth.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboboat::BoatHealth
  :super ros::object
  :slots (_header _temp_l _temp_r _batt_p _batt_l _batt_r _water_l _water_m _water_r ))

(defmethod roboboat::BoatHealth
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:temp_l __temp_l) 0.0)
    ((:temp_r __temp_r) 0.0)
    ((:batt_p __batt_p) 0.0)
    ((:batt_l __batt_l) 0.0)
    ((:batt_r __batt_r) 0.0)
    ((:water_l __water_l) nil)
    ((:water_m __water_m) nil)
    ((:water_r __water_r) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _temp_l (float __temp_l))
   (setq _temp_r (float __temp_r))
   (setq _batt_p (float __batt_p))
   (setq _batt_l (float __batt_l))
   (setq _batt_r (float __batt_r))
   (setq _water_l __water_l)
   (setq _water_m __water_m)
   (setq _water_r __water_r)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:temp_l
   (&optional __temp_l)
   (if __temp_l (setq _temp_l __temp_l)) _temp_l)
  (:temp_r
   (&optional __temp_r)
   (if __temp_r (setq _temp_r __temp_r)) _temp_r)
  (:batt_p
   (&optional __batt_p)
   (if __batt_p (setq _batt_p __batt_p)) _batt_p)
  (:batt_l
   (&optional __batt_l)
   (if __batt_l (setq _batt_l __batt_l)) _batt_l)
  (:batt_r
   (&optional __batt_r)
   (if __batt_r (setq _batt_r __batt_r)) _batt_r)
  (:water_l
   (&optional __water_l)
   (if __water_l (setq _water_l __water_l)) _water_l)
  (:water_m
   (&optional __water_m)
   (if __water_m (setq _water_m __water_m)) _water_m)
  (:water_r
   (&optional __water_r)
   (if __water_r (setq _water_r __water_r)) _water_r)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _temp_l
    4
    ;; float32 _temp_r
    4
    ;; float32 _batt_p
    4
    ;; float32 _batt_l
    4
    ;; float32 _batt_r
    4
    ;; bool _water_l
    1
    ;; bool _water_m
    1
    ;; bool _water_r
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _temp_l
       (sys::poke _temp_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temp_r
       (sys::poke _temp_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _batt_p
       (sys::poke _batt_p (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _batt_l
       (sys::poke _batt_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _batt_r
       (sys::poke _batt_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _water_l
       (if _water_l (write-byte -1 s) (write-byte 0 s))
     ;; bool _water_m
       (if _water_m (write-byte -1 s) (write-byte 0 s))
     ;; bool _water_r
       (if _water_r (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _temp_l
     (setq _temp_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temp_r
     (setq _temp_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _batt_p
     (setq _batt_p (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _batt_l
     (setq _batt_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _batt_r
     (setq _batt_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _water_l
     (setq _water_l (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _water_m
     (setq _water_m (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _water_r
     (setq _water_r (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roboboat::BoatHealth :md5sum-) "99250fac6bf2b1f4a6ceeb24cfdc8ed9")
(setf (get roboboat::BoatHealth :datatype-) "roboboat/BoatHealth")
(setf (get roboboat::BoatHealth :definition-)
      "Header header

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

")



(provide :roboboat/BoatHealth "99250fac6bf2b1f4a6ceeb24cfdc8ed9")


