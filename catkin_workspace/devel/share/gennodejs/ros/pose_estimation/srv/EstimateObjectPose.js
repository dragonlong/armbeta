// Auto-generated. Do not edit!

// (in-package pose_estimation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let ObjectHypothesis = require('../msg/ObjectHypothesis.js');

//-----------------------------------------------------------

class EstimateObjectPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SceneFiles = null;
      this.CalibrationFiles = null;
      this.DoCalibration = null;
    }
    else {
      if (initObj.hasOwnProperty('SceneFiles')) {
        this.SceneFiles = initObj.SceneFiles
      }
      else {
        this.SceneFiles = '';
      }
      if (initObj.hasOwnProperty('CalibrationFiles')) {
        this.CalibrationFiles = initObj.CalibrationFiles
      }
      else {
        this.CalibrationFiles = '';
      }
      if (initObj.hasOwnProperty('DoCalibration')) {
        this.DoCalibration = initObj.DoCalibration
      }
      else {
        this.DoCalibration = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EstimateObjectPoseRequest
    // Serialize message field [SceneFiles]
    bufferOffset = _serializer.string(obj.SceneFiles, buffer, bufferOffset);
    // Serialize message field [CalibrationFiles]
    bufferOffset = _serializer.string(obj.CalibrationFiles, buffer, bufferOffset);
    // Serialize message field [DoCalibration]
    bufferOffset = _serializer.bool(obj.DoCalibration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EstimateObjectPoseRequest
    let len;
    let data = new EstimateObjectPoseRequest(null);
    // Deserialize message field [SceneFiles]
    data.SceneFiles = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CalibrationFiles]
    data.CalibrationFiles = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [DoCalibration]
    data.DoCalibration = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.SceneFiles.length;
    length += object.CalibrationFiles.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_estimation/EstimateObjectPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fb1de211c0722ebd1a98129d9ca0b38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string SceneFiles
    string CalibrationFiles
    bool DoCalibration
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EstimateObjectPoseRequest(null);
    if (msg.SceneFiles !== undefined) {
      resolved.SceneFiles = msg.SceneFiles;
    }
    else {
      resolved.SceneFiles = ''
    }

    if (msg.CalibrationFiles !== undefined) {
      resolved.CalibrationFiles = msg.CalibrationFiles;
    }
    else {
      resolved.CalibrationFiles = ''
    }

    if (msg.DoCalibration !== undefined) {
      resolved.DoCalibration = msg.DoCalibration;
    }
    else {
      resolved.DoCalibration = false
    }

    return resolved;
    }
};

class EstimateObjectPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Objects = null;
    }
    else {
      if (initObj.hasOwnProperty('Objects')) {
        this.Objects = initObj.Objects
      }
      else {
        this.Objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EstimateObjectPoseResponse
    // Serialize message field [Objects]
    // Serialize the length for message field [Objects]
    bufferOffset = _serializer.uint32(obj.Objects.length, buffer, bufferOffset);
    obj.Objects.forEach((val) => {
      bufferOffset = ObjectHypothesis.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EstimateObjectPoseResponse
    let len;
    let data = new EstimateObjectPoseResponse(null);
    // Deserialize message field [Objects]
    // Deserialize array length for message field [Objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Objects[i] = ObjectHypothesis.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.Objects.forEach((val) => {
      length += ObjectHypothesis.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pose_estimation/EstimateObjectPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc26f6b51927bc4d2d969c808c6e59b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EstimateObjectPoseResponse(null);
    if (msg.Objects !== undefined) {
      resolved.Objects = new Array(msg.Objects.length);
      for (let i = 0; i < resolved.Objects.length; ++i) {
        resolved.Objects[i] = ObjectHypothesis.Resolve(msg.Objects[i]);
      }
    }
    else {
      resolved.Objects = []
    }

    return resolved;
    }
};

module.exports = {
  Request: EstimateObjectPoseRequest,
  Response: EstimateObjectPoseResponse,
  md5sum() { return 'c8b2d8463783a691cf672f9ad5335409'; },
  datatype() { return 'pose_estimation/EstimateObjectPose'; }
};
