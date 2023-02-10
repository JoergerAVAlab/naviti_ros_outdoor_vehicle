; Auto-generated. Do not edit!


(cl:in-package ars_40X-msg)


;//! \htmlinclude ClusterList.msg.html

(cl:defclass <ClusterList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (clusters
    :reader clusters
    :initarg :clusters
    :type (cl:vector ars_40X-msg:Cluster)
   :initform (cl:make-array 0 :element-type 'ars_40X-msg:Cluster :initial-element (cl:make-instance 'ars_40X-msg:Cluster))))
)

(cl:defclass ClusterList (<ClusterList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-msg:<ClusterList> is deprecated: use ars_40X-msg:ClusterList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ClusterList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:header-val is deprecated.  Use ars_40X-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'clusters-val :lambda-list '(m))
(cl:defmethod clusters-val ((m <ClusterList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-msg:clusters-val is deprecated.  Use ars_40X-msg:clusters instead.")
  (clusters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterList>) ostream)
  "Serializes a message object of type '<ClusterList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clusters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clusters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterList>) istream)
  "Deserializes a message object of type '<ClusterList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clusters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clusters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ars_40X-msg:Cluster))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterList>)))
  "Returns string type for a message object of type '<ClusterList>"
  "ars_40X/ClusterList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterList)))
  "Returns string type for a message object of type 'ClusterList"
  "ars_40X/ClusterList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterList>)))
  "Returns md5sum for a message object of type '<ClusterList>"
  "7e6133dc78f74cf429a4f2e9f54c616c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterList)))
  "Returns md5sum for a message object of type 'ClusterList"
  "7e6133dc78f74cf429a4f2e9f54c616c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterList>)))
  "Returns full string definition for message of type '<ClusterList>"
  (cl:format cl:nil "std_msgs/Header header~%~%ars_40X/Cluster[] clusters~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ars_40X/Cluster~%uint8 id~%~%geometry_msgs/PoseWithCovariance position~%geometry_msgs/TwistWithCovariance relative_velocity~%~%float32 rcs~%int8 dynamic_property~%int8 class_type~%int8 prob_of_exist~%int8 ambig_state~%int8 invalid_state~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterList)))
  "Returns full string definition for message of type 'ClusterList"
  (cl:format cl:nil "std_msgs/Header header~%~%ars_40X/Cluster[] clusters~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ars_40X/Cluster~%uint8 id~%~%geometry_msgs/PoseWithCovariance position~%geometry_msgs/TwistWithCovariance relative_velocity~%~%float32 rcs~%int8 dynamic_property~%int8 class_type~%int8 prob_of_exist~%int8 ambig_state~%int8 invalid_state~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clusters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterList>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterList
    (cl:cons ':header (header msg))
    (cl:cons ':clusters (clusters msg))
))
