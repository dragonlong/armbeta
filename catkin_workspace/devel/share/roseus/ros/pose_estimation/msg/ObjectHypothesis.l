;; Auto-generated. Do not edit!


(when (boundp 'pose_estimation::ObjectHypothesis)
  (if (not (find-package "POSE_ESTIMATION"))
    (make-package "POSE_ESTIMATION"))
  (shadow 'ObjectHypothesis (find-package "POSE_ESTIMATION")))
(unless (find-package "POSE_ESTIMATION::OBJECTHYPOTHESIS")
  (make-package "POSE_ESTIMATION::OBJECTHYPOTHESIS"))

(in-package "ROS")
;;//! \htmlinclude ObjectHypothesis.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pose_estimation::ObjectHypothesis
  :super ros::object
  :slots (_label _pose _pca _latent _mean _rangeX _rangeY _rangeZ _score ))

(defmethod pose_estimation::ObjectHypothesis
  (:init
   (&key
    ((:label __label) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:pca __pca) (instance geometry_msgs::Pose :init))
    ((:latent __latent) (instance geometry_msgs::Point :init))
    ((:mean __mean) (instance geometry_msgs::Point :init))
    ((:rangeX __rangeX) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rangeY __rangeY) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rangeZ __rangeZ) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _pose __pose)
   (setq _pca __pca)
   (setq _latent __latent)
   (setq _mean __mean)
   (setq _rangeX __rangeX)
   (setq _rangeY __rangeY)
   (setq _rangeZ __rangeZ)
   (setq _score (float __score))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:pca
   (&rest __pca)
   (if (keywordp (car __pca))
       (send* _pca __pca)
     (progn
       (if __pca (setq _pca (car __pca)))
       _pca)))
  (:latent
   (&rest __latent)
   (if (keywordp (car __latent))
       (send* _latent __latent)
     (progn
       (if __latent (setq _latent (car __latent)))
       _latent)))
  (:mean
   (&rest __mean)
   (if (keywordp (car __mean))
       (send* _mean __mean)
     (progn
       (if __mean (setq _mean (car __mean)))
       _mean)))
  (:rangeX
   (&optional __rangeX)
   (if __rangeX (setq _rangeX __rangeX)) _rangeX)
  (:rangeY
   (&optional __rangeY)
   (if __rangeY (setq _rangeY __rangeY)) _rangeY)
  (:rangeZ
   (&optional __rangeZ)
   (if __rangeZ (setq _rangeZ __rangeZ)) _rangeZ)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Pose _pca
    (send _pca :serialization-length)
    ;; geometry_msgs/Point _latent
    (send _latent :serialization-length)
    ;; geometry_msgs/Point _mean
    (send _mean :serialization-length)
    ;; float32[] _rangeX
    (* 4    (length _rangeX)) 4
    ;; float32[] _rangeY
    (* 4    (length _rangeY)) 4
    ;; float32[] _rangeZ
    (* 4    (length _rangeZ)) 4
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Pose _pca
       (send _pca :serialize s)
     ;; geometry_msgs/Point _latent
       (send _latent :serialize s)
     ;; geometry_msgs/Point _mean
       (send _mean :serialize s)
     ;; float32[] _rangeX
     (write-long (length _rangeX) s)
     (dotimes (i (length _rangeX))
       (sys::poke (elt _rangeX i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rangeY
     (write-long (length _rangeY) s)
     (dotimes (i (length _rangeY))
       (sys::poke (elt _rangeY i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rangeZ
     (write-long (length _rangeZ) s)
     (dotimes (i (length _rangeZ))
       (sys::poke (elt _rangeZ i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Pose _pca
     (send _pca :deserialize buf ptr-) (incf ptr- (send _pca :serialization-length))
   ;; geometry_msgs/Point _latent
     (send _latent :deserialize buf ptr-) (incf ptr- (send _latent :serialization-length))
   ;; geometry_msgs/Point _mean
     (send _mean :deserialize buf ptr-) (incf ptr- (send _mean :serialization-length))
   ;; float32[] _rangeX
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rangeX (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rangeX i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rangeY
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rangeY (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rangeY i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rangeZ
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rangeZ (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rangeZ i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pose_estimation::ObjectHypothesis :md5sum-) "ad948bb5ba9d5ef7bf2036ba8adf8f1d")
(setf (get pose_estimation::ObjectHypothesis :datatype-) "pose_estimation/ObjectHypothesis")
(setf (get pose_estimation::ObjectHypothesis :definition-)
      "string label
geometry_msgs/Pose pose
geometry_msgs/Pose pca
geometry_msgs/Point latent
geometry_msgs/Point mean
float32[] rangeX
float32[] rangeY
float32[] rangeZ
float32 score

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



(provide :pose_estimation/ObjectHypothesis "ad948bb5ba9d5ef7bf2036ba8adf8f1d")


