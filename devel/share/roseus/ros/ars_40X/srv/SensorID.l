;; Auto-generated. Do not edit!


(when (boundp 'ars_40X::SensorID)
  (if (not (find-package "ARS_40X"))
    (make-package "ARS_40X"))
  (shadow 'SensorID (find-package "ARS_40X")))
(unless (find-package "ARS_40X::SENSORID")
  (make-package "ARS_40X::SENSORID"))
(unless (find-package "ARS_40X::SENSORIDREQUEST")
  (make-package "ARS_40X::SENSORIDREQUEST"))
(unless (find-package "ARS_40X::SENSORIDRESPONSE")
  (make-package "ARS_40X::SENSORIDRESPONSE"))

(in-package "ROS")





(defclass ars_40X::SensorIDRequest
  :super ros::object
  :slots (_sensor_id ))

(defmethod ars_40X::SensorIDRequest
  (:init
   (&key
    ((:sensor_id __sensor_id) 0)
    )
   (send-super :init)
   (setq _sensor_id (round __sensor_id))
   self)
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _sensor_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sensor_id
       (write-byte _sensor_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ars_40X::SensorIDResponse
  :super ros::object
  :slots ())

(defmethod ars_40X::SensorIDResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ars_40X::SensorID
  :super ros::object
  :slots ())

(setf (get ars_40X::SensorID :md5sum-) "66c46e7435a6e0ca30e3a5cf913651cd")
(setf (get ars_40X::SensorID :datatype-) "ars_40X/SensorID")
(setf (get ars_40X::SensorID :request) ars_40X::SensorIDRequest)
(setf (get ars_40X::SensorID :response) ars_40X::SensorIDResponse)

(defmethod ars_40X::SensorIDRequest
  (:response () (instance ars_40X::SensorIDResponse :init)))

(setf (get ars_40X::SensorIDRequest :md5sum-) "66c46e7435a6e0ca30e3a5cf913651cd")
(setf (get ars_40X::SensorIDRequest :datatype-) "ars_40X/SensorIDRequest")
(setf (get ars_40X::SensorIDRequest :definition-)
      "# Sensor ID 0 – 7

uint8 sensor_id
---
")

(setf (get ars_40X::SensorIDResponse :md5sum-) "66c46e7435a6e0ca30e3a5cf913651cd")
(setf (get ars_40X::SensorIDResponse :datatype-) "ars_40X/SensorIDResponse")
(setf (get ars_40X::SensorIDResponse :definition-)
      "# Sensor ID 0 – 7

uint8 sensor_id
---
")



(provide :ars_40X/SensorID "66c46e7435a6e0ca30e3a5cf913651cd")


