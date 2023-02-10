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

class SensorIDRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_id = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorIDRequest
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.uint8(obj.sensor_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorIDRequest
    let len;
    let data = new SensorIDRequest(null);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ars_40X/SensorIDRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66c46e7435a6e0ca30e3a5cf913651cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Sensor ID 0 – 7
    
    uint8 sensor_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorIDRequest(null);
    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = 0
    }

    return resolved;
    }
};

class SensorIDResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorIDResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorIDResponse
    let len;
    let data = new SensorIDResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ars_40X/SensorIDResponse';
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
    const resolved = new SensorIDResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SensorIDRequest,
  Response: SensorIDResponse,
  md5sum() { return '66c46e7435a6e0ca30e3a5cf913651cd'; },
  datatype() { return 'ars_40X/SensorID'; }
};
