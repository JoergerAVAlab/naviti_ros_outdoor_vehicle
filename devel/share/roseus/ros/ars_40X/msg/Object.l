;; Auto-generated. Do not edit!


(when (boundp 'ars_40X::Object)
  (if (not (find-package "ARS_40X"))
    (make-package "ARS_40X"))
  (shadow 'Object (find-package "ARS_40X")))
(unless (find-package "ARS_40X::OBJECT")
  (make-package "ARS_40X::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ars_40X::Object
  :super ros::object
  :slots (_id _position _relative_velocity _relative_acceleration _length _width _orientation_angle _rcs _dynamic_property _class_type _meas_state _prob_of_exist ))

(defmethod ars_40X::Object
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (instance geometry_msgs::PoseWithCovariance :init))
    ((:relative_velocity __relative_velocity) (instance geometry_msgs::TwistWithCovariance :init))
    ((:relative_acceleration __relative_acceleration) (instance geometry_msgs::AccelWithCovariance :init))
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:orientation_angle __orientation_angle) 0.0)
    ((:rcs __rcs) 0.0)
    ((:dynamic_property __dynamic_property) 0)
    ((:class_type __class_type) 0)
    ((:meas_state __meas_state) 0)
    ((:prob_of_exist __prob_of_exist) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   (setq _relative_velocity __relative_velocity)
   (setq _relative_acceleration __relative_acceleration)
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _orientation_angle (float __orientation_angle))
   (setq _rcs (float __rcs))
   (setq _dynamic_property (round __dynamic_property))
   (setq _class_type (round __class_type))
   (setq _meas_state (round __meas_state))
   (setq _prob_of_exist (round __prob_of_exist))
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
  (:relative_acceleration
   (&rest __relative_acceleration)
   (if (keywordp (car __relative_acceleration))
       (send* _relative_acceleration __relative_acceleration)
     (progn
       (if __relative_acceleration (setq _relative_acceleration (car __relative_acceleration)))
       _relative_acceleration)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:orientation_angle
   (&optional __orientation_angle)
   (if __orientation_angle (setq _orientation_angle __orientation_angle)) _orientation_angle)
  (:rcs
   (&optional __rcs)
   (if __rcs (setq _rcs __rcs)) _rcs)
  (:dynamic_property
   (&optional __dynamic_property)
   (if __dynamic_property (setq _dynamic_property __dynamic_property)) _dynamic_property)
  (:class_type
   (&optional __class_type)
   (if __class_type (setq _class_type __class_type)) _class_type)
  (:meas_state
   (&optional __meas_state)
   (if __meas_state (setq _meas_state __meas_state)) _meas_state)
  (:prob_of_exist
   (&optional __prob_of_exist)
   (if __prob_of_exist (setq _prob_of_exist __prob_of_exist)) _prob_of_exist)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; geometry_msgs/PoseWithCovariance _position
    (send _position :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _relative_velocity
    (send _relative_velocity :serialization-length)
    ;; geometry_msgs/AccelWithCovariance _relative_acceleration
    (send _relative_acceleration :serialization-length)
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; float32 _orientation_angle
    4
    ;; float32 _rcs
    4
    ;; int8 _dynamic_property
    1
    ;; int8 _class_type
    1
    ;; int8 _meas_state
    1
    ;; int8 _prob_of_exist
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
     ;; geometry_msgs/AccelWithCovariance _relative_acceleration
       (send _relative_acceleration :serialize s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation_angle
       (sys::poke _orientation_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rcs
       (sys::poke _rcs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _dynamic_property
       (write-byte _dynamic_property s)
     ;; int8 _class_type
       (write-byte _class_type s)
     ;; int8 _meas_state
       (write-byte _meas_state s)
     ;; int8 _prob_of_exist
       (write-byte _prob_of_exist s)
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
   ;; geometry_msgs/AccelWithCovariance _relative_acceleration
     (send _relative_acceleration :deserialize buf ptr-) (incf ptr- (send _relative_acceleration :serialization-length))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation_angle
     (setq _orientation_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rcs
     (setq _rcs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _dynamic_property
     (setq _dynamic_property (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _dynamic_property 127) (setq _dynamic_property (- _dynamic_property 256)))
   ;; int8 _class_type
     (setq _class_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _class_type 127) (setq _class_type (- _class_type 256)))
   ;; int8 _meas_state
     (setq _meas_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _meas_state 127) (setq _meas_state (- _meas_state 256)))
   ;; int8 _prob_of_exist
     (setq _prob_of_exist (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _prob_of_exist 127) (setq _prob_of_exist (- _prob_of_exist 256)))
   ;;
   self)
  )

(setf (get ars_40X::Object :md5sum-) "8964eb9576b0dc02d837314dcf39da9a")
(setf (get ars_40X::Object :datatype-) "ars_40X/Object")
(setf (get ars_40X::Object :definition-)
      "uint8 id

geometry_msgs/PoseWithCovariance position
geometry_msgs/TwistWithCovariance relative_velocity
geometry_msgs/AccelWithCovariance relative_acceleration

float32 length
float32 width
float32 orientation_angle

float32 rcs
int8 dynamic_property
int8 class_type
int8 meas_state
int8 prob_of_exist
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
================================================================================
MSG: geometry_msgs/AccelWithCovariance
# This expresses acceleration in free space with uncertainty.

Accel accel

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

")



(provide :ars_40X/Object "8964eb9576b0dc02d837314dcf39da9a")


