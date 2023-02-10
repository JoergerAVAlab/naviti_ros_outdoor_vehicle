; Auto-generated. Do not edit!


(cl:in-package ars_40X-msg)


;//! \htmlinclude RadarStatus.msg.html

(cl:defclass <RadarStatus> (roslisp-msg-protocol:ros-message)
  ((read_status
    :reader read_status
    :initarg :read_status
    :type cl:boolean
    :initform cl:nil)
   (write_status
    :reader write_status
    :initarg :write_status
    :type cl:boolean
    :initform cl:nil)
   (max_distance
    :reader max_distance
    :initarg :max_distance
    :type cl:fixnum
    :initform 0)
   (persistent_error
    :reader persistent_error
    :initarg :persistent_error
    :type cl:boolean
    :initform cl:nil)
   (interference
    :reader interference
    :initarg :interference
    :type cl:boolean
    :initform cl:nil)
   (temperature_error
    :reader temperature_error
    :initarg :temperature_error
    :type cl:boolean
    :initform cl:nil)
   (temporary_error
    :reader temporary_error
    :initarg :temporary_error
    :type cl:boolean
    :initform cl:nil)
   (voltage_error
    :reader voltage_error
    :initarg :voltage_error
    :type cl:boolean
    :initform cl:nil)
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:fixnum
    :initform 0)
   (sort_index
    :reader sort_index
    :initarg :sort_index
    :type cl:fixnum
    :initform 0)
   (radar_power_cfg
    :reader radar_power_cfg
    :initarg :radar_power_cfg
    :type cl:fixnum
    :initform 0)
   (ctrl_relay_cfg
    :reader ctrl_relay_cfg
    :initarg :ctrl_relay_cfg
    :type cl:boolean
    :initform cl:nil)
   (output_type_cfg
    :reader output_type_cfg
    :initarg :output_type_cfg
    :type cl:fixnum
    :initform 0)
   (send_quality_cfg
    :reader send_quality_cfg
    :initarg :send_quality_cfg
    :type cl:boolean
    :initform cl:nil)
   (send_ext_info_cfg
    :reader send_ext_info_cfg
    :initarg :send_ext_info_cfg
    :type cl:boolean
    :initform cl:nil)
   (motion_rx_state
    :reader motion_rx_state
    :initarg :motion_rx_state
    :type cl:fixnum
    :initform 0)
   (rcs_threshold
    :reader rcs_threshold
    :initarg :rcs_threshold
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RadarStatus (<RadarStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-msg:<RadarStatus> is deprecated: use ars_40X-msg:RadarStatus instead.")))

(cl:ensure-generic-function 'read_status-val :lambda-list '(m))
(cl:defmethod read_status-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:read_status-val is deprecated.  Use ars_40X-msg:read_status instead.")
  (read_status m))

(cl:ensure-generic-function 'write_status-val :lambda-list '(m))
(cl:defmethod write_status-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:write_status-val is deprecated.  Use ars_40X-msg:write_status instead.")
  (write_status m))

(cl:ensure-generic-function 'max_distance-val :lambda-list '(m))
(cl:defmethod max_distance-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:max_distance-val is deprecated.  Use ars_40X-msg:max_distance instead.")
  (max_distance m))

(cl:ensure-generic-function 'persistent_error-val :lambda-list '(m))
(cl:defmethod persistent_error-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:persistent_error-val is deprecated.  Use ars_40X-msg:persistent_error instead.")
  (persistent_error m))

(cl:ensure-generic-function 'interference-val :lambda-list '(m))
(cl:defmethod interference-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:interference-val is deprecated.  Use ars_40X-msg:interference instead.")
  (interference m))

(cl:ensure-generic-function 'temperature_error-val :lambda-list '(m))
(cl:defmethod temperature_error-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:temperature_error-val is deprecated.  Use ars_40X-msg:temperature_error instead.")
  (temperature_error m))

(cl:ensure-generic-function 'temporary_error-val :lambda-list '(m))
(cl:defmethod temporary_error-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:temporary_error-val is deprecated.  Use ars_40X-msg:temporary_error instead.")
  (temporary_error m))

(cl:ensure-generic-function 'voltage_error-val :lambda-list '(m))
(cl:defmethod voltage_error-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:voltage_error-val is deprecated.  Use ars_40X-msg:voltage_error instead.")
  (voltage_error m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:sensor_id-val is deprecated.  Use ars_40X-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'sort_index-val :lambda-list '(m))
(cl:defmethod sort_index-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:sort_index-val is deprecated.  Use ars_40X-msg:sort_index instead.")
  (sort_index m))

(cl:ensure-generic-function 'radar_power_cfg-val :lambda-list '(m))
(cl:defmethod radar_power_cfg-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:radar_power_cfg-val is deprecated.  Use ars_40X-msg:radar_power_cfg instead.")
  (radar_power_cfg m))

(cl:ensure-generic-function 'ctrl_relay_cfg-val :lambda-list '(m))
(cl:defmethod ctrl_relay_cfg-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:ctrl_relay_cfg-val is deprecated.  Use ars_40X-msg:ctrl_relay_cfg instead.")
  (ctrl_relay_cfg m))

(cl:ensure-generic-function 'output_type_cfg-val :lambda-list '(m))
(cl:defmethod output_type_cfg-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:output_type_cfg-val is deprecated.  Use ars_40X-msg:output_type_cfg instead.")
  (output_type_cfg m))

(cl:ensure-generic-function 'send_quality_cfg-val :lambda-list '(m))
(cl:defmethod send_quality_cfg-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:send_quality_cfg-val is deprecated.  Use ars_40X-msg:send_quality_cfg instead.")
  (send_quality_cfg m))

(cl:ensure-generic-function 'send_ext_info_cfg-val :lambda-list '(m))
(cl:defmethod send_ext_info_cfg-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:send_ext_info_cfg-val is deprecated.  Use ars_40X-msg:send_ext_info_cfg instead.")
  (send_ext_info_cfg m))

(cl:ensure-generic-function 'motion_rx_state-val :lambda-list '(m))
(cl:defmethod motion_rx_state-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:motion_rx_state-val is deprecated.  Use ars_40X-msg:motion_rx_state instead.")
  (motion_rx_state m))

(cl:ensure-generic-function 'rcs_threshold-val :lambda-list '(m))
(cl:defmethod rcs_threshold-val ((m <RadarStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:rcs_threshold-val is deprecated.  Use ars_40X-msg:rcs_threshold instead.")
  (rcs_threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarStatus>) ostream)
  "Serializes a message object of type '<RadarStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'read_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'write_status) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'max_distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'persistent_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'interference) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'temperature_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'temporary_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'voltage_error) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sensor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sort_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'radar_power_cfg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ctrl_relay_cfg) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'output_type_cfg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'send_quality_cfg) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'send_ext_info_cfg) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'motion_rx_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rcs_threshold) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarStatus>) istream)
  "Deserializes a message object of type '<RadarStatus>"
    (cl:setf (cl:slot-value msg 'read_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'write_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_distance) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'persistent_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'interference) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'temperature_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'temporary_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'voltage_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sort_index) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'radar_power_cfg) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'ctrl_relay_cfg) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output_type_cfg) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'send_quality_cfg) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'send_ext_info_cfg) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motion_rx_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'rcs_threshold) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarStatus>)))
  "Returns string type for a message object of type '<RadarStatus>"
  "ars_40X/RadarStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarStatus)))
  "Returns string type for a message object of type 'RadarStatus"
  "ars_40X/RadarStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarStatus>)))
  "Returns md5sum for a message object of type '<RadarStatus>"
  "d6ad107409c19b7574ba9aa33a2c30f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarStatus)))
  "Returns md5sum for a message object of type 'RadarStatus"
  "d6ad107409c19b7574ba9aa33a2c30f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarStatus>)))
  "Returns full string definition for message of type '<RadarStatus>"
  (cl:format cl:nil "bool read_status~%bool write_status~%int16 max_distance~%bool persistent_error~%bool interference~%bool temperature_error~%bool temporary_error~%bool voltage_error~%int8 sensor_id~%int8 sort_index~%int8 radar_power_cfg~%bool ctrl_relay_cfg~%int8 output_type_cfg~%bool send_quality_cfg~%bool send_ext_info_cfg~%int8 motion_rx_state~%bool rcs_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarStatus)))
  "Returns full string definition for message of type 'RadarStatus"
  (cl:format cl:nil "bool read_status~%bool write_status~%int16 max_distance~%bool persistent_error~%bool interference~%bool temperature_error~%bool temporary_error~%bool voltage_error~%int8 sensor_id~%int8 sort_index~%int8 radar_power_cfg~%bool ctrl_relay_cfg~%int8 output_type_cfg~%bool send_quality_cfg~%bool send_ext_info_cfg~%int8 motion_rx_state~%bool rcs_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarStatus>))
  (cl:+ 0
     1
     1
     2
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarStatus
    (cl:cons ':read_status (read_status msg))
    (cl:cons ':write_status (write_status msg))
    (cl:cons ':max_distance (max_distance msg))
    (cl:cons ':persistent_error (persistent_error msg))
    (cl:cons ':interference (interference msg))
    (cl:cons ':temperature_error (temperature_error msg))
    (cl:cons ':temporary_error (temporary_error msg))
    (cl:cons ':voltage_error (voltage_error msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':sort_index (sort_index msg))
    (cl:cons ':radar_power_cfg (radar_power_cfg msg))
    (cl:cons ':ctrl_relay_cfg (ctrl_relay_cfg msg))
    (cl:cons ':output_type_cfg (output_type_cfg msg))
    (cl:cons ':send_quality_cfg (send_quality_cfg msg))
    (cl:cons ':send_ext_info_cfg (send_ext_info_cfg msg))
    (cl:cons ':motion_rx_state (motion_rx_state msg))
    (cl:cons ':rcs_threshold (rcs_threshold msg))
))
