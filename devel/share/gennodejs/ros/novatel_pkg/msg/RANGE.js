// Auto-generated. Do not edit!

// (in-package novatel_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CommonLongHeader = require('./CommonLongHeader.js');

//-----------------------------------------------------------

class RANGE {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.num_obs = null;
      this.prn = null;
      this.glofreq = null;
      this.psr = null;
      this.psr_sig = null;
      this.adr = null;
      this.adr_sig = null;
      this.dopp = null;
      this.c_no = null;
      this.locktime = null;
      this.ch_tr_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new CommonLongHeader();
      }
      if (initObj.hasOwnProperty('num_obs')) {
        this.num_obs = initObj.num_obs
      }
      else {
        this.num_obs = 0;
      }
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = 0;
      }
      if (initObj.hasOwnProperty('glofreq')) {
        this.glofreq = initObj.glofreq
      }
      else {
        this.glofreq = 0;
      }
      if (initObj.hasOwnProperty('psr')) {
        this.psr = initObj.psr
      }
      else {
        this.psr = 0.0;
      }
      if (initObj.hasOwnProperty('psr_sig')) {
        this.psr_sig = initObj.psr_sig
      }
      else {
        this.psr_sig = 0.0;
      }
      if (initObj.hasOwnProperty('adr')) {
        this.adr = initObj.adr
      }
      else {
        this.adr = 0.0;
      }
      if (initObj.hasOwnProperty('adr_sig')) {
        this.adr_sig = initObj.adr_sig
      }
      else {
        this.adr_sig = 0.0;
      }
      if (initObj.hasOwnProperty('dopp')) {
        this.dopp = initObj.dopp
      }
      else {
        this.dopp = 0.0;
      }
      if (initObj.hasOwnProperty('c_no')) {
        this.c_no = initObj.c_no
      }
      else {
        this.c_no = 0.0;
      }
      if (initObj.hasOwnProperty('locktime')) {
        this.locktime = initObj.locktime
      }
      else {
        this.locktime = 0.0;
      }
      if (initObj.hasOwnProperty('ch_tr_status')) {
        this.ch_tr_status = initObj.ch_tr_status
      }
      else {
        this.ch_tr_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RANGE
    // Serialize message field [header]
    bufferOffset = CommonLongHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [num_obs]
    bufferOffset = _serializer.uint32(obj.num_obs, buffer, bufferOffset);
    // Serialize message field [prn]
    bufferOffset = _serializer.uint16(obj.prn, buffer, bufferOffset);
    // Serialize message field [glofreq]
    bufferOffset = _serializer.uint16(obj.glofreq, buffer, bufferOffset);
    // Serialize message field [psr]
    bufferOffset = _serializer.float64(obj.psr, buffer, bufferOffset);
    // Serialize message field [psr_sig]
    bufferOffset = _serializer.float32(obj.psr_sig, buffer, bufferOffset);
    // Serialize message field [adr]
    bufferOffset = _serializer.float64(obj.adr, buffer, bufferOffset);
    // Serialize message field [adr_sig]
    bufferOffset = _serializer.float32(obj.adr_sig, buffer, bufferOffset);
    // Serialize message field [dopp]
    bufferOffset = _serializer.float32(obj.dopp, buffer, bufferOffset);
    // Serialize message field [c_no]
    bufferOffset = _serializer.float32(obj.c_no, buffer, bufferOffset);
    // Serialize message field [locktime]
    bufferOffset = _serializer.float32(obj.locktime, buffer, bufferOffset);
    // Serialize message field [ch_tr_status]
    bufferOffset = _serializer.uint32(obj.ch_tr_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RANGE
    let len;
    let data = new RANGE(null);
    // Deserialize message field [header]
    data.header = CommonLongHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_obs]
    data.num_obs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [prn]
    data.prn = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [glofreq]
    data.glofreq = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [psr]
    data.psr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psr_sig]
    data.psr_sig = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [adr]
    data.adr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [adr_sig]
    data.adr_sig = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dopp]
    data.dopp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c_no]
    data.c_no = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [locktime]
    data.locktime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ch_tr_status]
    data.ch_tr_status = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 69;
  }

  static datatype() {
    // Returns string type for a message object
    return 'novatel_pkg/RANGE';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec2ee37b6f94d56550d64b98028bbcfe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # RANGE ID: 43
    # Put RANGEB for binary when connected with NovAtel Application Suite
    # Author: Brandon Medellin
    # Date: 2/1/2023
    
    novatel_pkg/CommonLongHeader header
    
    # Total number of observations for the log uniquely identified by the PRN
    uint32 num_obs
    
    # ------------------------------------------------------------ 
    
    # Satellite PRN number of range measurement
    uint16 prn
    
    # GLONASS Frequency + 7
    uint16 glofreq
    
    # Psuedorange measurement (m)
    float64 psr
    
    # Psuedorange measurement standard deviation (m)
    float32 psr_sig
    
    # Carrier phase, in cycles (accumulated Doppler range)
    float64 adr
    
    # Estimated carrier phase standard deviation (cycles)
    float32 adr_sig
    
    # Instantaneous carrier Doppler frequency (Hz)
    float32 dopp
    
    # Carrier to noise density ratio
    float32 c_no
    
    # Number of seconds of continuous tracking (no cycles slipping)
    float32 locktime
    
    # Tracking status 
    uint32 ch_tr_status
    
    # ------------------------------------------------------------
    
    
    ================================================================================
    MSG: novatel_pkg/CommonLongHeader
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
    const resolved = new RANGE(null);
    if (msg.header !== undefined) {
      resolved.header = CommonLongHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new CommonLongHeader()
    }

    if (msg.num_obs !== undefined) {
      resolved.num_obs = msg.num_obs;
    }
    else {
      resolved.num_obs = 0
    }

    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = 0
    }

    if (msg.glofreq !== undefined) {
      resolved.glofreq = msg.glofreq;
    }
    else {
      resolved.glofreq = 0
    }

    if (msg.psr !== undefined) {
      resolved.psr = msg.psr;
    }
    else {
      resolved.psr = 0.0
    }

    if (msg.psr_sig !== undefined) {
      resolved.psr_sig = msg.psr_sig;
    }
    else {
      resolved.psr_sig = 0.0
    }

    if (msg.adr !== undefined) {
      resolved.adr = msg.adr;
    }
    else {
      resolved.adr = 0.0
    }

    if (msg.adr_sig !== undefined) {
      resolved.adr_sig = msg.adr_sig;
    }
    else {
      resolved.adr_sig = 0.0
    }

    if (msg.dopp !== undefined) {
      resolved.dopp = msg.dopp;
    }
    else {
      resolved.dopp = 0.0
    }

    if (msg.c_no !== undefined) {
      resolved.c_no = msg.c_no;
    }
    else {
      resolved.c_no = 0.0
    }

    if (msg.locktime !== undefined) {
      resolved.locktime = msg.locktime;
    }
    else {
      resolved.locktime = 0.0
    }

    if (msg.ch_tr_status !== undefined) {
      resolved.ch_tr_status = msg.ch_tr_status;
    }
    else {
      resolved.ch_tr_status = 0
    }

    return resolved;
    }
};

module.exports = RANGE;
