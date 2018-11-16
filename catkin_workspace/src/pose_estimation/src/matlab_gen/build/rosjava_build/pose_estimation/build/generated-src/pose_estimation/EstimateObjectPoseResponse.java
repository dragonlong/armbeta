package pose_estimation;

public interface EstimateObjectPoseResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "pose_estimation/EstimateObjectPoseResponse";
  static final java.lang.String _DEFINITION = "\n# Detection information for each candidate object\nObjectHypothesis[] Objects";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  java.util.List<pose_estimation.ObjectHypothesis> getObjects();
  void setObjects(java.util.List<pose_estimation.ObjectHypothesis> value);
}
