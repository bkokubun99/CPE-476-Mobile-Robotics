;; Auto-generated. Do not edit!


(when (boundp 'romipi_msgs::RomiPose)
  (if (not (find-package "ROMIPI_MSGS"))
    (make-package "ROMIPI_MSGS"))
  (shadow 'RomiPose (find-package "ROMIPI_MSGS")))
(unless (find-package "ROMIPI_MSGS::ROMIPOSE")
  (make-package "ROMIPI_MSGS::ROMIPOSE"))

(in-package "ROS")
;;//! \htmlinclude RomiPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass romipi_msgs::RomiPose
  :super ros::object
  :slots (_observer_name _target_name _pose ))

(defmethod romipi_msgs::RomiPose
  (:init
   (&key
    ((:observer_name __observer_name) "")
    ((:target_name __target_name) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _observer_name (string __observer_name))
   (setq _target_name (string __target_name))
   (setq _pose __pose)
   self)
  (:observer_name
   (&optional __observer_name)
   (if __observer_name (setq _observer_name __observer_name)) _observer_name)
  (:target_name
   (&optional __target_name)
   (if __target_name (setq _target_name __target_name)) _target_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _observer_name
    4 (length _observer_name)
    ;; string _target_name
    4 (length _target_name)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _observer_name
       (write-long (length _observer_name) s) (princ _observer_name s)
     ;; string _target_name
       (write-long (length _target_name) s) (princ _target_name s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _observer_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _observer_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get romipi_msgs::RomiPose :md5sum-) "3d8b91b3b0ff7649c81277385280f189")
(setf (get romipi_msgs::RomiPose :datatype-) "romipi_msgs/RomiPose")
(setf (get romipi_msgs::RomiPose :definition-)
      "# observer saw target at pose relative to observer
string observer_name
string target_name
geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :romipi_msgs/RomiPose "3d8b91b3b0ff7649c81277385280f189")


