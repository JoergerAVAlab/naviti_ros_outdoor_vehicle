; Auto-generated. Do not edit!


(cl:in-package novatel_pkg-msg)


;//! \htmlinclude CommonLongHeader.msg.html

(cl:defclass <CommonLongHeader> (roslisp-msg-protocol:ros-message)
  ((head_length
    :reader head_length
    :initarg :head_length
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (msg_type
    :reader msg_type
    :initarg :msg_type
    :type cl:fixnum
    :initform 0)
   (port_addr
    :reader port_addr
    :initarg :port_addr
    :type cl:fixnum
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:fixnum
    :initform 0)
   (sequence
    :reader sequence
    :initarg :sequence
    :type cl:fixnum
    :initform 0)
   (idle_time
    :reader idle_time
    :initarg :idle_time
    :type cl:fixnum
    :initform 0)
   (time_status
    :reader time_status
    :initarg :time_status
    :type cl:fixnum
    :initform 0)
   (gnss_week
    :reader gnss_week
    :initarg :gnss_week
    :type cl:fixnum
    :initform 0)
   (gnss_mili
    :reader gnss_mili
    :initarg :gnss_mili
    :type cl:integer
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0)
   (software_version
    :reader software_version
    :initarg :software_version
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommonLongHeader (<CommonLongHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonLongHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonLongHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_pkg-msg:<CommonLongHeader> is deprecated: use novatel_pkg-msg:CommonLongHeader instead.")))

(cl:ensure-generic-function 'head_length-val :lambda-list '(m))
(cl:defmethod head_length-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:head_length-val is deprecated.  Use novatel_pkg-msg:head_length instead.")
  (head_length m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:id-val is deprecated.  Use novatel_pkg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'msg_type-val :lambda-list '(m))
(cl:defmethod msg_type-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:msg_type-val is deprecated.  Use novatel_pkg-msg:msg_type instead.")
  (msg_type m))

(cl:ensure-generic-function 'port_addr-val :lambda-list '(m))
(cl:defmethod port_addr-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:port_addr-val is deprecated.  Use novatel_pkg-msg:port_addr instead.")
  (port_addr m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:length-val is deprecated.  Use novatel_pkg-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:sequence-val is deprecated.  Use novatel_pkg-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'idle_time-val :lambda-list '(m))
(cl:defmethod idle_time-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:idle_time-val is deprecated.  Use novatel_pkg-msg:idle_time instead.")
  (idle_time m))

(cl:ensure-generic-function 'time_status-val :lambda-list '(m))
(cl:defmethod time_status-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:time_status-val is deprecated.  Use novatel_pkg-msg:time_status instead.")
  (time_status m))

(cl:ensure-generic-function 'gnss_week-val :lambda-list '(m))
(cl:defmethod gnss_week-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:gnss_week-val is deprecated.  Use novatel_pkg-msg:gnss_week instead.")
  (gnss_week m))

(cl:ensure-generic-function 'gnss_mili-val :lambda-list '(m))
(cl:defmethod gnss_mili-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:gnss_mili-val is deprecated.  Use novatel_pkg-msg:gnss_mili instead.")
  (gnss_mili m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:reserved-val is deprecated.  Use novatel_pkg-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'software_version-val :lambda-list '(m))
(cl:defmethod software_version-val ((m <CommonLongHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:software_version-val is deprecated.  Use novatel_pkg-msg:software_version instead.")
  (software_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonLongHeader>) ostream)
  "Serializes a message object of type '<CommonLongHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head_length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port_addr)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idle_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gnss_week)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gnss_mili)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'software_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'software_version)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonLongHeader>) istream)
  "Deserializes a message object of type '<CommonLongHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head_length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port_addr)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'idle_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gnss_week)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss_mili) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'software_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'software_version)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonLongHeader>)))
  "Returns string type for a message object of type '<CommonLongHeader>"
  "novatel_pkg/CommonLongHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonLongHeader)))
  "Returns string type for a message object of type 'CommonLongHeader"
  "novatel_pkg/CommonLongHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonLongHeader>)))
  "Returns md5sum for a message object of type '<CommonLongHeader>"
  "3f5766af824e367c70c99b070c50ec08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonLongHeader)))
  "Returns md5sum for a message object of type 'CommonLongHeader"
  "3f5766af824e367c70c99b070c50ec08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonLongHeader>)))
  "Returns full string definition for message of type '<CommonLongHeader>"
  (cl:format cl:nil "# Long Binary Header NovAtel~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%# Length of the header~%uint8 head_length~%~%# Message ID of the log being output~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%# Port address~%uint8 port_addr~%~%# Message length not including header (25 bytes) nor CRC (4 bytes)~%uint16 length~%~%# Used for multiple related logs. It is a number that counts down from N-1 to 0 where N is the number of related logs ...~%uint16 sequence~%~%# Time the processor is idle, calculated once per second - more in documentation~%uint8 idle_time~%~%# Indicates the quality of the gps reference time~%uint8 time_status~%~%# GNSS week number~%uint16 gnss_week~%~%# GNSS Miliseconds from beginning of GNSS week~%int32 gnss_mili~%~%# Reserved for internal use~%uint16 reserved~%~%# A value (0-65535) representing the receiver software build number~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonLongHeader)))
  "Returns full string definition for message of type 'CommonLongHeader"
  (cl:format cl:nil "# Long Binary Header NovAtel~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%# Length of the header~%uint8 head_length~%~%# Message ID of the log being output~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%# Port address~%uint8 port_addr~%~%# Message length not including header (25 bytes) nor CRC (4 bytes)~%uint16 length~%~%# Used for multiple related logs. It is a number that counts down from N-1 to 0 where N is the number of related logs ...~%uint16 sequence~%~%# Time the processor is idle, calculated once per second - more in documentation~%uint8 idle_time~%~%# Indicates the quality of the gps reference time~%uint8 time_status~%~%# GNSS week number~%uint16 gnss_week~%~%# GNSS Miliseconds from beginning of GNSS week~%int32 gnss_mili~%~%# Reserved for internal use~%uint16 reserved~%~%# A value (0-65535) representing the receiver software build number~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonLongHeader>))
  (cl:+ 0
     1
     2
     1
     1
     2
     2
     1
     1
     2
     4
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonLongHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonLongHeader
    (cl:cons ':head_length (head_length msg))
    (cl:cons ':id (id msg))
    (cl:cons ':msg_type (msg_type msg))
    (cl:cons ':port_addr (port_addr msg))
    (cl:cons ':length (length msg))
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':idle_time (idle_time msg))
    (cl:cons ':time_status (time_status msg))
    (cl:cons ':gnss_week (gnss_week msg))
    (cl:cons ':gnss_mili (gnss_mili msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':software_version (software_version msg))
))
