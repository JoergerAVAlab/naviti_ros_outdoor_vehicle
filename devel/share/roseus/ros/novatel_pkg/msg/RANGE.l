;; Auto-generated. Do not edit!


(when (boundp 'novatel_pkg::RANGE)
  (if (not (find-package "NOVATEL_PKG"))
    (make-package "NOVATEL_PKG"))
  (shadow 'RANGE (find-package "NOVATEL_PKG")))
(unless (find-package "NOVATEL_PKG::RANGE")
  (make-package "NOVATEL_PKG::RANGE"))

(in-package "ROS")
;;//! \htmlinclude RANGE.msg.html


(defclass novatel_pkg::RANGE
  :super ros::object
  :slots (_header _num_obs _prn _glofreq _psr _psr_sig _adr _adr_sig _dopp _c_no _locktime _ch_tr_status ))

(defmethod novatel_pkg::RANGE
  (:init
   (&key
    ((:header __header) (instance novatel_pkg::CommonLongHeader :init))
    ((:num_obs __num_obs) 0)
    ((:prn __prn) 0)
    ((:glofreq __glofreq) 0)
    ((:psr __psr) 0.0)
    ((:psr_sig __psr_sig) 0.0)
    ((:adr __adr) 0.0)
    ((:adr_sig __adr_sig) 0.0)
    ((:dopp __dopp) 0.0)
    ((:c_no __c_no) 0.0)
    ((:locktime __locktime) 0.0)
    ((:ch_tr_status __ch_tr_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _num_obs (round __num_obs))
   (setq _prn (round __prn))
   (setq _glofreq (round __glofreq))
   (setq _psr (float __psr))
   (setq _psr_sig (float __psr_sig))
   (setq _adr (float __adr))
   (setq _adr_sig (float __adr_sig))
   (setq _dopp (float __dopp))
   (setq _c_no (float __c_no))
   (setq _locktime (float __locktime))
   (setq _ch_tr_status (round __ch_tr_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:num_obs
   (&optional __num_obs)
   (if __num_obs (setq _num_obs __num_obs)) _num_obs)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:glofreq
   (&optional __glofreq)
   (if __glofreq (setq _glofreq __glofreq)) _glofreq)
  (:psr
   (&optional __psr)
   (if __psr (setq _psr __psr)) _psr)
  (:psr_sig
   (&optional __psr_sig)
   (if __psr_sig (setq _psr_sig __psr_sig)) _psr_sig)
  (:adr
   (&optional __adr)
   (if __adr (setq _adr __adr)) _adr)
  (:adr_sig
   (&optional __adr_sig)
   (if __adr_sig (setq _adr_sig __adr_sig)) _adr_sig)
  (:dopp
   (&optional __dopp)
   (if __dopp (setq _dopp __dopp)) _dopp)
  (:c_no
   (&optional __c_no)
   (if __c_no (setq _c_no __c_no)) _c_no)
  (:locktime
   (&optional __locktime)
   (if __locktime (setq _locktime __locktime)) _locktime)
  (:ch_tr_status
   (&optional __ch_tr_status)
   (if __ch_tr_status (setq _ch_tr_status __ch_tr_status)) _ch_tr_status)
  (:serialization-length
   ()
   (+
    ;; novatel_pkg/CommonLongHeader _header
    (send _header :serialization-length)
    ;; uint32 _num_obs
    4
    ;; uint16 _prn
    2
    ;; uint16 _glofreq
    2
    ;; float64 _psr
    8
    ;; float32 _psr_sig
    4
    ;; float64 _adr
    8
    ;; float32 _adr_sig
    4
    ;; float32 _dopp
    4
    ;; float32 _c_no
    4
    ;; float32 _locktime
    4
    ;; uint32 _ch_tr_status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; novatel_pkg/CommonLongHeader _header
       (send _header :serialize s)
     ;; uint32 _num_obs
       (write-long _num_obs s)
     ;; uint16 _prn
       (write-word _prn s)
     ;; uint16 _glofreq
       (write-word _glofreq s)
     ;; float64 _psr
       (sys::poke _psr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _psr_sig
       (sys::poke _psr_sig (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _adr
       (sys::poke _adr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _adr_sig
       (sys::poke _adr_sig (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dopp
       (sys::poke _dopp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c_no
       (sys::poke _c_no (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _locktime
       (sys::poke _locktime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _ch_tr_status
       (write-long _ch_tr_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; novatel_pkg/CommonLongHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _num_obs
     (setq _num_obs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _prn
     (setq _prn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _glofreq
     (setq _glofreq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _psr
     (setq _psr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _psr_sig
     (setq _psr_sig (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _adr
     (setq _adr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _adr_sig
     (setq _adr_sig (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dopp
     (setq _dopp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c_no
     (setq _c_no (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _locktime
     (setq _locktime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _ch_tr_status
     (setq _ch_tr_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get novatel_pkg::RANGE :md5sum-) "ec2ee37b6f94d56550d64b98028bbcfe")
(setf (get novatel_pkg::RANGE :datatype-) "novatel_pkg/RANGE")
(setf (get novatel_pkg::RANGE :definition-)
      "# RANGE ID: 43
# Put RANGEB for binary when connected with NovAtel Application Suite
# Author: Brandon Medellin
# Date: 2/1/2023

novatel_pkg/CommonLongHeader header

# Total number of observations for the log uniquely identified by the PRN
uint32 num_obs

# ------------------------------------------------------------ 

# Satellite PRN number of range measurement
uint16 prn

# GLONASS Frequency + 7
uint16 glofreq

# Psuedorange measurement (m)
float64 psr

# Psuedorange measurement standard deviation (m)
float32 psr_sig

# Carrier phase, in cycles (accumulated Doppler range)
float64 adr

# Estimated carrier phase standard deviation (cycles)
float32 adr_sig

# Instantaneous carrier Doppler frequency (Hz)
float32 dopp

# Carrier to noise density ratio
float32 c_no

# Number of seconds of continuous tracking (no cycles slipping)
float32 locktime

# Tracking status 
uint32 ch_tr_status

# ------------------------------------------------------------


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



(provide :novatel_pkg/RANGE "ec2ee37b6f94d56550d64b98028bbcfe")


