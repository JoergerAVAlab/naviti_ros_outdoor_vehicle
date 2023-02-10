;; Auto-generated. Do not edit!


(when (boundp 'novatel_pkg::INSPVAS)
  (if (not (find-package "NOVATEL_PKG"))
    (make-package "NOVATEL_PKG"))
  (shadow 'INSPVAS (find-package "NOVATEL_PKG")))
(unless (find-package "NOVATEL_PKG::INSPVAS")
  (make-package "NOVATEL_PKG::INSPVAS"))

(in-package "ROS")
;;//! \htmlinclude INSPVAS.msg.html


(defclass novatel_pkg::INSPVAS
  :super ros::object
  :slots (_header _gnss_week _gnss_seconds _latitude _longitude _altitude _north_velocity _east_velocity _up_velocity _roll _pitch _azimuth _ins_status ))

(defmethod novatel_pkg::INSPVAS
  (:init
   (&key
    ((:header __header) (instance novatel_pkg::CommonShortHeader :init))
    ((:gnss_week __gnss_week) 0)
    ((:gnss_seconds __gnss_seconds) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:north_velocity __north_velocity) 0.0)
    ((:east_velocity __east_velocity) 0.0)
    ((:up_velocity __up_velocity) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:ins_status __ins_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gnss_week (round __gnss_week))
   (setq _gnss_seconds (float __gnss_seconds))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _north_velocity (float __north_velocity))
   (setq _east_velocity (float __east_velocity))
   (setq _up_velocity (float __up_velocity))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _azimuth (float __azimuth))
   (setq _ins_status (round __ins_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gnss_week
   (&optional __gnss_week)
   (if __gnss_week (setq _gnss_week __gnss_week)) _gnss_week)
  (:gnss_seconds
   (&optional __gnss_seconds)
   (if __gnss_seconds (setq _gnss_seconds __gnss_seconds)) _gnss_seconds)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:north_velocity
   (&optional __north_velocity)
   (if __north_velocity (setq _north_velocity __north_velocity)) _north_velocity)
  (:east_velocity
   (&optional __east_velocity)
   (if __east_velocity (setq _east_velocity __east_velocity)) _east_velocity)
  (:up_velocity
   (&optional __up_velocity)
   (if __up_velocity (setq _up_velocity __up_velocity)) _up_velocity)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:ins_status
   (&optional __ins_status)
   (if __ins_status (setq _ins_status __ins_status)) _ins_status)
  (:serialization-length
   ()
   (+
    ;; novatel_pkg/CommonShortHeader _header
    (send _header :serialization-length)
    ;; uint32 _gnss_week
    4
    ;; float64 _gnss_seconds
    8
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _north_velocity
    8
    ;; float64 _east_velocity
    8
    ;; float64 _up_velocity
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _azimuth
    8
    ;; uint32 _ins_status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; novatel_pkg/CommonShortHeader _header
       (send _header :serialize s)
     ;; uint32 _gnss_week
       (write-long _gnss_week s)
     ;; float64 _gnss_seconds
       (sys::poke _gnss_seconds (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _north_velocity
       (sys::poke _north_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _east_velocity
       (sys::poke _east_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _up_velocity
       (sys::poke _up_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _ins_status
       (write-long _ins_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; novatel_pkg/CommonShortHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _gnss_week
     (setq _gnss_week (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _gnss_seconds
     (setq _gnss_seconds (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _north_velocity
     (setq _north_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _east_velocity
     (setq _east_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _up_velocity
     (setq _up_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _azimuth
     (setq _azimuth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _ins_status
     (setq _ins_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get novatel_pkg::INSPVAS :md5sum-) "5ded1264f3f4858163c36b8d5bc38ed2")
(setf (get novatel_pkg::INSPVAS :datatype-) "novatel_pkg/INSPVAS")
(setf (get novatel_pkg::INSPVAS :definition-)
      "# INSPVAS Message ID: 508
# Author: Brandon Medellin
# Date: 2/1/2023

novatel_pkg/CommonShortHeader header

uint32 gnss_week
float64 gnss_seconds

float64 latitude
float64 longitude
float64 altitude

float64 north_velocity
float64 east_velocity
float64 up_velocity

float64 roll
float64 pitch
float64 azimuth

# Table 29 in the SPAN on OEM6 manual:
# See: http://www.novatel.com/assets/Documents/Manuals/OM-20000144UM.pdf#page=121
uint32 ins_status

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

")



(provide :novatel_pkg/INSPVAS "5ded1264f3f4858163c36b8d5bc38ed2")


