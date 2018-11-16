;; Auto-generated. Do not edit!


(when (boundp 'pose_estimation::EstimateObjectPose)
  (if (not (find-package "POSE_ESTIMATION"))
    (make-package "POSE_ESTIMATION"))
  (shadow 'EstimateObjectPose (find-package "POSE_ESTIMATION")))
(unless (find-package "POSE_ESTIMATION::ESTIMATEOBJECTPOSE")
  (make-package "POSE_ESTIMATION::ESTIMATEOBJECTPOSE"))
(unless (find-package "POSE_ESTIMATION::ESTIMATEOBJECTPOSEREQUEST")
  (make-package "POSE_ESTIMATION::ESTIMATEOBJECTPOSEREQUEST"))
(unless (find-package "POSE_ESTIMATION::ESTIMATEOBJECTPOSERESPONSE")
  (make-package "POSE_ESTIMATION::ESTIMATEOBJECTPOSERESPONSE"))

(in-package "ROS")





(defclass pose_estimation::EstimateObjectPoseRequest
  :super ros::object
  :slots (_SceneFiles _CalibrationFiles _DoCalibration ))

(defmethod pose_estimation::EstimateObjectPoseRequest
  (:init
   (&key
    ((:SceneFiles __SceneFiles) "")
    ((:CalibrationFiles __CalibrationFiles) "")
    ((:DoCalibration __DoCalibration) nil)
    )
   (send-super :init)
   (setq _SceneFiles (string __SceneFiles))
   (setq _CalibrationFiles (string __CalibrationFiles))
   (setq _DoCalibration __DoCalibration)
   self)
  (:SceneFiles
   (&optional __SceneFiles)
   (if __SceneFiles (setq _SceneFiles __SceneFiles)) _SceneFiles)
  (:CalibrationFiles
   (&optional __CalibrationFiles)
   (if __CalibrationFiles (setq _CalibrationFiles __CalibrationFiles)) _CalibrationFiles)
  (:DoCalibration
   (&optional __DoCalibration)
   (if __DoCalibration (setq _DoCalibration __DoCalibration)) _DoCalibration)
  (:serialization-length
   ()
   (+
    ;; string _SceneFiles
    4 (length _SceneFiles)
    ;; string _CalibrationFiles
    4 (length _CalibrationFiles)
    ;; bool _DoCalibration
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _SceneFiles
       (write-long (length _SceneFiles) s) (princ _SceneFiles s)
     ;; string _CalibrationFiles
       (write-long (length _CalibrationFiles) s) (princ _CalibrationFiles s)
     ;; bool _DoCalibration
       (if _DoCalibration (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _SceneFiles
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _SceneFiles (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _CalibrationFiles
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _CalibrationFiles (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _DoCalibration
     (setq _DoCalibration (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pose_estimation::EstimateObjectPoseResponse
  :super ros::object
  :slots (_Objects ))

(defmethod pose_estimation::EstimateObjectPoseResponse
  (:init
   (&key
    ((:Objects __Objects) (let (r) (dotimes (i 0) (push (instance pose_estimation::ObjectHypothesis :init) r)) r))
    )
   (send-super :init)
   (setq _Objects __Objects)
   self)
  (:Objects
   (&rest __Objects)
   (if (keywordp (car __Objects))
       (send* _Objects __Objects)
     (progn
       (if __Objects (setq _Objects (car __Objects)))
       _Objects)))
  (:serialization-length
   ()
   (+
    ;; pose_estimation/ObjectHypothesis[] _Objects
    (apply #'+ (send-all _Objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pose_estimation/ObjectHypothesis[] _Objects
     (write-long (length _Objects) s)
     (dolist (elem _Objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pose_estimation/ObjectHypothesis[] _Objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Objects (let (r) (dotimes (i n) (push (instance pose_estimation::ObjectHypothesis :init) r)) r))
     (dolist (elem- _Objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass pose_estimation::EstimateObjectPose
  :super ros::object
  :slots ())

(setf (get pose_estimation::EstimateObjectPose :md5sum-) "c8b2d8463783a691cf672f9ad5335409")
(setf (get pose_estimation::EstimateObjectPose :datatype-) "pose_estimation/EstimateObjectPose")
(setf (get pose_estimation::EstimateObjectPose :request) pose_estimation::EstimateObjectPoseRequest)
(setf (get pose_estimation::EstimateObjectPose :response) pose_estimation::EstimateObjectPoseResponse)

(defmethod pose_estimation::EstimateObjectPoseRequest
  (:response () (instance pose_estimation::EstimateObjectPoseResponse :init)))

(setf (get pose_estimation::EstimateObjectPoseRequest :md5sum-) "c8b2d8463783a691cf672f9ad5335409")
(setf (get pose_estimation::EstimateObjectPoseRequest :datatype-) "pose_estimation/EstimateObjectPoseRequest")
(setf (get pose_estimation::EstimateObjectPoseRequest :definition-)
      "
string SceneFiles
string CalibrationFiles
bool DoCalibration


---


ObjectHypothesis[] Objects


================================================================================
MSG: pose_estimation/ObjectHypothesis
string label
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

(setf (get pose_estimation::EstimateObjectPoseResponse :md5sum-) "c8b2d8463783a691cf672f9ad5335409")
(setf (get pose_estimation::EstimateObjectPoseResponse :datatype-) "pose_estimation/EstimateObjectPoseResponse")
(setf (get pose_estimation::EstimateObjectPoseResponse :definition-)
      "
string SceneFiles
string CalibrationFiles
bool DoCalibration


---


ObjectHypothesis[] Objects


================================================================================
MSG: pose_estimation/ObjectHypothesis
string label
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



(provide :pose_estimation/EstimateObjectPose "c8b2d8463783a691cf672f9ad5335409")


