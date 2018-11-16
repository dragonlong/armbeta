
(cl:in-package :asdf)

(defsystem "pose_estimation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectHypothesis" :depends-on ("_package_ObjectHypothesis"))
    (:file "_package_ObjectHypothesis" :depends-on ("_package"))
  ))