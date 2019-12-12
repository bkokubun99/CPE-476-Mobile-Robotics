; Auto-generated. Do not edit!


(cl:in-package romipi_msgs-msg)


;//! \htmlinclude RomiPose.msg.html

(cl:defclass <RomiPose> (roslisp-msg-protocol:ros-message)
  ((observer_name
    :reader observer_name
    :initarg :observer_name
    :type cl:string
    :initform "")
   (target_name
    :reader target_name
    :initarg :target_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass RomiPose (<RomiPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RomiPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RomiPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name romipi_msgs-msg:<RomiPose> is deprecated: use romipi_msgs-msg:RomiPose instead.")))

(cl:ensure-generic-function 'observer_name-val :lambda-list '(m))
(cl:defmethod observer_name-val ((m <RomiPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romipi_msgs-msg:observer_name-val is deprecated.  Use romipi_msgs-msg:observer_name instead.")
  (observer_name m))

(cl:ensure-generic-function 'target_name-val :lambda-list '(m))
(cl:defmethod target_name-val ((m <RomiPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romipi_msgs-msg:target_name-val is deprecated.  Use romipi_msgs-msg:target_name instead.")
  (target_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RomiPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romipi_msgs-msg:pose-val is deprecated.  Use romipi_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RomiPose>) ostream)
  "Serializes a message object of type '<RomiPose>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'observer_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'observer_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RomiPose>) istream)
  "Deserializes a message object of type '<RomiPose>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'observer_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'observer_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RomiPose>)))
  "Returns string type for a message object of type '<RomiPose>"
  "romipi_msgs/RomiPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RomiPose)))
  "Returns string type for a message object of type 'RomiPose"
  "romipi_msgs/RomiPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RomiPose>)))
  "Returns md5sum for a message object of type '<RomiPose>"
  "3d8b91b3b0ff7649c81277385280f189")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RomiPose)))
  "Returns md5sum for a message object of type 'RomiPose"
  "3d8b91b3b0ff7649c81277385280f189")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RomiPose>)))
  "Returns full string definition for message of type '<RomiPose>"
  (cl:format cl:nil "# observer saw target at pose relative to observer~%string observer_name~%string target_name~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RomiPose)))
  "Returns full string definition for message of type 'RomiPose"
  (cl:format cl:nil "# observer saw target at pose relative to observer~%string observer_name~%string target_name~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RomiPose>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'observer_name))
     4 (cl:length (cl:slot-value msg 'target_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RomiPose>))
  "Converts a ROS message object to a list"
  (cl:list 'RomiPose
    (cl:cons ':observer_name (observer_name msg))
    (cl:cons ':target_name (target_name msg))
    (cl:cons ':pose (pose msg))
))
