// Auto-generated. Do not edit!

// (in-package pose_estimation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ObjectHypothesis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.pose = null;
      this.pca = null;
      this.latent = null;
      this.mean = null;
      this.rangeX = null;
      this.rangeY = null;
      this.rangeZ = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pca')) {
        this.pca = initObj.pca
      }
      else {
        this.pca = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('latent')) {
        this.latent = initObj.latent
      }
      else {
        this.latent = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('mean')) {
        this.mean = initObj.mean
      }
      else {
        this.mean = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('rangeX')) {
        this.rangeX = initObj.rangeX
      }
      else {
        this.rangeX = [];
      }
      if (initObj.hasOwnProperty('rangeY')) {
        this.rangeY = initObj.rangeY
      }
      else {
        this.rangeY = [];
      }
      if (initObj.hasOwnProperty('rangeZ')) {
        this.rangeZ = initObj.rangeZ
      }
      else {
        this.rangeZ = [];
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectHypothesis
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [pca]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pca, buffer, bufferOffset);
    // Serialize message field [latent]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.latent, buffer, bufferOffset);
    // Serialize message field [mean]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.mean, buffer, bufferOffset);
    // Serialize message field [rangeX]
    bufferOffset = _arraySerializer.float32(obj.rangeX, buffer, bufferOffset, null);
    // Serialize message field [rangeY]
    bufferOffset = _arraySerializer.float32(obj.rangeY, buffer, bufferOffset, null);
    // Serialize message field [rangeZ]
    bufferOffset = _arraySerializer.float32(obj.rangeZ, buffer, bufferOffset, null);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectHypothesis
    let len;
    let data = new ObjectHypothesis(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pca]
    data.pca = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [latent]
    data.latent = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [mean]
    data.mean = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rangeX]
    data.rangeX = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rangeY]
    data.rangeY = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rangeZ]
    data.rangeZ = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.label.length;
    length += 4 * object.rangeX.length;
    length += 4 * object.rangeY.length;
    length += 4 * object.rangeZ.length;
    return length + 180;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_estimation/ObjectHypothesis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad948bb5ba9d5ef7bf2036ba8adf8f1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectHypothesis(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.pca !== undefined) {
      resolved.pca = geometry_msgs.msg.Pose.Resolve(msg.pca)
    }
    else {
      resolved.pca = new geometry_msgs.msg.Pose()
    }

    if (msg.latent !== undefined) {
      resolved.latent = geometry_msgs.msg.Point.Resolve(msg.latent)
    }
    else {
      resolved.latent = new geometry_msgs.msg.Point()
    }

    if (msg.mean !== undefined) {
      resolved.mean = geometry_msgs.msg.Point.Resolve(msg.mean)
    }
    else {
      resolved.mean = new geometry_msgs.msg.Point()
    }

    if (msg.rangeX !== undefined) {
      resolved.rangeX = msg.rangeX;
    }
    else {
      resolved.rangeX = []
    }

    if (msg.rangeY !== undefined) {
      resolved.rangeY = msg.rangeY;
    }
    else {
      resolved.rangeY = []
    }

    if (msg.rangeZ !== undefined) {
      resolved.rangeZ = msg.rangeZ;
    }
    else {
      resolved.rangeZ = []
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

module.exports = ObjectHypothesis;
