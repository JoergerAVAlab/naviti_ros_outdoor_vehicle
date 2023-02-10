// Auto-generated. Do not edit!

// (in-package novatel_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CommonShortHeader = require('./CommonShortHeader.js');

//-----------------------------------------------------------

class INSPVAS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gnss_week = null;
      this.gnss_seconds = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.north_velocity = null;
      this.east_velocity = null;
      this.up_velocity = null;
      this.roll = null;
      this.pitch = null;
      this.azimuth = null;
      this.ins_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new CommonShortHeader();
      }
      if (initObj.hasOwnProperty('gnss_week')) {
        this.gnss_week = initObj.gnss_week
      }
      else {
        this.gnss_week = 0;
      }
      if (initObj.hasOwnProperty('gnss_seconds')) {
        this.gnss_seconds = initObj.gnss_seconds
      }
      else {
        this.gnss_seconds = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('north_velocity')) {
        this.north_velocity = initObj.north_velocity
      }
      else {
        this.north_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('east_velocity')) {
        this.east_velocity = initObj.east_velocity
      }
      else {
        this.east_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('up_velocity')) {
        this.up_velocity = initObj.up_velocity
      }
      else {
        this.up_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('ins_status')) {
        this.ins_status = initObj.ins_status
      }
      else {
        this.ins_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type INSPVAS
    // Serialize message field [header]
    bufferOffset = CommonShortHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gnss_week]
    bufferOffset = _serializer.uint32(obj.gnss_week, buffer, bufferOffset);
    // Serialize message field [gnss_seconds]
    bufferOffset = _serializer.float64(obj.gnss_seconds, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [north_velocity]
    bufferOffset = _serializer.float64(obj.north_velocity, buffer, bufferOffset);
    // Serialize message field [east_velocity]
    bufferOffset = _serializer.float64(obj.east_velocity, buffer, bufferOffset);
    // Serialize message field [up_velocity]
    bufferOffset = _serializer.float64(obj.up_velocity, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float64(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [ins_status]
    bufferOffset = _serializer.uint32(obj.ins_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type INSPVAS
    let len;
    let data = new INSPVAS(null);
    // Deserialize message field [header]
    data.header = CommonShortHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [gnss_week]
    data.gnss_week = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [gnss_seconds]
    data.gnss_seconds = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [north_velocity]
    data.north_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [east_velocity]
    data.east_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [up_velocity]
    data.up_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ins_status]
    data.ins_status = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 97;
  }

  static datatype() {
    // Returns string type for a message object
    return 'novatel_pkg/INSPVAS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ded1264f3f4858163c36b8d5bc38ed2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # INSPVAS Message ID: 508
    # Author: Brandon Medellin
    # Date: 2/1/2023
    
    novatel_pkg/CommonShortHeader header
    
    uint32 gnss_week
    float64 gnss_seconds
    
    float64 latitude
    float64 longitude
    float64 altitude
    
    float64 north_velocity
    float64 east_velocity
    float64 up_velocity
    
    float64 roll
    float64 pitch
    float64 azimuth
    
    # Table 29 in the SPAN on OEM6 manual:
    # See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=121
    uint32 ins_status
    
    ================================================================================
    MSG: novatel_pkg/CommonShortHeader
    # Short Binary Header NovAtel OEM7
    # Author: Brandon Medellin
    # Date: 2/1/2023
    
    # Message Length not including header (12 bytes) or CRC (4 byte)
    uint8 length
    
    # Message ID of the log being output.
    uint16 id
    
    # GNSS week number
    uint16 gnss_week
    
    # GNSS Miliseconds from beginning of GNSS week
    int32 gnss_mili
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new INSPVAS(null);
    if (msg.header !== undefined) {
      resolved.header = CommonShortHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new CommonShortHeader()
    }

    if (msg.gnss_week !== undefined) {
      resolved.gnss_week = msg.gnss_week;
    }
    else {
      resolved.gnss_week = 0
    }

    if (msg.gnss_seconds !== undefined) {
      resolved.gnss_seconds = msg.gnss_seconds;
    }
    else {
      resolved.gnss_seconds = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.north_velocity !== undefined) {
      resolved.north_velocity = msg.north_velocity;
    }
    else {
      resolved.north_velocity = 0.0
    }

    if (msg.east_velocity !== undefined) {
      resolved.east_velocity = msg.east_velocity;
    }
    else {
      resolved.east_velocity = 0.0
    }

    if (msg.up_velocity !== undefined) {
      resolved.up_velocity = msg.up_velocity;
    }
    else {
      resolved.up_velocity = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.ins_status !== undefined) {
      resolved.ins_status = msg.ins_status;
    }
    else {
      resolved.ins_status = 0
    }

    return resolved;
    }
};

module.exports = INSPVAS;
