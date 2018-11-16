package pose_estimation;

public interface ObjectHypothesis extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "pose_estimation/ObjectHypothesis";
  static final java.lang.String _DEFINITION = "string label\ngeometry_msgs/Pose pose\ngeometry_msgs/Pose pca\ngeometry_msgs/Point latent\ngeometry_msgs/Point mean\nfloat32[] rangeX\nfloat32[] rangeY\nfloat32[] rangeZ\nfloat32 score\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  java.lang.String getLabel();
  void setLabel(java.lang.String value);
  geometry_msgs.Pose getPose();
  void setPose(geometry_msgs.Pose value);
  geometry_msgs.Pose getPca();
  void setPca(geometry_msgs.Pose value);
  geometry_msgs.Point getLatent();
  void setLatent(geometry_msgs.Point value);
  geometry_msgs.Point getMean();
  void setMean(geometry_msgs.Point value);
  float[] getRangeX();
  void setRangeX(float[] value);
  float[] getRangeY();
  void setRangeY(float[] value);
  float[] getRangeZ();
  void setRangeZ(float[] value);
  float getScore();
  void setScore(float value);
}
