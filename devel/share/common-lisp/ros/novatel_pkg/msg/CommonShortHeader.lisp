; Auto-generated. Do not edit!


(cl:in-package novatel_pkg-msg)


;//! \htmlinclude CommonShortHeader.msg.html

(cl:defclass <CommonShortHeader> (roslisp-msg-protocol:ros-message)
  ((length
    :reader length
    :initarg :length
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
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
    :initform 0))
)

(cl:defclass CommonShortHeader (<CommonShortHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonShortHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonShortHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_pkg-msg:<CommonShortHeader> is deprecated: use novatel_pkg-msg:CommonShortHeader instead.")))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <CommonShortHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:length-val is deprecated.  Use novatel_pkg-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CommonShortHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:id-val is deprecated.  Use novatel_pkg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'gnss_week-val :lambda-list '(m))
(cl:defmethod gnss_week-val ((m <CommonShortHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:gnss_week-val is deprecated.  Use novatel_pkg-msg:gnss_week instead.")
  (gnss_week m))

(cl:ensure-generic-function 'gnss_mili-val :lambda-list '(m))
(cl:defmethod gnss_mili-val ((m <CommonShortHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:gnss_mili-val is deprecated.  Use novatel_pkg-msg:gnss_mili instead.")
  (gnss_mili m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonShortHeader>) ostream)
  "Serializes a message object of type '<CommonShortHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gnss_week)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gnss_mili)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonShortHeader>) istream)
  "Deserializes a message object of type '<CommonShortHeader>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'length)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gnss_week)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss_mili) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonShortHeader>)))
  "Returns string type for a message object of type '<CommonShortHeader>"
  "novatel_pkg/CommonShortHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonShortHeader)))
  "Returns string type for a message object of type 'CommonShortHeader"
  "novatel_pkg/CommonShortHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonShortHeader>)))
  "Returns md5sum for a message object of type '<CommonShortHeader>"
  "24bd93da6a66ad1feeb30cf4cc10f233")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonShortHeader)))
  "Returns md5sum for a message object of type 'CommonShortHeader"
  "24bd93da6a66ad1feeb30cf4cc10f233")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonShortHeader>)))
  "Returns full string definition for message of type '<CommonShortHeader>"
  (cl:format cl:nil "# Short Binary Header NovAtel OEM7~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%# Message Length not including header (12 bytes) or CRC (4 byte)~%uint8 length~%~%# Message ID of the log being output.~%uint16 id~%~%# GNSS week number~%uint16 gnss_week~%~%# GNSS Miliseconds from beginning of GNSS week~%int32 gnss_mili~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonShortHeader)))
  "Returns full string definition for message of type 'CommonShortHeader"
  (cl:format cl:nil "# Short Binary Header NovAtel OEM7~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%# Message Length not including header (12 bytes) or CRC (4 byte)~%uint8 length~%~%# Message ID of the log being output.~%uint16 id~%~%# GNSS week number~%uint16 gnss_week~%~%# GNSS Miliseconds from beginning of GNSS week~%int32 gnss_mili~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonShortHeader>))
  (cl:+ 0
     1
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonShortHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonShortHeader
    (cl:cons ':length (length msg))
    (cl:cons ':id (id msg))
    (cl:cons ':gnss_week (gnss_week msg))
    (cl:cons ':gnss_mili (gnss_mili msg))
))
