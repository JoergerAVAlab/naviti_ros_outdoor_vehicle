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

class CommonShortHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.length = null;
      this.id = null;
      this.gnss_week = null;
      this.gnss_mili = null;
    }
    else {
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommonShortHeader
    // Serialize message field [length]
    bufferOffset = _serializer.uint8(obj.length, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [gnss_week]
    bufferOffset = _serializer.uint16(obj.gnss_week, buffer, bufferOffset);
    // Serialize message field [gnss_mili]
    bufferOffset = _serializer.int32(obj.gnss_mili, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommonShortHeader
    let len;
    let data = new CommonShortHeader(null);
    // Deserialize message field [length]
    data.length = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gnss_week]
    data.gnss_week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gnss_mili]
    data.gnss_mili = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'novatel_pkg/CommonShortHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24bd93da6a66ad1feeb30cf4cc10f233';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CommonShortHeader(null);
    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
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

    return resolved;
    }
};

module.exports = CommonShortHeader;
