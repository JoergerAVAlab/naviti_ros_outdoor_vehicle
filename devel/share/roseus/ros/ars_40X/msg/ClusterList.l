;; Auto-generated. Do not edit!


(when (boundp 'ars_40X::ClusterList)
  (if (not (find-package "ARS_40X"))
    (make-package "ARS_40X"))
  (shadow 'ClusterList (find-package "ARS_40X")))
(unless (find-package "ARS_40X::CLUSTERLIST")
  (make-package "ARS_40X::CLUSTERLIST"))

(in-package "ROS")
;;//! \htmlinclude ClusterList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ars_40X::ClusterList
  :super ros::object
  :slots (_header _clusters ))

(defmethod ars_40X::ClusterList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:clusters __clusters) (let (r) (dotimes (i 0) (push (instance ars_40X::Cluster :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _clusters __clusters)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:clusters
   (&rest __clusters)
   (if (keywordp (car __clusters))
       (send* _clusters __clusters)
     (progn
       (if __clusters (setq _clusters (car __clusters)))
       _clusters)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ars_40X/Cluster[] _clusters
    (apply #'+ (send-all _clusters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ars_40X/Cluster[] _clusters
     (write-long (length _clusters) s)
     (dolist (elem _clusters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ars_40X/Cluster[] _clusters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clusters (let (r) (dotimes (i n) (push (instance ars_40X::Cluster :init) r)) r))
     (dolist (elem- _clusters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ars_40X::ClusterList :md5sum-) "7e6133dc78f74cf429a4f2e9f54c616c")
(setf (get ars_40X::ClusterList :datatype-) "ars_40X/ClusterList")
(setf (get ars_40X::ClusterList :definition-)
      "std_msgs/Header header

ars_40X/Cluster[] clusters
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ars_40X/Cluster
uint8 id

geometry_msgs/PoseWithCovariance position
geometry_msgs/TwistWithCovariance relative_velocity

float32 rcs
int8 dynamic_property
int8 class_type
int8 prob_of_exist
int8 ambig_state
int8 invalid_state

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :ars_40X/ClusterList "7e6133dc78f74cf429a4f2e9f54c616c")


