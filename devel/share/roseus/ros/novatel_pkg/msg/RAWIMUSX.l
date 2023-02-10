;; Auto-generated. Do not edit!


(when (boundp 'novatel_pkg::RAWIMUSX)
  (if (not (find-package "NOVATEL_PKG"))
    (make-package "NOVATEL_PKG"))
  (shadow 'RAWIMUSX (find-package "NOVATEL_PKG")))
(unless (find-package "NOVATEL_PKG::RAWIMUSX")
  (make-package "NOVATEL_PKG::RAWIMUSX"))

(in-package "ROS")
;;//! \htmlinclude RAWIMUSX.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass novatel_pkg::RAWIMUSX
  :super ros::object
  :slots (_header _imu_info _imu_type _gnss_week _gnss_seconds _imu_status _linear_acceleration _angular_velocity ))

(defmethod novatel_pkg::RAWIMUSX
  (:init
   (&key
    ((:header __header) (instance novatel_pkg::CommonShortHeader :init))
    ((:imu_info __imu_info) 0)
    ((:imu_type __imu_type) 0)
    ((:gnss_week __gnss_week) 0)
    ((:gnss_seconds __gnss_seconds) 0.0)
    ((:imu_status __imu_status) 0)
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _imu_info (round __imu_info))
   (setq _imu_type (round __imu_type))
   (setq _gnss_week (round __gnss_week))
   (setq _gnss_seconds (float __gnss_seconds))
   (setq _imu_status (round __imu_status))
   (setq _linear_acceleration __linear_acceleration)
   (setq _angular_velocity __angular_velocity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:imu_info
   (&optional __imu_info)
   (if __imu_info (setq _imu_info __imu_info)) _imu_info)
  (:imu_type
   (&optional __imu_type)
   (if __imu_type (setq _imu_type __imu_type)) _imu_type)
  (:gnss_week
   (&optional __gnss_week)
   (if __gnss_week (setq _gnss_week __gnss_week)) _gnss_week)
  (:gnss_seconds
   (&optional __gnss_seconds)
   (if __gnss_seconds (setq _gnss_seconds __gnss_seconds)) _gnss_seconds)
  (:imu_status
   (&optional __imu_status)
   (if __imu_status (setq _imu_status __imu_status)) _imu_status)
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:serialization-length
   ()
   (+
    ;; novatel_pkg/CommonShortHeader _header
    (send _header :serialization-length)
    ;; uint8 _imu_info
    1
    ;; uint8 _imu_type
    1
    ;; uint16 _gnss_week
    2
    ;; float64 _gnss_seconds
    8
    ;; uint32 _imu_status
    4
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; novatel_pkg/CommonShortHeader _header
       (send _header :serialize s)
     ;; uint8 _imu_info
       (write-byte _imu_info s)
     ;; uint8 _imu_type
       (write-byte _imu_type s)
     ;; uint16 _gnss_week
       (write-word _gnss_week s)
     ;; float64 _gnss_seconds
       (sys::poke _gnss_seconds (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _imu_status
       (write-long _imu_status s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; novatel_pkg/CommonShortHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _imu_info
     (setq _imu_info (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _imu_type
     (setq _imu_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _gnss_week
     (setq _gnss_week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _gnss_seconds
     (setq _gnss_seconds (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _imu_status
     (setq _imu_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;;
   self)
  )

(setf (get novatel_pkg::RAWIMUSX :md5sum-) "d5a6c96f74c4727c7a4eea6a9a18c400")
(setf (get novatel_pkg::RAWIMUSX :datatype-) "novatel_pkg/RAWIMUSX")
(setf (get novatel_pkg::RAWIMUSX :definition-)
      "# INSPVAS Message ID: 508
# Author: Brandon Medellin
# Date: 2/1/2023

novatel_pkg/CommonShortHeader header

# IMU Info Bits 0 -> IMU Error Detected, 1 -> IMU data is encrypted, 2 to 7 -> Reserved
uint8 imu_info

# IMU Tyoe identifier
uint8 imu_type

# GNSS Week
uint16 gnss_week

# Seconds from GNSS week start
float64 gnss_seconds

# Status of the IMU
uint32 imu_status

# Linear Accelerations along Z, Y, X axes
geometry_msgs/Vector3 linear_acceleration

# Angular Velocity around Z, Y, X axes
geometry_msgs/Vector3 angular_velocity

================================================================================
MSG: novatel_pkg/CommonShortHeader
# Short Binary Header NovAtel OEM7
# Author: Brandon Medellin
# Date: 2/1/2023

# Message Length not including header (12 bytes) or CRC (4 byte)
uint8 length

# Message ID of the log being output.
uint16 id

# GNSS week number
uint16 gnss_week

# GNSS Miliseconds from beginning of GNSS week
int32 gnss_mili

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



(provide :novatel_pkg/RAWIMUSX "d5a6c96f74c4727c7a4eea6a9a18c400")


