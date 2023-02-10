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

class RadarPowerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radar_power = null;
    }
    else {
      if (initObj.hasOwnProperty('radar_power')) {
        this.radar_power = initObj.radar_power
      }
      else {
        this.radar_power = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarPowerRequest
    // Serialize message field [radar_power]
    bufferOffset = _serializer.uint8(obj.radar_power, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarPowerRequest
    let len;
    let data = new RadarPowerRequest(null);
    // Deserialize message field [radar_power]
    data.radar_power = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ars_40X/RadarPowerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1729e07afca5fdcd752c0c577b4694e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Configures the transmitted radar power (Tx
    # attenuation). The output RCS of cluster and objects
    # will be compensated for this attenuation. Reducing
    # the output power can improve detection in case of
    # close range scenarios or inside rooms.
    #
    # Standard
    # -3dB Tx gain
    # -6dB Tx gain
    # -9dB Tx gain
    
    uint8 radar_power
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarPowerRequest(null);
    if (msg.radar_power !== undefined) {
      resolved.radar_power = msg.radar_power;
    }
    else {
      resolved.radar_power = 0
    }

    return resolved;
    }
};

class RadarPowerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarPowerResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarPowerResponse
    let len;
    let data = new RadarPowerResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ars_40X/RadarPowerResponse';
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
    const resolved = new RadarPowerResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: RadarPowerRequest,
  Response: RadarPowerResponse,
  md5sum() { return '1729e07afca5fdcd752c0c577b4694e3'; },
  datatype() { return 'ars_40X/RadarPower'; }
};
