; Auto-generated. Do not edit!


(cl:in-package novatel_pkg-msg)


;//! \htmlinclude RANGE.msg.html

(cl:defclass <RANGE> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type novatel_pkg-msg:CommonLongHeader
    :initform (cl:make-instance 'novatel_pkg-msg:CommonLongHeader))
   (num_obs
    :reader num_obs
    :initarg :num_obs
    :type cl:integer
    :initform 0)
   (prn
    :reader prn
    :initarg :prn
    :type cl:fixnum
    :initform 0)
   (glofreq
    :reader glofreq
    :initarg :glofreq
    :type cl:fixnum
    :initform 0)
   (psr
    :reader psr
    :initarg :psr
    :type cl:float
    :initform 0.0)
   (psr_sig
    :reader psr_sig
    :initarg :psr_sig
    :type cl:float
    :initform 0.0)
   (adr
    :reader adr
    :initarg :adr
    :type cl:float
    :initform 0.0)
   (adr_sig
    :reader adr_sig
    :initarg :adr_sig
    :type cl:float
    :initform 0.0)
   (dopp
    :reader dopp
    :initarg :dopp
    :type cl:float
    :initform 0.0)
   (c_no
    :reader c_no
    :initarg :c_no
    :type cl:float
    :initform 0.0)
   (locktime
    :reader locktime
    :initarg :locktime
    :type cl:float
    :initform 0.0)
   (ch_tr_status
    :reader ch_tr_status
    :initarg :ch_tr_status
    :type cl:integer
    :initform 0))
)

(cl:defclass RANGE (<RANGE>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RANGE>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RANGE)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_pkg-msg:<RANGE> is deprecated: use novatel_pkg-msg:RANGE instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:header-val is deprecated.  Use novatel_pkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num_obs-val :lambda-list '(m))
(cl:defmethod num_obs-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:num_obs-val is deprecated.  Use novatel_pkg-msg:num_obs instead.")
  (num_obs m))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:prn-val is deprecated.  Use novatel_pkg-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'glofreq-val :lambda-list '(m))
(cl:defmethod glofreq-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:glofreq-val is deprecated.  Use novatel_pkg-msg:glofreq instead.")
  (glofreq m))

(cl:ensure-generic-function 'psr-val :lambda-list '(m))
(cl:defmethod psr-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:psr-val is deprecated.  Use novatel_pkg-msg:psr instead.")
  (psr m))

(cl:ensure-generic-function 'psr_sig-val :lambda-list '(m))
(cl:defmethod psr_sig-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:psr_sig-val is deprecated.  Use novatel_pkg-msg:psr_sig instead.")
  (psr_sig m))

(cl:ensure-generic-function 'adr-val :lambda-list '(m))
(cl:defmethod adr-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:adr-val is deprecated.  Use novatel_pkg-msg:adr instead.")
  (adr m))

(cl:ensure-generic-function 'adr_sig-val :lambda-list '(m))
(cl:defmethod adr_sig-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:adr_sig-val is deprecated.  Use novatel_pkg-msg:adr_sig instead.")
  (adr_sig m))

(cl:ensure-generic-function 'dopp-val :lambda-list '(m))
(cl:defmethod dopp-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:dopp-val is deprecated.  Use novatel_pkg-msg:dopp instead.")
  (dopp m))

(cl:ensure-generic-function 'c_no-val :lambda-list '(m))
(cl:defmethod c_no-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:c_no-val is deprecated.  Use novatel_pkg-msg:c_no instead.")
  (c_no m))

(cl:ensure-generic-function 'locktime-val :lambda-list '(m))
(cl:defmethod locktime-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:locktime-val is deprecated.  Use novatel_pkg-msg:locktime instead.")
  (locktime m))

