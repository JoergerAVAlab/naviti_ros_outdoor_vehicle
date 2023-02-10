; Auto-generated. Do not edit!


(cl:in-package ars_40X-msg)


;//! \htmlinclude Cluster.msg.html

(cl:defclass <Cluster> (roslisp-msg-protocol:ros-message)
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
   (prob_of_exist
    :reader prob_of_exist
    :initarg :prob_of_exist
    :type cl:fixnum
    :initform 0)
   (ambig_state
    :reader ambig_state
    :initarg :ambig_state
    :type cl:fixnum
    :initform 0)
   (invalid_state
    :reader invalid_state
    :initarg :invalid_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Cluster (<Cluster>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cluster>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cluster)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-msg:<Cluster> is deprecated: use ars_40X-msg:Cluster instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:id-val is deprecated.  Use ars_40X-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:position-val is deprecated.  Use ars_40X-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'relative_velocity-val :lambda-list '(m))
(cl:defmethod relative_velocity-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:relative_velocity-val is deprecated.  Use ars_40X-msg:relative_velocity instead.")
  (relative_velocity m))

(cl:ensure-generic-function 'rcs-val :lambda-list '(m))
(cl:defmethod rcs-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:rcs-val is deprecated.  Use ars_40X-msg:rcs instead.")
  (rcs m))

(cl:ensure-generic-function 'dynamic_property-val :lambda-list '(m))
(cl:defmethod dynamic_property-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:dynamic_property-val is deprecated.  Use ars_40X-msg:dynamic_property instead.")
  (dynamic_property m))

(cl:ensure-generic-function 'class_type-val :lambda-list '(m))
(cl:defmethod class_type-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:class_type-val is deprecated.  Use ars_40X-msg:class_type instead.")
  (class_type m))

(cl:ensure-generic-function 'prob_of_exist-val :lambda-list '(m))
(cl:defmethod prob_of_exist-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:prob_of_exist-val is deprecated.  Use ars_40X-msg:prob_of_exist instead.")
  (prob_of_exist m))

(cl:ensure-generic-function 'ambig_state-val :lambda-list '(m))
(cl:defmethod ambig_state-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:ambig_state-val is deprecated.  Use ars_40X-msg:ambig_state instead.")
  (ambig_state m))

(cl:ensure-generic-function 'invalid_state-val :lambda-list '(m))
(cl:defmethod invalid_state-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:invalid_state-val is deprecated.  Use ars_40X-msg:invalid_state instead.")
  (invalid_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cluster>) ostream)
  "Serializes a message object of type '<Cluster>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_velocity) ostream)
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
  (cl:let* ((signed (cl:slot-value msg 'prob_of_exist)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ambig_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'invalid_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cluster>) istream)
  "Deserializes a message object of type '<Cluster>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_velocity) istream)
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
      (cl:setf (cl:slot-value msg 'prob_of_exist) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ambig_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'invalid_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cluster>)))
  "Returns string type for a message object of type '<Cluster>"
  "ars_40X/Cluster")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cluster)))
  "Returns string type for a message object of type 'Cluster"
  "ars_40X/Cluster")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cluster>)))
  "Returns md5sum for a message object of type '<Cluster>"
  "a6fbf37400d96cee232d859057c0e849")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cluster)))
  "Returns md5sum for a message object of type 'Cluster"
  "a6fbf37400d96cee232d859057c0e849")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cluster>)))
  "Returns full string definition for message of type '<Cluster>"
  (cl:format cl:nil "uint8 id~%~%geometry_msgs/PoseWithCovariance position~%geometry_msgs/TwistWithCovariance relative_velocity~%~%float32 rcs~%int8 dynamic_property~%int8 class_type~%int8 prob_of_exist~%int8 ambig_state~%int8 invalid_state~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cluster)))
  "Returns full string definition for message of type 'Cluster"
  (cl:format cl:nil "uint8 id~%~%geometry_msgs/PoseWithCovariance position~%geometry_msgs/TwistWithCovariance relative_velocity~%~%float32 rcs~%int8 dynamic_property~%int8 class_type~%int8 prob_of_exist~%int8 ambig_state~%int8 invalid_state~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cluster>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_velocity))
     4
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cluster>))
  "Converts a ROS message object to a list"
  (cl:list 'Cluster
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':relative_velocity (relative_velocity msg))
    (cl:cons ':rcs (rcs msg))
    (cl:cons ':dynamic_property (dynamic_property msg))
    (cl:cons ':class_type (class_type msg))
    (cl:cons ':prob_of_exist (prob_of_exist msg))
    (cl:cons ':ambig_state (ambig_state msg))
    (cl:cons ':invalid_state (invalid_state msg))
))
