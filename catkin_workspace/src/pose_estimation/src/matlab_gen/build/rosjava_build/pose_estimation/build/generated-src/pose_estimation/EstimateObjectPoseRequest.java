package pose_estimation;

public interface EstimateObjectPoseRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "pose_estimation/EstimateObjectPoseRequest";
  static final java.lang.String _DEFINITION = "# List of candidate objects\nstring SceneFiles # Directory containing RGB-D frames of the target scene\nstring CalibrationFiles # Directory containing calibrated camera poses\nbool DoCalibration # Flag for calibration\n\n\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  java.lang.String getSceneFiles();
  void setSceneFiles(java.lang.String value);
  java.lang.String getCalibrationFiles();
  void setCalibrationFiles(java.lang.String value);
  boolean getDoCalibration();
  void setDoCalibration(boolean value);
}
