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

class BESTPOS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sol_stat = null;
      this.pos_type = null;
      this.lat = null;
      this.lon = null;
      this.hgt = null;
      this.undulation = null;
      this.datum_id = null;
      this.lat_std = null;
      this.long_std = null;
      this.hgt_std = null;
      this.stn_id = null;
      this.diff_age = null;
      this.sol_age = null;
      this.num_sats = null;
      this.num_sol_sats = null;
      this.num_sol_l1_sats = null;
      this.num_sol_multi_sats = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new CommonLongHeader();
      }
      if (initObj.hasOwnProperty('sol_stat')) {
        this.sol_stat = initObj.sol_stat
      }
      else {
        this.sol_stat = 0;
      }
      if (initObj.hasOwnProperty('pos_type')) {
        this.pos_type = initObj.pos_type
      }
      else {
        this.pos_type = 0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('hgt')) {
        this.hgt = initObj.hgt
      }
      else {
        this.hgt = 0.0;
      }
      if (initObj.hasOwnProperty('undulation')) {
        this.undulation = initObj.undulation
      }
      else {
        this.undulation = 0.0;
      }
      if (initObj.hasOwnProperty('datum_id')) {
        this.datum_id = initObj.datum_id
      }
      else {
        this.datum_id = 0;
      }
      if (initObj.hasOwnProperty('lat_std')) {
        this.lat_std = initObj.lat_std
      }
      else {
        this.lat_std = 0.0;
      }
      if (initObj.hasOwnProperty('long_std')) {
        this.long_std = initObj.long_std
      }
      else {
        this.long_std = 0.0;
      }
      if (initObj.hasOwnProperty('hgt_std')) {
        this.hgt_std = initObj.hgt_std
      }
      else {
        this.hgt_std = 0.0;
      }
      if (initObj.hasOwnProperty('stn_id')) {
        this.stn_id = initObj.stn_id
      }
      else {
        this.stn_id = '';
      }
      if (initObj.hasOwnProperty('diff_age')) {
        this.diff_age = initObj.diff_age
      }
      else {
        this.diff_age = 0.0;
      }
      if (initObj.hasOwnProperty('sol_age')) {
        this.sol_age = initObj.sol_age
      }
      else {
        this.sol_age = 0.0;
      }
      if (initObj.hasOwnProperty('num_sats')) {
        this.num_sats = initObj.num_sats
      }
      else {
        this.num_sats = 0;
      }
      if (initObj.hasOwnProperty('num_sol_sats')) {
        this.num_sol_sats = initObj.num_sol_sats
      }
      else {
        this.num_sol_sats = 0;
      }
      if (initObj.hasOwnProperty('num_sol_l1_sats')) {
        this.num_sol_l1_sats = initObj.num_sol_l1_sats
      }
      else {
        this.num_sol_l1_sats = 0;
      }
      if (initObj.hasOwnProperty('num_sol_multi_sats')) {
        this.num_sol_multi_sats = initObj.num_sol_multi_sats
      }
      else {
        this.num_sol_multi_sats = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BESTPOS
    // Serialize message field [header]
    bufferOffset = CommonLongHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sol_stat]
    bufferOffset = _serializer.uint32(obj.sol_stat, buffer, bufferOffset);
    // Serialize message field [pos_type]
    bufferOffset = _serializer.uint32(obj.pos_type, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [hgt]
    bufferOffset = _serializer.float64(obj.hgt, buffer, bufferOffset);
    // Serialize message field [undulation]
    bufferOffset = _serializer.float32(obj.undulation, buffer, bufferOffset);
    // Serialize message field [datum_id]
    bufferOffset = _serializer.uint32(obj.datum_id, buffer, bufferOffset);
    // Serialize message field [lat_std]
    bufferOffset = _serializer.float32(obj.lat_std, buffer, bufferOffset);
    // Serialize message field [long_std]
    bufferOffset = _serializer.float32(obj.long_std, buffer, bufferOffset);
    // Serialize message field [hgt_std]
    bufferOffset = _serializer.float32(obj.hgt_std, buffer, bufferOffset);
    // Serialize message field [stn_id]
    bufferOffset = _serializer.string(obj.stn_id, buffer, bufferOffset);
    // Serialize message field [diff_age]
    bufferOffset = _serializer.float32(obj.diff_age, buffer, bufferOffset);
    // Serialize message field [sol_age]
    bufferOffset = _serializer.float32(obj.sol_age, buffer, bufferOffset);
    // Serialize message field [num_sats]
    bufferOffset = _serializer.uint8(obj.num_sats, buffer, bufferOffset);
    // Serialize message field [num_sol_sats]
    bufferOffset = _serializer.uint8(obj.num_sol_sats, buffer, bufferOffset);
    // Serialize message field [num_sol_l1_sats]
    bufferOffset = _serializer.uint8(obj.num_sol_l1_sats, buffer, bufferOffset);
    // Serialize message field [num_sol_multi_sats]
    bufferOffset = _serializer.uint8(obj.num_sol_multi_sats, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BESTPOS
    let len;
    let data = new BESTPOS(null);
    // Deserialize message field [header]
    data.header = CommonLongHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [sol_stat]
    data.sol_stat = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pos_type]
    data.pos_type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hgt]
    data.hgt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [undulation]
    data.undulation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [datum_id]
    data.datum_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [lat_std]
    data.lat_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [long_std]
    data.long_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hgt_std]
    data.hgt_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stn_id]
    data.stn_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [diff_age]
    data.diff_age = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sol_age]
    data.sol_age = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [num_sats]
    data.num_sats = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_sol_sats]
    data.num_sol_sats = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_sol_l1_sats]
    data.num_sol_l1_sats = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_sol_multi_sats]
    data.num_sol_multi_sats = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.stn_id.length;
    return length + 89;
  }

  static datatype() {
    // Returns string type for a message object
    return 'novatel_pkg/BESTPOS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f8dc9710a4cb96033fd5b5ef2cdb331';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # INSPVAS Message ID: 508
    # Author: Brandon Medellin
    # Date: 2/10/2023
    
    novatel_pkg/CommonLongHeader header
    
    # Solution Status 
    uint32 sol_stat
    
    # Position type
    uint32 pos_type
    
    # Latitude 
    float64 lat
    
    # Longitude
    float64 lon
    
    # Height above mean sea level (metres)
    float64 hgt
    
    # undulation
    float32 undulation
    
    # Datum ID Number 
    uint32 datum_id
    
    # Latitude statdard dev
    float32 lat_std
    
    # Longitude standard dev
    float32 long_std
    
    # Height standard dev 
    float32 hgt_std
    
    # Base station ID 
    string stn_id
    
    # Differential age in seconds
    float32 diff_age
    
    # Solution age in seconds
    float32 sol_age
    
    # Number of Satellites tracked 
    uint8 num_sats
    
    # Number of satellites used in solution 
    uint8 num_sol_sats
    
    # Number of satellites  with L1/E1/B1 signals used in solution
    uint8 num_sol_l1_sats
    
    # Number of satellites with multi-frequency signals used in solution
    uint8 num_sol_multi_sats
    
    # Reserved
    
    
    # ext sol stat 
    
    
    # Galileo and BeiDou sig mask 
    
    
    # GPS and GLONASS sig mask
    
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
    const resolved = new BESTPOS(null);
    if (msg.header !== undefined) {
      resolved.header = CommonLongHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new CommonLongHeader()
    }

    if (msg.sol_stat !== undefined) {
      resolved.sol_stat = msg.sol_stat;
    }
    else {
      resolved.sol_stat = 0
    }

    if (msg.pos_type !== undefined) {
      resolved.pos_type = msg.pos_type;
    }
    else {
      resolved.pos_type = 0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.hgt !== undefined) {
      resolved.hgt = msg.hgt;
    }
    else {
      resolved.hgt = 0.0
    }

    if (msg.undulation !== undefined) {
      resolved.undulation = msg.undulation;
    }
    else {
      resolved.undulation = 0.0
    }

    if (msg.datum_id !== undefined) {
      resolved.datum_id = msg.datum_id;
    }
    else {
      resolved.datum_id = 0
    }

    if (msg.lat_std !== undefined) {
      resolved.lat_std = msg.lat_std;
    }
    else {
      resolved.lat_std = 0.0
    }

    if (msg.long_std !== undefined) {
      resolved.long_std = msg.long_std;
    }
    else {
      resolved.long_std = 0.0
    }

    if (msg.hgt_std !== undefined) {
      resolved.hgt_std = msg.hgt_std;
    }
    else {
      resolved.hgt_std = 0.0
    }

    if (msg.stn_id !== undefined) {
      resolved.stn_id = msg.stn_id;
    }
    else {
      resolved.stn_id = ''
    }

    if (msg.diff_age !== undefined) {
      resolved.diff_age = msg.diff_age;
    }
    else {
      resolved.diff_age = 0.0
    }

    if (msg.sol_age !== undefined) {
      resolved.sol_age = msg.sol_age;
    }
    else {
      resolved.sol_age = 0.0
    }

    if (msg.num_sats !== undefined) {
      resolved.num_sats = msg.num_sats;
    }
    else {
      resolved.num_sats = 0
    }

    if (msg.num_sol_sats !== undefined) {
      resolved.num_sol_sats = msg.num_sol_sats;
    }
    else {
      resolved.num_sol_sats = 0
    }

    if (msg.num_sol_l1_sats !== undefined) {
      resolved.num_sol_l1_sats = msg.num_sol_l1_sats;
    }
    else {
      resolved.num_sol_l1_sats = 0
    }

    if (msg.num_sol_multi_sats !== undefined) {
      resolved.num_sol_multi_sats = msg.num_sol_multi_sats;
    }
    else {
      resolved.num_sol_multi_sats = 0
    }

    return resolved;
    }
};

module.exports = BESTPOS;
