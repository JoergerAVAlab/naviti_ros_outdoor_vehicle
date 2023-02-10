// Auto-generated. Do not edit!

// (in-package novatel_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CommonLongHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head_length = null;
      this.id = null;
      this.msg_type = null;
      this.port_addr = null;
      this.length = null;
      this.sequence = null;
      this.idle_time = null;
      this.time_status = null;
      this.gnss_week = null;
      this.gnss_mili = null;
      this.reserved = null;
      this.software_version = null;
    }
    else {
      if (initObj.hasOwnProperty('head_length')) {
        this.head_length = initObj.head_length
      }
      else {
        this.head_length = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('msg_type')) {
        this.msg_type = initObj.msg_type
      }
      else {
        this.msg_type = 0;
      }
      if (initObj.hasOwnProperty('port_addr')) {
        this.port_addr = initObj.port_addr
      }
      else {
        this.port_addr = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = 0;
      }
      if (initObj.hasOwnProperty('idle_time')) {
        this.idle_time = initObj.idle_time
      }
      else {
        this.idle_time = 0;
      }
      if (initObj.hasOwnProperty('time_status')) {
        this.time_status = initObj.time_status
      }
      else {
        this.time_status = 0;
      }
      if (initObj.hasOwnProperty('gnss_week')) {
        this.gnss_week = initObj.gnss_week
      }
      else {
        this.gnss_week = 0;
      }
      if (initObj.hasOwnProperty('gnss_mili')) {
        this.gnss_mili = initObj.gnss_mili
      }
      else {
        this.gnss_mili = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
      if (initObj.hasOwnProperty('software_version')) {
        this.software_version = initObj.software_version
      }
      else {
        this.software_version = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonLongHeader
    // Serialize message field [head_length]
    bufferOffset = _serializer.uint8(obj.head_length, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [msg_type]
    bufferOffset = _serializer.uint8(obj.msg_type, buffer, bufferOffset);
    // Serialize message field [port_addr]
    bufferOffset = _serializer.uint8(obj.port_addr, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.uint16(obj.length, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = _serializer.uint16(obj.sequence, buffer, bufferOffset);
    // Serialize message field [idle_time]
    bufferOffset = _serializer.uint8(obj.idle_time, buffer, bufferOffset);
    // Serialize message field [time_status]
    bufferOffset = _serializer.uint8(obj.time_status, buffer, bufferOffset);
    // Serialize message field [gnss_week]
    bufferOffset = _serializer.uint16(obj.gnss_week, buffer, bufferOffset);
    // Serialize message field [gnss_mili]
    bufferOffset = _serializer.int32(obj.gnss_mili, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint16(obj.reserved, buffer, bufferOffset);
    // Serialize message field [software_version]
    bufferOffset = _serializer.uint16(obj.software_version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonLongHeader
    let len;
    let data = new CommonLongHeader(null);
    // Deserialize message field [head_length]
    data.head_length = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [msg_type]
    data.msg_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [port_addr]
    data.port_addr = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [idle_time]
    data.idle_time = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time_status]
    data.time_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gnss_week]
    data.gnss_week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gnss_mili]
    data.gnss_mili = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [software_version]
    data.software_version = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'novatel_pkg/CommonLongHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f5766af824e367c70c99b070c50ec08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Long Binary Header NovAtel
    # Author: Brandon Medellin
    # Date: 2/1/2023
    
    # Length of the header
    uint8 head_length
    
    # Message ID of the log being output
    uint16 id
    
    # Measurement source, format, response bit.
    uint8 msg_type
    
    # Port address
    uint8 port_addr
    
    # Message length not including header (25 bytes) nor CRC (4 bytes)
    uint16 length
    
    # Used for multiple related logs. It is a number that counts down from N-1 to 0 where N is the number of related logs ...
    uint16 sequence
    
    # Time the processor is idle, calculated once per second - more in documentation
    uint8 idle_time
    
    # Indicates the quality of the gps reference time
    uint8 time_status
    
    # GNSS week number
    uint16 gnss_week
    
    # GNSS Miliseconds from beginning of GNSS week
    int32 gnss_mili
    
    # Reserved for internal use
    uint16 reserved
    
    # A value (0-65535) representing the receiver software build number
    uint16 software_version
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommonLongHeader(null);
    if (msg.head_length !== undefined) {
      resolved.head_length = msg.head_length;
    }
    else {
      resolved.head_length = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.msg_type !== undefined) {
      resolved.msg_type = msg.msg_type;
    }
    else {
      resolved.msg_type = 0
    }

    if (msg.port_addr !== undefined) {
      resolved.port_addr = msg.port_addr;
    }
    else {
      resolved.port_addr = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = 0
    }

    if (msg.idle_time !== undefined) {
      resolved.idle_time = msg.idle_time;
    }
    else {
      resolved.idle_time = 0
    }

    if (msg.time_status !== undefined) {
      resolved.time_status = msg.time_status;
    }
    else {
      resolved.time_status = 0
    }

    if (msg.gnss_week !== undefined) {
      resolved.gnss_week = msg.gnss_week;
    }
    else {
      resolved.gnss_week = 0
    }

    if (msg.gnss_mili !== undefined) {
      resolved.gnss_mili = msg.gnss_mili;
    }
    else {
      resolved.gnss_mili = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    if (msg.software_version !== undefined) {
      resolved.software_version = msg.software_version;
    }
    else {
      resolved.software_version = 0
    }

    return resolved;
    }
};

module.exports = CommonLongHeader;
