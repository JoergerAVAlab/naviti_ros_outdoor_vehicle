;; Auto-generated. Do not edit!


(when (boundp 'novatel_pkg::CommonLongHeader)
  (if (not (find-package "NOVATEL_PKG"))
    (make-package "NOVATEL_PKG"))
  (shadow 'CommonLongHeader (find-package "NOVATEL_PKG")))
(unless (find-package "NOVATEL_PKG::COMMONLONGHEADER")
  (make-package "NOVATEL_PKG::COMMONLONGHEADER"))

(in-package "ROS")
;;//! \htmlinclude CommonLongHeader.msg.html


(defclass novatel_pkg::CommonLongHeader
  :super ros::object
  :slots (_head_length _id _msg_type _port_addr _length _sequence _idle_time _time_status _gnss_week _gnss_mili _reserved _software_version ))

(defmethod novatel_pkg::CommonLongHeader
  (:init
   (&key
    ((:head_length __head_length) 0)
    ((:id __id) 0)
    ((:msg_type __msg_type) 0)
    ((:port_addr __port_addr) 0)
    ((:length __length) 0)
    ((:sequence __sequence) 0)
    ((:idle_time __idle_time) 0)
    ((:time_status __time_status) 0)
    ((:gnss_week __gnss_week) 0)
    ((:gnss_mili __gnss_mili) 0)
    ((:reserved __reserved) 0)
    ((:software_version __software_version) 0)
    )
   (send-super :init)
   (setq _head_length (round __head_length))
   (setq _id (round __id))
   (setq _msg_type (round __msg_type))
   (setq _port_addr (round __port_addr))
   (setq _length (round __length))
   (setq _sequence (round __sequence))
   (setq _idle_time (round __idle_time))
   (setq _time_status (round __time_status))
   (setq _gnss_week (round __gnss_week))
   (setq _gnss_mili (round __gnss_mili))
   (setq _reserved (round __reserved))
   (setq _software_version (round __software_version))
   self)
  (:head_length
   (&optional __head_length)
   (if __head_length (setq _head_length __head_length)) _head_length)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:msg_type
   (&optional __msg_type)
   (if __msg_type (setq _msg_type __msg_type)) _msg_type)
  (:port_addr
   (&optional __port_addr)
   (if __port_addr (setq _port_addr __port_addr)) _port_addr)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:idle_time
   (&optional __idle_time)
   (if __idle_time (setq _idle_time __idle_time)) _idle_time)
  (:time_status
   (&optional __time_status)
   (if __time_status (setq _time_status __time_status)) _time_status)
  (:gnss_week
   (&optional __gnss_week)
   (if __gnss_week (setq _gnss_week __gnss_week)) _gnss_week)
  (:gnss_mili
   (&optional __gnss_mili)
   (if __gnss_mili (setq _gnss_mili __gnss_mili)) _gnss_mili)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:software_version
   (&optional __software_version)
   (if __software_version (setq _software_version __software_version)) _software_version)
  (:serialization-length
   ()
   (+
    ;; uint8 _head_length
    1
    ;; uint16 _id
    2
    ;; uint8 _msg_type
    1
    ;; uint8 _port_addr
    1
    ;; uint16 _length
    2
    ;; uint16 _sequence
    2
    ;; uint8 _idle_time
    1
    ;; uint8 _time_status
    1
    ;; uint16 _gnss_week
    2
    ;; int32 _gnss_mili
    4
    ;; uint16 _reserved
    2
    ;; uint16 _software_version
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _head_length
       (write-byte _head_length s)
     ;; uint16 _id
       (write-word _id s)
     ;; uint8 _msg_type
       (write-byte _msg_type s)
     ;; uint8 _port_addr
       (write-byte _port_addr s)
     ;; uint16 _length
       (write-word _length s)
     ;; uint16 _sequence
       (write-word _sequence s)
     ;; uint8 _idle_time
       (write-byte _idle_time s)
     ;; uint8 _time_status
       (write-byte _time_status s)
     ;; uint16 _gnss_week
       (write-word _gnss_week s)
     ;; int32 _gnss_mili
       (write-long _gnss_mili s)
     ;; uint16 _reserved
       (write-word _reserved s)
     ;; uint16 _software_version
       (write-word _software_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _head_length
     (setq _head_length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _msg_type
     (setq _msg_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _port_addr
     (setq _port_addr (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _length
     (setq _length (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _sequence
     (setq _sequence (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _idle_time
     (setq _idle_time (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _time_status
     (setq _time_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _gnss_week
     (setq _gnss_week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _gnss_mili
     (setq _gnss_mili (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _reserved
     (setq _reserved (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _software_version
     (setq _software_version (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get novatel_pkg::CommonLongHeader :md5sum-) "3f5766af824e367c70c99b070c50ec08")
(setf (get novatel_pkg::CommonLongHeader :datatype-) "novatel_pkg/CommonLongHeader")
(setf (get novatel_pkg::CommonLongHeader :definition-)
      "# Long Binary Header NovAtel
# Author: Brandon Medellin
# Date: 2/1/2023

# Length of the header
uint8 head_length

# Message ID of the log being output
uint16 id

# Measurement source, format, response bit.
uint8 msg_type

# Port address
uint8 port_addr

# Message length not including header (25 bytes) nor CRC (4 bytes)
uint16 length

# Used for multiple related logs. It is a number that counts down from N-1 to 0 where N is the number of related logs ...
uint16 sequence

# Time the processor is idle, calculated once per second - more in documentation
uint8 idle_time

# Indicates the quality of the gps reference time
uint8 time_status

# GNSS week number
uint16 gnss_week

# GNSS Miliseconds from beginning of GNSS week
int32 gnss_mili

# Reserved for internal use
uint16 reserved

# A value (0-65535) representing the receiver software build number
uint16 software_version


")



(provide :novatel_pkg/CommonLongHeader "3f5766af824e367c70c99b070c50ec08")


