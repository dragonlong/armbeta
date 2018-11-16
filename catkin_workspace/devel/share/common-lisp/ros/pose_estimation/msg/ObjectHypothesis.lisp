; Auto-generated. Do not edit!


(cl:in-package pose_estimation-msg)


;//! \htmlinclude ObjectHypothesis.msg.html

(cl:defclass <ObjectHypothesis> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pca
    :reader pca
    :initarg :pca
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (latent
    :reader latent
    :initarg :latent
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (mean
    :reader mean
    :initarg :mean
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rangeX
    :reader rangeX
    :initarg :rangeX
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rangeY
    :reader rangeY
    :initarg :rangeY
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rangeZ
    :reader rangeZ
    :initarg :rangeZ
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass ObjectHypothesis (<ObjectHypothesis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectHypothesis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectHypothesis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_estimation-msg:<ObjectHypothesis> is deprecated: use pose_estimation-msg:ObjectHypothesis instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_estimation-msg:label-val is deprecated.  Use pose_estimation-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_estimation-msg:pose-val is deprecated.  Use pose_estimation-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'pca-val :lambda-list '(m))
(cl:defmethod pca-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_estimation-msg:pca-val is deprecated.  Use pose_estimation-msg:pca instead.")
  (pca m))

(cl:ensure-generic-function 'latent-val :lambda-list '(m))
(cl:defmethod latent-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_estimation-msg:latent-val is deprecated.  Use pose_estimation-msg:latent instead.")
  (latent m))

(cl:ensure-generic-function 'mean-val :lambda-list '(m))
(cl:defmethod mean-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_estimation-msg:mean-val is deprecated.  Use pose_estimation-msg:mean instead.")
  (mean m))

(cl:ensure-generic-function 'rangeX-val :lambda-list '(m))
(cl:defmethod rangeX-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_estimation-msg:rangeX-val is deprecated.  Use pose_estimation-msg:rangeX instead.")
  (rangeX m))

(cl:ensure-generic-function 'rangeY-val :lambda-list '(m))
(cl:defmethod rangeY-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_estimation-msg:rangeY-val is deprecated.  Use pose_estimation-msg:rangeY instead.")
  (rangeY m))

(cl:ensure-generic-function 'rangeZ-val :lambda-list '(m))
(cl:defmethod rangeZ-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_estimation-msg:rangeZ-val is deprecated.  Use pose_estimation-msg:rangeZ instead.")
  (rangeZ m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <ObjectHypothesis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_estimation-msg:score-val is deprecated.  Use pose_estimation-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectHypothesis>) ostream)
  "Serializes a message object of type '<ObjectHypothesis>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pca) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'latent) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mean) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rangeX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rangeX))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rangeY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rangeY))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rangeZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rangeZ))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectHypothesis>) istream)
  "Deserializes a message object of type '<ObjectHypothesis>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pca) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'latent) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mean) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rangeX) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rangeX)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rangeY) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rangeY)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rangeZ) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rangeZ)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectHypothesis>)))
  "Returns string type for a message object of type '<ObjectHypothesis>"
  "pose_estimation/ObjectHypothesis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectHypothesis)))
  "Returns string type for a message object of type 'ObjectHypothesis"
  "pose_estimation/ObjectHypothesis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectHypothesis>)))
  "Returns md5sum for a message object of type '<ObjectHypothesis>"
  "ad948bb5ba9d5ef7bf2036ba8adf8f1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectHypothesis)))
  "Returns md5sum for a message object of type 'ObjectHypothesis"
  "ad948bb5ba9d5ef7bf2036ba8adf8f1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectHypothesis>)))
  "Returns full string definition for message of type '<ObjectHypothesis>"
  (cl:format cl:nil "string label~%geometry_msgs/Pose pose~%geometry_msgs/Pose pca~%geometry_msgs/Point latent~%geometry_msgs/Point mean~%float32[] rangeX~%float32[] rangeY~%float32[] rangeZ~%float32 score~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectHypothesis)))
  "Returns full string definition for message of type 'ObjectHypothesis"
  (cl:format cl:nil "string label~%geometry_msgs/Pose pose~%geometry_msgs/Pose pca~%geometry_msgs/Point latent~%geometry_msgs/Point mean~%float32[] rangeX~%float32[] rangeY~%float32[] rangeZ~%float32 score~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectHypothesis>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pca))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'latent))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mean))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rangeX) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rangeY) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rangeZ) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectHypothesis>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectHypothesis
    (cl:cons ':label (label msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':pca (pca msg))
    (cl:cons ':latent (latent msg))
    (cl:cons ':mean (mean msg))
    (cl:cons ':rangeX (rangeX msg))
    (cl:cons ':rangeY (rangeY msg))
    (cl:cons ':rangeZ (rangeZ msg))
    (cl:cons ':score (score msg))
))
