;; Auto-generated. Do not edit!


(when (boundp 'ars_40X::Cluster)
  (if (not (find-package "ARS_40X"))
    (make-package "ARS_40X"))
  (shadow 'Cluster (find-package "ARS_40X")))
(unless (find-package "ARS_40X::CLUSTER")
  (make-package "ARS_40X::CLUSTER"))

(in-package "ROS")
;;//! \htmlinclude Cluster.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ars_40X::Cluster
  :super ros::object
  :slots (_id _position _relative_velocity _rcs _dynamic_property _class_type _prob_of_exist _ambig_state _invalid_state ))

(defmethod ars_40X::Cluster
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (instance geometry_msgs::PoseWithCovariance :init))
    ((:relative_velocity __relative_velocity) (instance geometry_msgs::TwistWithCovariance :init))
    ((:rcs __rcs) 0.0)
    ((:dynamic_property __dynamic_property) 0)
    ((:class_type __class_type) 0)
    ((:prob_of_exist __prob_of_exist) 0)
    ((:ambig_state __ambig_state) 0)
    ((:invalid_state __invalid_state) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   (setq _relative_velocity __relative_velocity)
   (setq _rcs (float __rcs))
   (setq _dynamic_property (round __dynamic_property))
   (setq _class_type (round __class_type))
   (setq _prob_of_exist (round __prob_of_exist))
   (setq _ambig_state (round __ambig_state))
   (setq _invalid_state (round __invalid_state))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:relative_velocity
   (&rest __relative_velocity)
   (if (keywordp (car __relative_velocity))
       (send* _relative_velocity __relative_velocity)
     (progn
       (if __relative_velocity (setq _relative_velocity (car __relative_velocity)))
       _relative_velocity)))
  (:rcs
   (&optional __rcs)
   (if __rcs (setq _rcs __rcs)) _rcs)
  (:dynamic_property
   (&optional __dynamic_property)
   (if __dynamic_property (setq _dynamic_property __dynamic_property)) _dynamic_property)
  (:class_type
   (&optional __class_type)
   (if __class_type (setq _class_type __class_type)) _class_type)
  (:prob_of_exist
   (&optional __prob_of_exist)
   (if __prob_of_exist (setq _prob_of_exist __prob_of_exist)) _prob_of_exist)
  (:ambig_state
   (&optional __ambig_state)
   (if __ambig_state (setq _ambig_state __ambig_state)) _ambig_state)
  (:invalid_state
   (&optional __invalid_state)
   (if __invalid_state (setq _invalid_state __invalid_state)) _invalid_state)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; geometry_msgs/PoseWithCovariance _position
    (send _position :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _relative_velocity
    (send _relative_velocity :serialization-length)
    ;; float32 _rcs
    4
    ;; int8 _dynamic_property
    1
    ;; int8 _class_type
    1
    ;; int8 _prob_of_exist
    1
    ;; int8 _ambig_state
    1
    ;; int8 _invalid_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; geometry_msgs/PoseWithCovariance _position
       (send _position :serialize s)
     ;; geometry_msgs/TwistWithCovariance _relative_velocity
       (send _relative_velocity :serialize s)
     ;; float32 _rcs
       (sys::poke _rcs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _dynamic_property
       (write-byte _dynamic_property s)
     ;; int8 _class_type
       (write-byte _class_type s)
     ;; int8 _prob_of_exist
       (write-byte _prob_of_exist s)
     ;; int8 _ambig_state
       (write-byte _ambig_state s)
     ;; int8 _invalid_state
       (write-byte _invalid_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseWithCovariance _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _relative_velocity
     (send _relative_velocity :deserialize buf ptr-) (incf ptr- (send _relative_velocity :serialization-length))
   ;; float32 _rcs
     (setq _rcs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _dynamic_property
     (setq _dynamic_property (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _dynamic_property 127) (setq _dynamic_property (- _dynamic_property 256)))
   ;; int8 _class_type
     (setq _class_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _class_type 127) (setq _class_type (- _class_type 256)))
   ;; int8 _prob_of_exist
     (setq _prob_of_exist (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _prob_of_exist 127) (setq _prob_of_exist (- _prob_of_exist 256)))
   ;; int8 _ambig_state
     (setq _ambig_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ambig_state 127) (setq _ambig_state (- _ambig_state 256)))
   ;; int8 _invalid_state
     (setq _invalid_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _invalid_state 127) (setq _invalid_state (- _invalid_state 256)))
   ;;
   self)
  )

(setf (get ars_40X::Cluster :md5sum-) "a6fbf37400d96cee232d859057c0e849")
(setf (get ars_40X::Cluster :datatype-) "ars_40X/Cluster")
(setf (get ars_40X::Cluster :definition-)
      "uint8 id

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



(provide :ars_40X/Cluster "a6fbf37400d96cee232d859057c0e849")


