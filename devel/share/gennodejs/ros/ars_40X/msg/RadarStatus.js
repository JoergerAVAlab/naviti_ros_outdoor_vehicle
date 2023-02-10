// Auto-generated. Do not edit!

// (in-package ars_40X.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RadarStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.read_status = null;
      this.write_status = null;
      this.max_distance = null;
      this.persistent_error = null;
      this.interference = null;
      this.temperature_error = null;
      this.temporary_error = null;
      this.voltage_error = null;
      this.sensor_id = null;
      this.sort_index = null;
      this.radar_power_cfg = null;
      this.ctrl_relay_cfg = null;
      this.output_type_cfg = null;
      this.send_quality_cfg = null;
      this.send_ext_info_cfg = null;
      this.motion_rx_state = null;
      this.rcs_threshold = null;
    }
    else {
      if (initObj.hasOwnProperty('read_status')) {
        this.read_status = initObj.read_status
      }
      else {
        this.read_status = false;
      }
      if (initObj.hasOwnProperty('write_status')) {
        this.write_status = initObj.write_status
      }
      else {
        this.write_status = false;
      }
      if (initObj.hasOwnProperty('max_distance')) {
        this.max_distance = initObj.max_distance
      }
      else {
        this.max_distance = 0;
      }
      if (initObj.hasOwnProperty('persistent_error')) {
        this.persistent_error = initObj.persistent_error
      }
      else {
        this.persistent_error = false;
      }
      if (initObj.hasOwnProperty('interference')) {
        this.interference = initObj.interference
      }
      else {
        this.interference = false;
      }
      if (initObj.hasOwnProperty('temperature_error')) {
        this.temperature_error = initObj.temperature_error
      }
      else {
        this.temperature_error = false;
      }
      if (initObj.hasOwnProperty('temporary_error')) {
        this.temporary_error = initObj.temporary_error
      }
      else {
        this.temporary_error = false;
      }
      if (initObj.hasOwnProperty('voltage_error')) {
        this.voltage_error = initObj.voltage_error
      }
      else {
        this.voltage_error = false;
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = 0;
      }
      if (initObj.hasOwnProperty('sort_index')) {
        this.sort_index = initObj.sort_index
      }
      else {
        this.sort_index = 0;
      }
      if (initObj.hasOwnProperty('radar_power_cfg')) {
        this.radar_power_cfg = initObj.radar_power_cfg
      }
      else {
        this.radar_power_cfg = 0;
      }
      if (initObj.hasOwnProperty('ctrl_relay_cfg')) {
        this.ctrl_relay_cfg = initObj.ctrl_relay_cfg
      }
      else {
        this.ctrl_relay_cfg = false;
      }
      if (initObj.hasOwnProperty('output_type_cfg')) {
        this.output_type_cfg = initObj.output_type_cfg
      }
      else {
        this.output_type_cfg = 0;
      }
      if (initObj.hasOwnProperty('send_quality_cfg')) {
        this.send_quality_cfg = initObj.send_quality_cfg
      }
      else {
        this.send_quality_cfg = false;
      }
      if (initObj.hasOwnProperty('send_ext_info_cfg')) {
        this.send_ext_info_cfg = initObj.send_ext_info_cfg
      }
      else {
        this.send_ext_info_cfg = false;
      }
      if (initObj.hasOwnProperty('motion_rx_state')) {
        this.motion_rx_state = initObj.motion_rx_state
      }
      else {
        this.motion_rx_state = 0;
      }
      if (initObj.hasOwnProperty('rcs_threshold')) {
        this.rcs_threshold = initObj.rcs_threshold
      }
      else {
        this.rcs_threshold = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarStatus
    // Serialize message field [read_status]
    bufferOffset = _serializer.bool(obj.read_status, buffer, bufferOffset);
    // Serialize message field [write_status]
    bufferOffset = _serializer.bool(obj.write_status, buffer, bufferOffset);
    // Serialize message field [max_distance]
    bufferOffset = _serializer.int16(obj.max_distance, buffer, bufferOffset);
    // Serialize message field [persistent_error]
    bufferOffset = _serializer.bool(obj.persistent_error, buffer, bufferOffset);
    // Serialize message field [interference]
    bufferOffset = _serializer.bool(obj.interference, buffer, bufferOffset);
    // Serialize message field [temperature_error]
    bufferOffset = _serializer.bool(obj.temperature_error, buffer, bufferOffset);
    // Serialize message field [temporary_error]
    bufferOffset = _serializer.bool(obj.temporary_error, buffer, bufferOffset);
    // Serialize message field [voltage_error]
    bufferOffset = _serializer.bool(obj.voltage_error, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.int8(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [sort_index]
    bufferOffset = _serializer.int8(obj.sort_index, buffer, bufferOffset);
    // Serialize message field [radar_power_cfg]
    bufferOffset = _serializer.int8(obj.radar_power_cfg, buffer, bufferOffset);
    // Serialize message field [ctrl_relay_cfg]
    bufferOffset = _serializer.bool(obj.ctrl_relay_cfg, buffer, bufferOffset);
    // Serialize message field [output_type_cfg]
    bufferOffset = _serializer.int8(obj.output_type_cfg, buffer, bufferOffset);
    // Serialize message field [send_quality_cfg]
    bufferOffset = _serializer.bool(obj.send_quality_cfg, buffer, bufferOffset);
    // Serialize message field [send_ext_info_cfg]
    bufferOffset = _serializer.bool(obj.send_ext_info_cfg, buffer, bufferOffset);
    // Serialize message field [motion_rx_state]
    bufferOffset = _serializer.int8(obj.motion_rx_state, buffer, bufferOffset);
    // Serialize message field [rcs_threshold]
    bufferOffset = _serializer.bool(obj.rcs_threshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarStatus
    let len;
    let data = new RadarStatus(null);
    // Deserialize message field [read_status]
    data.read_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [write_status]
    data.write_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [max_distance]
    data.max_distance = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [persistent_error]
    data.persistent_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [interference]
    data.interference = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [temperature_error]
    data.temperature_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [temporary_error]
    data.temporary_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [voltage_error]
    data.voltage_error = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [sort_index]
    data.sort_index = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [radar_power_cfg]
    data.radar_power_cfg = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ctrl_relay_cfg]
    data.ctrl_relay_cfg = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [output_type_cfg]
    data.output_type_cfg = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [send_quality_cfg]
    data.send_quality_cfg = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [send_ext_info_cfg]
    data.send_ext_info_cfg = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motion_rx_state]
    data.motion_rx_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [rcs_threshold]
    data.rcs_threshold = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ars_40X/RadarStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6ad107409c19b7574ba9aa33a2c30f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool read_status
    bool write_status
    int16 max_distance
    bool persistent_error
    bool interference
    bool temperature_error
    bool temporary_error
    bool voltage_error
    int8 sensor_id
    int8 sort_index
    int8 radar_power_cfg
    bool ctrl_relay_cfg
    int8 output_type_cfg
    bool send_quality_cfg
    bool send_ext_info_cfg
    int8 motion_rx_state
    bool rcs_threshold
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarStatus(null);
    if (msg.read_status !== undefined) {
      resolved.read_status = msg.read_status;
    }
    else {
      resolved.read_status = false
    }

    if (msg.write_status !== undefined) {
      resolved.write_status = msg.write_status;
    }
    else {
      resolved.write_status = false
    }

    if (msg.max_distance !== undefined) {
      resolved.max_distance = msg.max_distance;
    }
    else {
      resolved.max_distance = 0
    }

    if (msg.persistent_error !== undefined) {
      resolved.persistent_error = msg.persistent_error;
    }
    else {
      resolved.persistent_error = false
    }

    if (msg.interference !== undefined) {
      resolved.interference = msg.interference;
    }
    else {
      resolved.interference = false
    }

    if (msg.temperature_error !== undefined) {
      resolved.temperature_error = msg.temperature_error;
    }
    else {
      resolved.temperature_error = false
    }

    if (msg.temporary_error !== undefined) {
      resolved.temporary_error = msg.temporary_error;
    }
    else {
      resolved.temporary_error = false
    }

    if (msg.voltage_error !== undefined) {
      resolved.voltage_error = msg.voltage_error;
    }
    else {
      resolved.voltage_error = false
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = 0
    }

    if (msg.sort_index !== undefined) {
      resolved.sort_index = msg.sort_index;
    }
    else {
      resolved.sort_index = 0
    }

    if (msg.radar_power_cfg !== undefined) {
      resolved.radar_power_cfg = msg.radar_power_cfg;
    }
    else {
      resolved.radar_power_cfg = 0
    }

    if (msg.ctrl_relay_cfg !== undefined) {
      resolved.ctrl_relay_cfg = msg.ctrl_relay_cfg;
    }
    else {
      resolved.ctrl_relay_cfg = false
    }

    if (msg.output_type_cfg !== undefined) {
      resolved.output_type_cfg = msg.output_type_cfg;
    }
    else {
      resolved.output_type_cfg = 0
    }

    if (msg.send_quality_cfg !== undefined) {
      resolved.send_quality_cfg = msg.send_quality_cfg;
    }
    else {
      resolved.send_quality_cfg = false
    }

    if (msg.send_ext_info_cfg !== undefined) {
      resolved.send_ext_info_cfg = msg.send_ext_info_cfg;
    }
    else {
      resolved.send_ext_info_cfg = false
    }

    if (msg.motion_rx_state !== undefined) {
      resolved.motion_rx_state = msg.motion_rx_state;
    }
    else {
      resolved.motion_rx_state = 0
    }

    if (msg.rcs_threshold !== undefined) {
      resolved.rcs_threshold = msg.rcs_threshold;
    }
    else {
      resolved.rcs_threshold = false
    }

    return resolved;
    }
};

module.exports = RadarStatus;
