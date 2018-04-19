
(cl:in-package :asdf)

(defsystem "roboboat-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoatHealth" :depends-on ("_package_BoatHealth"))
    (:file "_package_BoatHealth" :depends-on ("_package"))
    (:file "RelayControl" :depends-on ("_package_RelayControl"))
    (:file "_package_RelayControl" :depends-on ("_package"))
    (:file "MotorControl" :depends-on ("_package_MotorControl"))
    (:file "_package_MotorControl" :depends-on ("_package"))
  ))