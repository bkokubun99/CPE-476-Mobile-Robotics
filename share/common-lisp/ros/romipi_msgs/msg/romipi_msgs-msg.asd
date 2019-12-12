
(cl:in-package :asdf)

(defsystem "romipi_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "NameList" :depends-on ("_package_NameList"))
    (:file "_package_NameList" :depends-on ("_package"))
    (:file "RomiPose" :depends-on ("_package_RomiPose"))
    (:file "_package_RomiPose" :depends-on ("_package"))
  ))