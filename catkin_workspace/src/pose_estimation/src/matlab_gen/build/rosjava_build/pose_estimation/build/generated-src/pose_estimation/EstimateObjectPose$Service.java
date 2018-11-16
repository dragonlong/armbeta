package pose_estimation;

public interface EstimateObjectPose$Service extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "pose_estimation/EstimateObjectPose$Service";
  static final java.lang.String _DEFINITION = "# List of candidate objects\nstring SceneFiles # Directory containing RGB-D frames of the target scene\nstring CalibrationFiles # Directory containing calibrated camera poses\nbool DoCalibration # Flag for calibration\n\n\n---\n\n# Detection information for each candidate object\nObjectHypothesis[] Objects\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
}
