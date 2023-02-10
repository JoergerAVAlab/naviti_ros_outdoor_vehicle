; Auto-generated. Do not edit!


(cl:in-package novatel_pkg-msg)


;//! \htmlinclude BESTPOS.msg.html

(cl:defclass <BESTPOS> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type novatel_pkg-msg:CommonLongHeader
    :initform (cl:make-instance 'novatel_pkg-msg:CommonLongHeader))
   (sol_stat
    :reader sol_stat
    :initarg :sol_stat
    :type cl:integer
    :initform 0)
   (pos_type
    :reader pos_type
    :initarg :pos_type
    :type cl:integer
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type cl:float
    :initform 0.0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:float
    :initform 0.0)
   (hgt
    :reader hgt
    :initarg :hgt
    :type cl:float
    :initform 0.0)
   (undulation
    :reader undulation
    :initarg :undulation
    :type cl:float
    :initform 0.0)
   (datum_id
    :reader datum_id
    :initarg :datum_id
    :type cl:integer
    :initform 0)
   (lat_std
    :reader lat_std
    :initarg :lat_std
    :type cl:float
    :initform 0.0)
   (long_std
    :reader long_std
    :initarg :long_std
    :type cl:float
    :initform 0.0)
   (hgt_std
    :reader hgt_std
    :initarg :hgt_std
    :type cl:float
    :initform 0.0)
   (stn_id
    :reader stn_id
    :initarg :stn_id
    :type cl:string
    :initform "")
   (diff_age
    :reader diff_age
    :initarg :diff_age
    :type cl:float
    :initform 0.0)
   (sol_age
    :reader sol_age
    :initarg :sol_age
    :type cl:float
    :initform 0.0)
   (num_sats
    :reader num_sats
    :initarg :num_sats
    :type cl:fixnum
    :initform 0)
   (num_sol_sats
    :reader num_sol_sats
    :initarg :num_sol_sats
    :type cl:fixnum
    :initform 0)
   (num_sol_l1_sats
    :reader num_sol_l1_sats
    :initarg :num_sol_l1_sats
    :type cl:fixnum
    :initform 0)
   (num_sol_multi_sats
    :reader num_sol_multi_sats
    :initarg :num_sol_multi_sats
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BESTPOS (<BESTPOS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BESTPOS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BESTPOS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name novatel_pkg-msg:<BESTPOS> is deprecated: use novatel_pkg-msg:BESTPOS instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:header-val is deprecated.  Use novatel_pkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sol_stat-val :lambda-list '(m))
(cl:defmethod sol_stat-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:sol_stat-val is deprecated.  Use novatel_pkg-msg:sol_stat instead.")
  (sol_stat m))

(cl:ensure-generic-function 'pos_type-val :lambda-list '(m))
(cl:defmethod pos_type-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:pos_type-val is deprecated.  Use novatel_pkg-msg:pos_type instead.")
  (pos_type m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:lat-val is deprecated.  Use novatel_pkg-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:lon-val is deprecated.  Use novatel_pkg-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'hgt-val :lambda-list '(m))
(cl:defmethod hgt-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:hgt-val is deprecated.  Use novatel_pkg-msg:hgt instead.")
  (hgt m))

(cl:ensure-generic-function 'undulation-val :lambda-list '(m))
(cl:defmethod undulation-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:undulation-val is deprecated.  Use novatel_pkg-msg:undulation instead.")
  (undulation m))

(cl:ensure-generic-function 'datum_id-val :lambda-list '(m))
(cl:defmethod datum_id-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:datum_id-val is deprecated.  Use novatel_pkg-msg:datum_id instead.")
  (datum_id m))

(cl:ensure-generic-function 'lat_std-val :lambda-list '(m))
(cl:defmethod lat_std-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:lat_std-val is deprecated.  Use novatel_pkg-msg:lat_std instead.")
  (lat_std m))

(cl:ensure-generic-function 'long_std-val :lambda-list '(m))
(cl:defmethod long_std-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:long_std-val is deprecated.  Use novatel_pkg-msg:long_std instead.")
  (long_std m))

(cl:ensure-generic-function 'hgt_std-val :lambda-list '(m))
(cl:defmethod hgt_std-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:hgt_std-val is deprecated.  Use novatel_pkg-msg:hgt_std instead.")
  (hgt_std m))

(cl:ensure-generic-function 'stn_id-val :lambda-list '(m))
(cl:defmethod stn_id-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:stn_id-val is deprecated.  Use novatel_pkg-msg:stn_id instead.")
  (stn_id m))

(cl:ensure-generic-function 'diff_age-val :lambda-list '(m))
(cl:defmethod diff_age-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:diff_age-val is deprecated.  Use novatel_pkg-msg:diff_age instead.")
  (diff_age m))

(cl:ensure-generic-function 'sol_age-val :lambda-list '(m))
(cl:defmethod sol_age-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:sol_age-val is deprecated.  Use novatel_pkg-msg:sol_age instead.")
  (sol_age m))

(cl:ensure-generic-function 'num_sats-val :lambda-list '(m))
(cl:defmethod num_sats-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:num_sats-val is deprecated.  Use novatel_pkg-msg:num_sats instead.")
  (num_sats m))

(cl:ensure-generic-function 'num_sol_sats-val :lambda-list '(m))
(cl:defmethod num_sol_sats-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:num_sol_sats-val is deprecated.  Use novatel_pkg-msg:num_sol_sats instead.")
  (num_sol_sats m))

(cl:ensure-generic-function 'num_sol_l1_sats-val :lambda-list '(m))
(cl:defmethod num_sol_l1_sats-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:num_sol_l1_sats-val is deprecated.  Use novatel_pkg-msg:num_sol_l1_sats instead.")
  (num_sol_l1_sats m))

(cl:ensure-generic-function 'num_sol_multi_sats-val :lambda-list '(m))
(cl:defmethod num_sol_multi_sats-val ((m <BESTPOS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader novatel_pkg-msg:num_sol_multi_sats-val is deprecated.  Use novatel_pkg-msg:num_sol_multi_sats instead.")
  (num_sol_multi_sats m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BESTPOS>) ostream)
  "Serializes a message object of type '<BESTPOS>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sol_stat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sol_stat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sol_stat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sol_stat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pos_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pos_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pos_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pos_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hgt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'undulation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'datum_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'datum_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'datum_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'datum_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'long_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hgt_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'stn_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'stn_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sol_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sats)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sol_sats)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sol_l1_sats)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sol_multi_sats)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BESTPOS>) istream)
  "Deserializes a message object of type '<BESTPOS>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sol_stat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sol_stat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sol_stat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sol_stat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pos_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pos_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pos_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pos_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hgt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'undulation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'datum_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'datum_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'datum_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'datum_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'long_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hgt_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stn_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'stn_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sol_age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sats)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sol_sats)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sol_l1_sats)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sol_multi_sats)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BESTPOS>)))
  "Returns string type for a message object of type '<BESTPOS>"
  "novatel_pkg/BESTPOS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BESTPOS)))
  "Returns string type for a message object of type 'BESTPOS"
  "novatel_pkg/BESTPOS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BESTPOS>)))
  "Returns md5sum for a message object of type '<BESTPOS>"
  "9f8dc9710a4cb96033fd5b5ef2cdb331")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BESTPOS)))
  "Returns md5sum for a message object of type 'BESTPOS"
  "9f8dc9710a4cb96033fd5b5ef2cdb331")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BESTPOS>)))
  "Returns full string definition for message of type '<BESTPOS>"
  (cl:format cl:nil "# INSPVAS Message ID: 508~%# Author: Brandon Medellin~%# Date: 2/10/2023~%~%novatel_pkg/CommonLongHeader header~%~%# Solution Status ~%uint32 sol_stat~%~%# Position type~%uint32 pos_type~%~%# Latitude ~%float64 lat~%~%# Longitude~%float64 lon~%~%# Height above mean sea level (metres)~%float64 hgt~%~%# undulation~%float32 undulation~%~%# Datum ID Number ~%uint32 datum_id~%~%# Latitude statdard dev~%float32 lat_std~%~%# Longitude standard dev~%float32 long_std~%~%# Height standard dev ~%float32 hgt_std~%~%# Base station ID ~%string stn_id~%~%# Differential age in seconds~%float32 diff_age~%~%# Solution age in seconds~%float32 sol_age~%~%# Number of Satellites tracked ~%uint8 num_sats~%~%# Number of satellites used in solution ~%uint8 num_sol_sats~%~%# Number of satellites  with L1/E1/B1 signals used in solution~%uint8 num_sol_l1_sats~%~%# Number of satellites with multi-frequency signals used in solution~%uint8 num_sol_multi_sats~%~%# Reserved~%~%~%# ext sol stat ~%~%~%# Galileo and BeiDou sig mask ~%~%~%# GPS and GLONASS sig mask~%~%================================================================================~%MSG: novatel_pkg/CommonLongHeader~%# Long Binary Header NovAtel~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%# Length of the header~%uint8 head_length~%~%# Message ID of the log being output~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%# Port address~%uint8 port_addr~%~%# Message length not including header (25 bytes) nor CRC (4 bytes)~%uint16 length~%~%# Used for multiple related logs. It is a number that counts down from N-1 to 0 where N is the number of related logs ...~%uint16 sequence~%~%# Time the processor is idle, calculated once per second - more in documentation~%uint8 idle_time~%~%# Indicates the quality of the gps reference time~%uint8 time_status~%~%# GNSS week number~%uint16 gnss_week~%~%# GNSS Miliseconds from beginning of GNSS week~%int32 gnss_mili~%~%# Reserved for internal use~%uint16 reserved~%~%# A value (0-65535) representing the receiver software build number~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BESTPOS)))
  "Returns full string definition for message of type 'BESTPOS"
  (cl:format cl:nil "# INSPVAS Message ID: 508~%# Author: Brandon Medellin~%# Date: 2/10/2023~%~%novatel_pkg/CommonLongHeader header~%~%# Solution Status ~%uint32 sol_stat~%~%# Position type~%uint32 pos_type~%~%# Latitude ~%float64 lat~%~%# Longitude~%float64 lon~%~%# Height above mean sea level (metres)~%float64 hgt~%~%# undulation~%float32 undulation~%~%# Datum ID Number ~%uint32 datum_id~%~%# Latitude statdard dev~%float32 lat_std~%~%# Longitude standard dev~%float32 long_std~%~%# Height standard dev ~%float32 hgt_std~%~%# Base station ID ~%string stn_id~%~%# Differential age in seconds~%float32 diff_age~%~%# Solution age in seconds~%float32 sol_age~%~%# Number of Satellites tracked ~%uint8 num_sats~%~%# Number of satellites used in solution ~%uint8 num_sol_sats~%~%# Number of satellites  with L1/E1/B1 signals used in solution~%uint8 num_sol_l1_sats~%~%# Number of satellites with multi-frequency signals used in solution~%uint8 num_sol_multi_sats~%~%# Reserved~%~%~%# ext sol stat ~%~%~%# Galileo and BeiDou sig mask ~%~%~%# GPS and GLONASS sig mask~%~%================================================================================~%MSG: novatel_pkg/CommonLongHeader~%# Long Binary Header NovAtel~%# Author: Brandon Medellin~%# Date: 2/1/2023~%~%# Length of the header~%uint8 head_length~%~%# Message ID of the log being output~%uint16 id~%~%# Measurement source, format, response bit.~%uint8 msg_type~%~%# Port address~%uint8 port_addr~%~%# Message length not including header (25 bytes) nor CRC (4 bytes)~%uint16 length~%~%# Used for multiple related logs. It is a number that counts down from N-1 to 0 where N is the number of related logs ...~%uint16 sequence~%~%# Time the processor is idle, calculated once per second - more in documentation~%uint8 idle_time~%~%# Indicates the quality of the gps reference time~%uint8 time_status~%~%# GNSS week number~%uint16 gnss_week~%~%# GNSS Miliseconds from beginning of GNSS week~%int32 gnss_mili~%~%# Reserved for internal use~%uint16 reserved~%~%# A value (0-65535) representing the receiver software build number~%uint16 software_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BESTPOS>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     8
     8
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'stn_id))
     4
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BESTPOS>))
  "Converts a ROS message object to a list"
  (cl:list 'BESTPOS
    (cl:cons ':header (header msg))
    (cl:cons ':sol_stat (sol_stat msg))
    (cl:cons ':pos_type (pos_type msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':hgt (hgt msg))
    (cl:cons ':undulation (undulation msg))
    (cl:cons ':datum_id (datum_id msg))
    (cl:cons ':lat_std (lat_std msg))
    (cl:cons ':long_std (long_std msg))
    (cl:cons ':hgt_std (hgt_std msg))
    (cl:cons ':stn_id (stn_id msg))
    (cl:cons ':diff_age (diff_age msg))
    (cl:cons ':sol_age (sol_age msg))
    (cl:cons ':num_sats (num_sats msg))
    (cl:cons ':num_sol_sats (num_sol_sats msg))
    (cl:cons ':num_sol_l1_sats (num_sol_l1_sats msg))
    (cl:cons ':num_sol_multi_sats (num_sol_multi_sats msg))
))
