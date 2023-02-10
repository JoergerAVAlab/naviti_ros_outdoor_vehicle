// Auto-generated. Do not edit!

// (in-package ars_40X.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RCSThresholdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rcs_threshold = null;
    }
    else {
      if (initObj.hasOwnProperty('rcs_threshold')) {
        this.rcs_threshold = initObj.rcs_threshold
      }
      else {
        this.rcs_threshold = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RCSThresholdRequest
    // Serialize message field [rcs_threshold]
    bufferOffset = _serializer.uint8(obj.rcs_threshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RCSThresholdRequest
    let len;
    let data = new RCSThresholdRequest(null);
    // Deserialize message field [rcs_threshold]
    data.rcs_threshold = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ars_40X/RCSThresholdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2395c11d5141075461a6a21a788a2778';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Sets the sensitivity of the cluster detection to standard
    # (0x0) or high sensitivity (0x1)
    
    uint8 rcs_threshold
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RCSThresholdRequest(null);
    if (msg.rcs_threshold !== undefined) {
      resolved.rcs_threshold = msg.rcs_threshold;
    }
    else {
      resolved.rcs_threshold = 0
    }

    return resolved;
    }
};

class RCSThresholdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RCSThresholdResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RCSThresholdResponse
    let len;
    let data = new RCSThresholdResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ars_40X/RCSThresholdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RCSThresholdResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: RCSThresholdRequest,
  Response: RCSThresholdResponse,
  md5sum() { return '2395c11d5141075461a6a21a788a2778'; },
  datatype() { return 'ars_40X/RCSThreshold'; }
};
