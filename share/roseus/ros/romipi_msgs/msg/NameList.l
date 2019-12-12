;; Auto-generated. Do not edit!


(when (boundp 'romipi_msgs::NameList)
  (if (not (find-package "ROMIPI_MSGS"))
    (make-package "ROMIPI_MSGS"))
  (shadow 'NameList (find-package "ROMIPI_MSGS")))
(unless (find-package "ROMIPI_MSGS::NAMELIST")
  (make-package "ROMIPI_MSGS::NAMELIST"))

(in-package "ROS")
;;//! \htmlinclude NameList.msg.html


(defclass romipi_msgs::NameList
  :super ros::object
  :slots (_names ))

(defmethod romipi_msgs::NameList
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _names __names)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get romipi_msgs::NameList :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get romipi_msgs::NameList :datatype-) "romipi_msgs/NameList")
(setf (get romipi_msgs::NameList :definition-)
      "# list of robot name strings
string[] names


")



(provide :romipi_msgs/NameList "dc7ae3609524b18034e49294a4ce670e")


