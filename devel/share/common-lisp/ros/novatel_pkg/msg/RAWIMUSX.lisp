; Auto-generated. Do not edit!


(cl:in-package novatel_pkg-msg)


;//! \htmlinclude RAWIMUSX.msg.html

(cl:defclass <RAWIMUSX> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type novatel_pkg-msg:CommonShortHeader
    :initform (cl:make-instance 'novatel_pkg-msg:CommonShortHeader))
   (imu_info
    :reader imu_info
    :initarg :imu_info
    :type cl:fixnum
    :initform 0)
   (imu_type
    :reader imu_type
    :initarg :imu_type
    :type cl:fixnum
    :initform 0)
   (gnss_week
    :reader gnss_week
    :initarg :gnss_week
    :type cl:fixnum
    :initform 0)
   (gnss_seconds
    :reader gnss_seconds
    :initarg :gnss_seconds
    :type cl:float
    :initform 0.0)
   (imu_status
    :reader imu_status
    :initarg :imu_status
    :type cl:integer
    :initform 0)
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass RAWIMUSX (<RAWIMUSX>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RAWIMUSX>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RAWIMUSX)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_pkg-msg:<RAWIMUSX> is deprecated: use novatel_pkg-msg:RAWIMUSX instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RAWIMUSX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:header-val is deprecated.  Use novatel_pkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'imu_info-val :lambda-list '(m))
(cl:defmethod imu_info-val ((m <RAWIMUSX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:imu_info-val is deprecated.  Use novatel_pkg-msg:imu_info instead.")
  (imu_info m))

(cl:ensure-generic-function 'imu_type-val :lambda-list '(m))
(cl:defmethod imu_type-val ((m <RAWIMUSX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:imu_type-val is deprecated.  Use novatel_pkg-msg:imu_type instead.")
  (imu_type m))

(cl:ensure-generic-function 'gnss_week-val :lambda-list '(m))
(cl:defmethod gnss_week-val ((m <RAWIMUSX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:gnss_week-val is deprecated.  Use novatel_pkg-msg:gnss_week instead.")
  (gnss_week m))

(cl:ensure-generic-function 'gnss_seconds-val :lambda-list '(m))
(cl:defmethod gnss_seconds-val ((m <RAWIMUSX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:gnss_seconds-val is deprecated.  Use novatel_pkg-msg:gnss_seconds instead.")
  (gnss_seconds m))

(cl:ensure-generic-function 'imu_status-val :lambda-list '(m))
(cl:defmethod imu_status-val ((m <RAWIMUSX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:imu_status-val is deprecated.  Use novatel_pkg-msg:imu_status instead.")
  (imu_status m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <RAWIMUSX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:linear_acceleration-val is deprecated.  Use novatel_pkg-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <RAWIMUSX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:angular_velocity-val is deprecated.  Use novatel_pkg-msg:angular_velocity instead.")
  (angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RAWIMUSX>) ostream)
  "Serializes a message object of type '<RAWIMUSX>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gnss_week)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gnss_seconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imu_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imu_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imu_status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RAWIMUSX>) istream)
  "Deserializes a message object of type '<RAWIMUSX>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gnss_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gnss_week)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gnss_seconds) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'imu_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'imu_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'imu_status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RAWIMUSX>)))
  "Returns string type for a message object of type '<RAWIMUSX>"
  "novatel_pkg/RAWIMUSX")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RAWIMUSX)))
  "Returns string type for a message object of type 'RAWIMUSX"
  "novatel_pkg/RAWIMUSX")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RAWIMUSX>)))
  "Returns md5sum for a message object of type '<RAWIMUSX>"
  "d5a6c96f74c4727c7a4eea6a9a18c400")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RAWIMUSX)))
  "Returns md5sum for a message object of type 'RAWIMUSX"
  "d5a6c96f74c4727c7a4eea6a9a18c400")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RAWIMUSX>)))
  "Returns full string definition for message of type '<RAWIMUSX>"
  (cl:format cl:nil "# INSPVAS Message ID: 508~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%novatel_pkg/CommonShortHeader header~%~%# IMU Info Bits 0 -> IMU Error Detected, 1 -> IMU data is encrypted, 2 to 7 -> Reserved~%uint8 imu_info~%~%# IMU Tyoe identifier~%uint8 imu_type~%~%# GNSS Week~%uint16 gnss_week~%~%# Seconds from GNSS week start~%float64 gnss_seconds~%~%# Status of the IMU~%uint32 imu_status~%~%# Linear Accelerations along Z, Y, X axes~%geometry_msgs/Vector3 linear_acceleration~%~%# Angular Velocity around Z, Y, X axes~%geometry_msgs/Vector3 angular_velocity~%~%================================================================================~%MSG: novatel_pkg/CommonShortHeader~%# Short Binary Header NovAtel OEM7~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%# Message Length not including header (12 bytes) or CRC (4 byte)~%uint8 length~%~%# Message ID of the log being output.~%uint16 id~%~%# GNSS week number~%uint16 gnss_week~%~%# GNSS Miliseconds from beginning of GNSS week~%int32 gnss_mili~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RAWIMUSX)))
  "Returns full string definition for message of type 'RAWIMUSX"
  (cl:format cl:nil "# INSPVAS Message ID: 508~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%novatel_pkg/CommonShortHeader header~%~%# IMU Info Bits 0 -> IMU Error Detected, 1 -> IMU data is encrypted, 2 to 7 -> Reserved~%uint8 imu_info~%~%# IMU Tyoe identifier~%uint8 imu_type~%~%# GNSS Week~%uint16 gnss_week~%~%# Seconds from GNSS week start~%float64 gnss_seconds~%~%# Status of the IMU~%uint32 imu_status~%~%# Linear Accelerations along Z, Y, X axes~%geometry_msgs/Vector3 linear_acceleration~%~%# Angular Velocity around Z, Y, X axes~%geometry_msgs/Vector3 angular_velocity~%~%================================================================================~%MSG: novatel_pkg/CommonShortHeader~%# Short Binary Header NovAtel OEM7~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%# Message Length not including header (12 bytes) or CRC (4 byte)~%uint8 length~%~%# Message ID of the log being output.~%uint16 id~%~%# GNSS week number~%uint16 gnss_week~%~%# GNSS Miliseconds from beginning of GNSS week~%int32 gnss_mili~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RAWIMUSX>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     2
     8
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RAWIMUSX>))
  "Converts a ROS message object to a list"
  (cl:list 'RAWIMUSX
    (cl:cons ':header (header msg))
    (cl:cons ':imu_info (imu_info msg))
    (cl:cons ':imu_type (imu_type msg))
    (cl:cons ':gnss_week (gnss_week msg))
    (cl:cons ':gnss_seconds (gnss_seconds msg))
    (cl:cons ':imu_status (imu_status msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
))
