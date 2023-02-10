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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RAWIMUSX {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.imu_info = null;
      this.imu_type = null;
      this.gnss_week = null;
      this.gnss_seconds = null;
      this.imu_status = null;
      this.linear_acceleration = null;
      this.angular_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new CommonShortHeader();
      }
      if (initObj.hasOwnProperty('imu_info')) {
        this.imu_info = initObj.imu_info
      }
      else {
        this.imu_info = 0;
      }
      if (initObj.hasOwnProperty('imu_type')) {
        this.imu_type = initObj.imu_type
      }
      else {
        this.imu_type = 0;
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
      if (initObj.hasOwnProperty('imu_status')) {
        this.imu_status = initObj.imu_status
      }
      else {
        this.imu_status = 0;
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RAWIMUSX
    // Serialize message field [header]
    bufferOffset = CommonShortHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [imu_info]
    bufferOffset = _serializer.uint8(obj.imu_info, buffer, bufferOffset);
    // Serialize message field [imu_type]
    bufferOffset = _serializer.uint8(obj.imu_type, buffer, bufferOffset);
    // Serialize message field [gnss_week]
    bufferOffset = _serializer.uint16(obj.gnss_week, buffer, bufferOffset);
    // Serialize message field [gnss_seconds]
    bufferOffset = _serializer.float64(obj.gnss_seconds, buffer, bufferOffset);
    // Serialize message field [imu_status]
    bufferOffset = _serializer.uint32(obj.imu_status, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RAWIMUSX
    let len;
    let data = new RAWIMUSX(null);
    // Deserialize message field [header]
    data.header = CommonShortHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu_info]
    data.imu_info = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [imu_type]
    data.imu_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gnss_week]
    data.gnss_week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gnss_seconds]
    data.gnss_seconds = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_status]
    data.imu_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'novatel_pkg/RAWIMUSX';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5a6c96f74c4727c7a4eea6a9a18c400';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # INSPVAS Message ID: 508
    # Author: Brandon Medellin
    # Date: 2/1/2023
    
    novatel_pkg/CommonShortHeader header
    
    # IMU Info Bits 0 -> IMU Error Detected, 1 -> IMU data is encrypted, 2 to 7 -> Reserved
    uint8 imu_info
    
    # IMU Tyoe identifier
    uint8 imu_type
    
    # GNSS Week
    uint16 gnss_week
    
    # Seconds from GNSS week start
    float64 gnss_seconds
    
    # Status of the IMU
    uint32 imu_status
    
    # Linear Accelerations along Z, Y, X axes
    geometry_msgs/Vector3 linear_acceleration
    
    # Angular Velocity around Z, Y, X axes
    geometry_msgs/Vector3 angular_velocity
    
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
    const resolved = new RAWIMUSX(null);
    if (msg.header !== undefined) {
      resolved.header = CommonShortHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new CommonShortHeader()
    }

    if (msg.imu_info !== undefined) {
      resolved.imu_info = msg.imu_info;
    }
    else {
      resolved.imu_info = 0
    }

    if (msg.imu_type !== undefined) {
      resolved.imu_type = msg.imu_type;
    }
    else {
      resolved.imu_type = 0
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

    if (msg.imu_status !== undefined) {
      resolved.imu_status = msg.imu_status;
    }
    else {
      resolved.imu_status = 0
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = RAWIMUSX;
