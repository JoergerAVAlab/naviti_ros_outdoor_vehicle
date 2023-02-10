; Auto-generated. Do not edit!


(cl:in-package ars_40X-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (relative_velocity
    :reader relative_velocity
    :initarg :relative_velocity
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance))
   (relative_acceleration
    :reader relative_acceleration
    :initarg :relative_acceleration
    :type geometry_msgs-msg:AccelWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:AccelWithCovariance))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (orientation_angle
    :reader orientation_angle
    :initarg :orientation_angle
    :type cl:float
    :initform 0.0)
   (rcs
    :reader rcs
    :initarg :rcs
    :type cl:float
    :initform 0.0)
   (dynamic_property
    :reader dynamic_property
    :initarg :dynamic_property
    :type cl:fixnum
    :initform 0)
   (class_type
    :reader class_type
    :initarg :class_type
    :type cl:fixnum
    :initform 0)
   (meas_state
    :reader meas_state
    :initarg :meas_state
    :type cl:fixnum
    :initform 0)
   (prob_of_exist
    :reader prob_of_exist
    :initarg :prob_of_exist
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-msg:<Object> is deprecated: use ars_40X-msg:Object instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:id-val is deprecated.  Use ars_40X-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:position-val is deprecated.  Use ars_40X-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'relative_velocity-val :lambda-list '(m))
(cl:defmethod relative_velocity-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:relative_velocity-val is deprecated.  Use ars_40X-msg:relative_velocity instead.")
  (relative_velocity m))

(cl:ensure-generic-function 'relative_acceleration-val :lambda-list '(m))
(cl:defmethod relative_acceleration-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:relative_acceleration-val is deprecated.  Use ars_40X-msg:relative_acceleration instead.")
  (relative_acceleration m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:length-val is deprecated.  Use ars_40X-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:width-val is deprecated.  Use ars_40X-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'orientation_angle-val :lambda-list '(m))
(cl:defmethod orientation_angle-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:orientation_angle-val is deprecated.  Use ars_40X-msg:orientation_angle instead.")
  (orientation_angle m))

(cl:ensure-generic-function 'rcs-val :lambda-list '(m))
(cl:defmethod rcs-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:rcs-val is deprecated.  Use ars_40X-msg:rcs instead.")
  (rcs m))

(cl:ensure-generic-function 'dynamic_property-val :lambda-list '(m))
(cl:defmethod dynamic_property-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:dynamic_property-val is deprecated.  Use ars_40X-msg:dynamic_property instead.")
  (dynamic_property m))

(cl:ensure-generic-function 'class_type-val :lambda-list '(m))
(cl:defmethod class_type-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:class_type-val is deprecated.  Use ars_40X-msg:class_type instead.")
  (class_type m))

(cl:ensure-generic-function 'meas_state-val :lambda-list '(m))
(cl:defmethod meas_state-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:meas_state-val is deprecated.  Use ars_40X-msg:meas_state instead.")
  (meas_state m))

(cl:ensure-generic-function 'prob_of_exist-val :lambda-list '(m))
(cl:defmethod prob_of_exist-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:prob_of_exist-val is deprecated.  Use ars_40X-msg:prob_of_exist instead.")
  (prob_of_exist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_acceleration) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rcs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'dynamic_property)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'class_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'meas_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'prob_of_exist)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_acceleration) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dynamic_property) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'meas_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prob_of_exist) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "ars_40X/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "ars_40X/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "8964eb9576b0dc02d837314dcf39da9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "8964eb9576b0dc02d837314dcf39da9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "uint8 id~%~%geometry_msgs/PoseWithCovariance position~%geometry_msgs/TwistWithCovariance relative_velocity~%geometry_msgs/AccelWithCovariance relative_acceleration~%~%float32 length~%float32 width~%float32 orientation_angle~%~%float32 rcs~%int8 dynamic_property~%int8 class_type~%int8 meas_state~%int8 prob_of_exist~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "uint8 id~%~%geometry_msgs/PoseWithCovariance position~%geometry_msgs/TwistWithCovariance relative_velocity~%geometry_msgs/AccelWithCovariance relative_acceleration~%~%float32 length~%float32 width~%float32 orientation_angle~%~%float32 rcs~%int8 dynamic_property~%int8 class_type~%int8 meas_state~%int8 prob_of_exist~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_acceleration))
     4
     4
     4
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':relative_velocity (relative_velocity msg))
    (cl:cons ':relative_acceleration (relative_acceleration msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
    (cl:cons ':orientation_angle (orientation_angle msg))
    (cl:cons ':rcs (rcs msg))
    (cl:cons ':dynamic_property (dynamic_property msg))
    (cl:cons ':class_type (class_type msg))
    (cl:cons ':meas_state (meas_state msg))
    (cl:cons ':prob_of_exist (prob_of_exist msg))
))
