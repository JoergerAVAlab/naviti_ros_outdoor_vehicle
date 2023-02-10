;; Auto-generated. Do not edit!


(when (boundp 'novatel_pkg::CommonShortHeader)
  (if (not (find-package "NOVATEL_PKG"))
    (make-package "NOVATEL_PKG"))
  (shadow 'CommonShortHeader (find-package "NOVATEL_PKG")))
(unless (find-package "NOVATEL_PKG::COMMONSHORTHEADER")
  (make-package "NOVATEL_PKG::COMMONSHORTHEADER"))

(in-package "ROS")
;;//! \htmlinclude CommonShortHeader.msg.html


(defclass novatel_pkg::CommonShortHeader
  :super ros::object
  :slots (_length _id _gnss_week _gnss_mili ))

(defmethod novatel_pkg::CommonShortHeader
  (:init
   (&key
    ((:length __length) 0)
    ((:id __id) 0)
    ((:gnss_week __gnss_week) 0)
    ((:gnss_mili __gnss_mili) 0)
    )
   (send-super :init)
   (setq _length (round __length))
   (setq _id (round __id))
   (setq _gnss_week (round __gnss_week))
   (setq _gnss_mili (round __gnss_mili))
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:gnss_week
   (&optional __gnss_week)
   (if __gnss_week (setq _gnss_week __gnss_week)) _gnss_week)
  (:gnss_mili
   (&optional __gnss_mili)
   (if __gnss_mili (setq _gnss_mili __gnss_mili)) _gnss_mili)
  (:serialization-length
   ()
   (+
    ;; uint8 _length
    1
    ;; uint16 _id
    2
    ;; uint16 _gnss_week
    2
    ;; int32 _gnss_mili
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _length
       (write-byte _length s)
     ;; uint16 _id
       (write-word _id s)
     ;; uint16 _gnss_week
       (write-word _gnss_week s)
     ;; int32 _gnss_mili
       (write-long _gnss_mili s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _gnss_week
     (setq _gnss_week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _gnss_mili
     (setq _gnss_mili (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get novatel_pkg::CommonShortHeader :md5sum-) "24bd93da6a66ad1feeb30cf4cc10f233")
(setf (get novatel_pkg::CommonShortHeader :datatype-) "novatel_pkg/CommonShortHeader")
(setf (get novatel_pkg::CommonShortHeader :definition-)
      "# Short Binary Header NovAtel OEM7
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



(provide :novatel_pkg/CommonShortHeader "24bd93da6a66ad1feeb30cf4cc10f233")


