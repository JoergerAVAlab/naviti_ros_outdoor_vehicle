// Auto-generated. Do not edit!

// (in-package ars_40X.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Cluster {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.position = null;
      this.relative_velocity = null;
      this.rcs = null;
      this.dynamic_property = null;
      this.class_type = null;
      this.prob_of_exist = null;
      this.ambig_state = null;
      this.invalid_state = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('relative_velocity')) {
        this.relative_velocity = initObj.relative_velocity
      }
      else {
        this.relative_velocity = new geometry_msgs.msg.TwistWithCovariance();
      }
      if (initObj.hasOwnProperty('rcs')) {
        this.rcs = initObj.rcs
      }
      else {
        this.rcs = 0.0;
      }
      if (initObj.hasOwnProperty('dynamic_property')) {
        this.dynamic_property = initObj.dynamic_property
      }
      else {
        this.dynamic_property = 0;
      }
      if (initObj.hasOwnProperty('class_type')) {
        this.class_type = initObj.class_type
      }
      else {
        this.class_type = 0;
      }
      if (initObj.hasOwnProperty('prob_of_exist')) {
        this.prob_of_exist = initObj.prob_of_exist
      }
      else {
        this.prob_of_exist = 0;
      }
      if (initObj.hasOwnProperty('ambig_state')) {
        this.ambig_state = initObj.ambig_state
      }
      else {
        this.ambig_state = 0;
      }
      if (initObj.hasOwnProperty('invalid_state')) {
        this.invalid_state = initObj.invalid_state
      }
      else {
        this.invalid_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cluster
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [relative_velocity]
    bufferOffset = geometry_msgs.msg.TwistWithCovariance.serialize(obj.relative_velocity, buffer, bufferOffset);
    // Serialize message field [rcs]
    bufferOffset = _serializer.float32(obj.rcs, buffer, bufferOffset);
    // Serialize message field [dynamic_property]
    bufferOffset = _serializer.int8(obj.dynamic_property, buffer, bufferOffset);
    // Serialize message field [class_type]
    bufferOffset = _serializer.int8(obj.class_type, buffer, bufferOffset);
    // Serialize message field [prob_of_exist]
    bufferOffset = _serializer.int8(obj.prob_of_exist, buffer, bufferOffset);
    // Serialize message field [ambig_state]
    bufferOffset = _serializer.int8(obj.ambig_state, buffer, bufferOffset);
    // Serialize message field [invalid_state]
    bufferOffset = _serializer.int8(obj.invalid_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cluster
    let len;
    let data = new Cluster(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_velocity]
    data.relative_velocity = geometry_msgs.msg.TwistWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [rcs]
    data.rcs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dynamic_property]
    data.dynamic_property = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [class_type]
    data.class_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [prob_of_exist]
    data.prob_of_exist = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ambig_state]
    data.ambig_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [invalid_state]
    data.invalid_state = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 690;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ars_40X/Cluster';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6fbf37400d96cee232d859057c0e849';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    
    geometry_msgs/PoseWithCovariance position
    geometry_msgs/TwistWithCovariance relative_velocity
    
    float32 rcs
    int8 dynamic_property
    int8 class_type
    int8 prob_of_exist
    int8 ambig_state
    int8 invalid_state
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    
    ================================================================================
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cluster(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.relative_velocity !== undefined) {
      resolved.relative_velocity = geometry_msgs.msg.TwistWithCovariance.Resolve(msg.relative_velocity)
    }
    else {
      resolved.relative_velocity = new geometry_msgs.msg.TwistWithCovariance()
    }

    if (msg.rcs !== undefined) {
      resolved.rcs = msg.rcs;
    }
    else {
      resolved.rcs = 0.0
    }

    if (msg.dynamic_property !== undefined) {
      resolved.dynamic_property = msg.dynamic_property;
    }
    else {
      resolved.dynamic_property = 0
    }

    if (msg.class_type !== undefined) {
      resolved.class_type = msg.class_type;
    }
    else {
      resolved.class_type = 0
    }

    if (msg.prob_of_exist !== undefined) {
      resolved.prob_of_exist = msg.prob_of_exist;
    }
    else {
      resolved.prob_of_exist = 0
    }

    if (msg.ambig_state !== undefined) {
      resolved.ambig_state = msg.ambig_state;
    }
    else {
      resolved.ambig_state = 0
    }

    if (msg.invalid_state !== undefined) {
      resolved.invalid_state = msg.invalid_state;
    }
    else {
      resolved.invalid_state = 0
    }

    return resolved;
    }
};

module.exports = Cluster;
