;; Auto-generated. Do not edit!


(when (boundp 'novatel_pkg::BESTPOS)
  (if (not (find-package "NOVATEL_PKG"))
    (make-package "NOVATEL_PKG"))
  (shadow 'BESTPOS (find-package "NOVATEL_PKG")))
(unless (find-package "NOVATEL_PKG::BESTPOS")
  (make-package "NOVATEL_PKG::BESTPOS"))

(in-package "ROS")
;;//! \htmlinclude BESTPOS.msg.html


(defclass novatel_pkg::BESTPOS
  :super ros::object
  :slots (_header _sol_stat _pos_type _lat _lon _hgt _undulation _datum_id _lat_std _long_std _hgt_std _stn_id _diff_age _sol_age _num_sats _num_sol_sats _num_sol_l1_sats _num_sol_multi_sats ))

(defmethod novatel_pkg::BESTPOS
  (:init
   (&key
    ((:header __header) (instance novatel_pkg::CommonLongHeader :init))
    ((:sol_stat __sol_stat) 0)
    ((:pos_type __pos_type) 0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:hgt __hgt) 0.0)
    ((:undulation __undulation) 0.0)
    ((:datum_id __datum_id) 0)
    ((:lat_std __lat_std) 0.0)
    ((:long_std __long_std) 0.0)
    ((:hgt_std __hgt_std) 0.0)
    ((:stn_id __stn_id) "")
    ((:diff_age __diff_age) 0.0)
    ((:sol_age __sol_age) 0.0)
    ((:num_sats __num_sats) 0)
    ((:num_sol_sats __num_sol_sats) 0)
    ((:num_sol_l1_sats __num_sol_l1_sats) 0)
    ((:num_sol_multi_sats __num_sol_multi_sats) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sol_stat (round __sol_stat))
   (setq _pos_type (round __pos_type))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _hgt (float __hgt))
   (setq _undulation (float __undulation))
   (setq _datum_id (round __datum_id))
   (setq _lat_std (float __lat_std))
   (setq _long_std (float __long_std))
   (setq _hgt_std (float __hgt_std))
   (setq _stn_id (string __stn_id))
   (setq _diff_age (float __diff_age))
   (setq _sol_age (float __sol_age))
   (setq _num_sats (round __num_sats))
   (setq _num_sol_sats (round __num_sol_sats))
   (setq _num_sol_l1_sats (round __num_sol_l1_sats))
   (setq _num_sol_multi_sats (round __num_sol_multi_sats))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sol_stat
   (&optional __sol_stat)
   (if __sol_stat (setq _sol_stat __sol_stat)) _sol_stat)
  (:pos_type
   (&optional __pos_type)
   (if __pos_type (setq _pos_type __pos_type)) _pos_type)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:hgt
   (&optional __hgt)
   (if __hgt (setq _hgt __hgt)) _hgt)
  (:undulation
   (&optional __undulation)
   (if __undulation (setq _undulation __undulation)) _undulation)
  (:datum_id
   (&optional __datum_id)
   (if __datum_id (setq _datum_id __datum_id)) _datum_id)
  (:lat_std
   (&optional __lat_std)
   (if __lat_std (setq _lat_std __lat_std)) _lat_std)
  (:long_std
   (&optional __long_std)
   (if __long_std (setq _long_std __long_std)) _long_std)
  (:hgt_std
   (&optional __hgt_std)
   (if __hgt_std (setq _hgt_std __hgt_std)) _hgt_std)
  (:stn_id
   (&optional __stn_id)
   (if __stn_id (setq _stn_id __stn_id)) _stn_id)
  (:diff_age
   (&optional __diff_age)
   (if __diff_age (setq _diff_age __diff_age)) _diff_age)
  (:sol_age
   (&optional __sol_age)
   (if __sol_age (setq _sol_age __sol_age)) _sol_age)
  (:num_sats
   (&optional __num_sats)
   (if __num_sats (setq _num_sats __num_sats)) _num_sats)
  (:num_sol_sats
   (&optional __num_sol_sats)
   (if __num_sol_sats (setq _num_sol_sats __num_sol_sats)) _num_sol_sats)
  (:num_sol_l1_sats
   (&optional __num_sol_l1_sats)
   (if __num_sol_l1_sats (setq _num_sol_l1_sats __num_sol_l1_sats)) _num_sol_l1_sats)
  (:num_sol_multi_sats
   (&optional __num_sol_multi_sats)
   (if __num_sol_multi_sats (setq _num_sol_multi_sats __num_sol_multi_sats)) _num_sol_multi_sats)
  (:serialization-length
   ()
   (+
    ;; novatel_pkg/CommonLongHeader _header
    (send _header :serialization-length)
    ;; uint32 _sol_stat
    4
    ;; uint32 _pos_type
    4
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _hgt
    8
    ;; float32 _undulation
    4
    ;; uint32 _datum_id
    4
    ;; float32 _lat_std
    4
    ;; float32 _long_std
    4
    ;; float32 _hgt_std
    4
    ;; string _stn_id
    4 (length _stn_id)
    ;; float32 _diff_age
    4
    ;; float32 _sol_age
    4
    ;; uint8 _num_sats
    1
    ;; uint8 _num_sol_sats
    1
    ;; uint8 _num_sol_l1_sats
    1
    ;; uint8 _num_sol_multi_sats
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; novatel_pkg/CommonLongHeader _header
       (send _header :serialize s)
     ;; uint32 _sol_stat
       (write-long _sol_stat s)
     ;; uint32 _pos_type
       (write-long _pos_type s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hgt
       (sys::poke _hgt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _undulation
       (sys::poke _undulation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _datum_id
       (write-long _datum_id s)
     ;; float32 _lat_std
       (sys::poke _lat_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _long_std
       (sys::poke _long_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _hgt_std
       (sys::poke _hgt_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _stn_id
       (write-long (length _stn_id) s) (princ _stn_id s)
     ;; float32 _diff_age
       (sys::poke _diff_age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sol_age
       (sys::poke _sol_age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _num_sats
       (write-byte _num_sats s)
     ;; uint8 _num_sol_sats
       (write-byte _num_sol_sats s)
     ;; uint8 _num_sol_l1_sats
       (write-byte _num_sol_l1_sats s)
     ;; uint8 _num_sol_multi_sats
       (write-byte _num_sol_multi_sats s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; novatel_pkg/CommonLongHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _sol_stat
     (setq _sol_stat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _pos_type
     (setq _pos_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hgt
     (setq _hgt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _undulation
     (setq _undulation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _datum_id
     (setq _datum_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _lat_std
     (setq _lat_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _long_std
     (setq _long_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _hgt_std
     (setq _hgt_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _stn_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _stn_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _diff_age
     (setq _diff_age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sol_age
     (setq _sol_age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _num_sats
     (setq _num_sats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_sol_sats
     (setq _num_sol_sats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_sol_l1_sats
     (setq _num_sol_l1_sats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_sol_multi_sats
     (setq _num_sol_multi_sats (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get novatel_pkg::BESTPOS :md5sum-) "9f8dc9710a4cb96033fd5b5ef2cdb331")
(setf (get novatel_pkg::BESTPOS :datatype-) "novatel_pkg/BESTPOS")
(setf (get novatel_pkg::BESTPOS :definition-)
      "# INSPVAS Message ID: 508
# Author: Brandon Medellin
# Date: 2/10/2023

novatel_pkg/CommonLongHeader header

# Solution Status 
uint32 sol_stat

# Position type
uint32 pos_type

# Latitude 
float64 lat

# Longitude
float64 lon

# Height above mean sea level (metres)
float64 hgt

# undulation
float32 undulation

# Datum ID Number 
uint32 datum_id

# Latitude statdard dev
float32 lat_std

# Longitude standard dev
float32 long_std

# Height standard dev 
float32 hgt_std

# Base station ID 
string stn_id

# Differential age in seconds
float32 diff_age

# Solution age in seconds
float32 sol_age

# Number of Satellites tracked 
uint8 num_sats

# Number of satellites used in solution 
uint8 num_sol_sats

# Number of satellites  with L1/E1/B1 signals used in solution
uint8 num_sol_l1_sats

# Number of satellites with multi-frequency signals used in solution
uint8 num_sol_multi_sats

# Reserved


# ext sol stat 


# Galileo and BeiDou sig mask 


# GPS and GLONASS sig mask

================================================================================
MSG: novatel_pkg/CommonLongHeader
# Long Binary Header NovAtel
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



(provide :novatel_pkg/BESTPOS "9f8dc9710a4cb96033fd5b5ef2cdb331")