(cl:ensure-generic-function 'ch_tr_status-val :lambda-list '(m))
(cl:defmethod ch_tr_status-val ((m <RANGE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:ch_tr_status-val is deprecated.  Use novatel_pkg-msg:ch_tr_status instead.")
  (ch_tr_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RANGE>) ostream)
  "Serializes a message object of type '<RANGE>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_obs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_obs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_obs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_obs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'glofreq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'glofreq)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'psr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'psr_sig))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'adr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'adr_sig))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dopp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'c_no))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'locktime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch_tr_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ch_tr_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ch_tr_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ch_tr_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RANGE>) istream)
  "Deserializes a message object of type '<RANGE>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_obs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_obs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_obs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_obs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'glofreq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'glofreq)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psr_sig) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'adr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'adr_sig) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dopp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c_no) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'locktime) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ch_tr_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ch_tr_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ch_tr_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ch_tr_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RANGE>)))
  "Returns string type for a message object of type '<RANGE>"
  "novatel_pkg/RANGE")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RANGE)))
  "Returns string type for a message object of type 'RANGE"
  "novatel_pkg/RANGE")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RANGE>)))
  "Returns md5sum for a message object of type '<RANGE>"
  "ec2ee37b6f94d56550d64b98028bbcfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RANGE)))
  "Returns md5sum for a message object of type 'RANGE"
  "ec2ee37b6f94d56550d64b98028bbcfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RANGE>)))
  "Returns full string definition for message of type '<RANGE>"
  (cl:format cl:nil "# RANGE ID: 43~%# Put RANGEB for binary when connected with NovAtel Application Suite~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%novatel_pkg/CommonLongHeader header~%~%# Total number of observations for the log uniquely identified by the PRN~%uint32 num_obs~%~%# ------------------------------------------------------------ ~%~%# Satellite PRN number of range measurement~%uint16 prn~%~%# GLONASS Frequency + 7~%uint16 glofreq~%~%# Psuedorange measurement (m)~%float64 psr~%~%# Psuedorange measurement standard deviation (m)~%float32 psr_sig~%~%# Carrier phase, in cycles (accumulated Doppler range)~%float64 adr~%~%# Estimated carrier phase standard deviation (cycles)~%float32 adr_sig~%~%# Instantaneous carrier Doppler frequency (Hz)~%float32 dopp~%~%# Carrier to noise density ratio~%float32 c_no~%~%# Number of seconds of continuous tracking (no cycles slipping)~%float32 locktime~%~%# Tracking status ~%uint32 ch_tr_status~%~%# ------------------------------------------------------------~%~%~%================================================================================~%MSG: novatel_pkg/CommonLongHeader~%# Long Binary Header NovAtel~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%# Length of the header~%uint8 head_length~%~%# Message ID of the log being output~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%# Port address~%uint8 port_addr~%~%# Message length not including header (25 bytes) nor CRC (4 bytes)~%uint16 length~%~%# Used for multiple related logs. It is a number that counts down from N-1 to 0 where N is the number of related logs ...~%uint16 sequence~%~%# Time the processor is idle, calculated once per second - more in documentation~%uint8 idle_time~%~%# Indicates the quality of the gps reference time~%uint8 time_status~%~%# GNSS week number~%uint16 gnss_week~%~%# GNSS Miliseconds from beginning of GNSS week~%int32 gnss_mili~%~%# Reserved for internal use~%uint16 reserved~%~%# A value (0-65535) representing the receiver software build number~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RANGE)))
  "Returns full string definition for message of type 'RANGE"
  (cl:format cl:nil "# RANGE ID: 43~%# Put RANGEB for binary when connected with NovAtel Application Suite~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%novatel_pkg/CommonLongHeader header~%~%# Total number of observations for the log uniquely identified by the PRN~%uint32 num_obs~%~%# ------------------------------------------------------------ ~%~%# Satellite PRN number of range measurement~%uint16 prn~%~%# GLONASS Frequency + 7~%uint16 glofreq~%~%# Psuedorange measurement (m)~%float64 psr~%~%# Psuedorange measurement standard deviation (m)~%float32 psr_sig~%~%# Carrier phase, in cycles (accumulated Doppler range)~%float64 adr~%~%# Estimated carrier phase standard deviation (cycles)~%float32 adr_sig~%~%# Instantaneous carrier Doppler frequency (Hz)~%float32 dopp~%~%# Carrier to noise density ratio~%float32 c_no~%~%# Number of seconds of continuous tracking (no cycles slipping)~%float32 locktime~%~%# Tracking status ~%uint32 ch_tr_status~%~%# ------------------------------------------------------------~%~%~%================================================================================~%MSG: novatel_pkg/CommonLongHeader~%# Long Binary Header NovAtel~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%# Length of the header~%uint8 head_length~%~%# Message ID of the log being output~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%# Port address~%uint8 port_addr~%~%# Message length not including header (25 bytes) nor CRC (4 bytes)~%uint16 length~%~%# Used for multiple related logs. It is a number that counts down from N-1 to 0 where N is the number of related logs ...~%uint16 sequence~%~%# Time the processor is idle, calculated once per second - more in documentation~%uint8 idle_time~%~%# Indicates the quality of the gps reference time~%uint8 time_status~%~%# GNSS week number~%uint16 gnss_week~%~%# GNSS Miliseconds from beginning of GNSS week~%int32 gnss_mili~%~%# Reserved for internal use~%uint16 reserved~%~%# A value (0-65535) representing the receiver software build number~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RANGE>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     2
     2
     8
     4
     8
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RANGE>))
  "Converts a ROS message object to a list"
  (cl:list 'RANGE
    (cl:cons ':header (header msg))
    (cl:cons ':num_obs (num_obs msg))
    (cl:cons ':prn (prn msg))
    (cl:cons ':glofreq (glofreq msg))
    (cl:cons ':psr (psr msg))
    (cl:cons ':psr_sig (psr_sig msg))
    (cl:cons ':adr (adr msg))
    (cl:cons ':adr_sig (adr_sig msg))
    (cl:cons ':dopp (dopp msg))
    (cl:cons ':c_no (c_no msg))
    (cl:cons ':locktime (locktime msg))
    (cl:cons ':ch_tr_status (ch_tr_status msg))
))
