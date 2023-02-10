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

class OutputTypeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_type = null;
    }
    else {
      if (initObj.hasOwnProperty('output_type')) {
        this.output_type = initObj.output_type
      }
      else {
        this.output_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OutputTypeRequest
    // Serialize message field [output_type]
    bufferOffset = _serializer.uint8(obj.output_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OutputTypeRequest
    let len;
    let data = new OutputTypeRequest(null);
    // Deserialize message field [output_type]
    data.output_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ars_40X/OutputTypeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '84258bdfadc436fc1e07d471616d0a90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # none
    # send objects
    # send clusters
    
    uint8 output_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OutputTypeRequest(null);
    if (msg.output_type !== undefined) {
      resolved.output_type = msg.output_type;
    }
    else {
      resolved.output_type = 0
    }

    return resolved;
    }
};

class OutputTypeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OutputTypeResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OutputTypeResponse
    let len;
    let data = new OutputTypeResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ars_40X/OutputTypeResponse';
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
    const resolved = new OutputTypeResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: OutputTypeRequest,
  Response: OutputTypeResponse,
  md5sum() { return '84258bdfadc436fc1e07d471616d0a90'; },
  datatype() { return 'ars_40X/OutputType'; }
};
