;; Auto-generated. Do not edit!


(when (boundp 'ars_40X::RadarPower)
  (if (not (find-package "ARS_40X"))
    (make-package "ARS_40X"))
  (shadow 'RadarPower (find-package "ARS_40X")))
(unless (find-package "ARS_40X::RADARPOWER")
  (make-package "ARS_40X::RADARPOWER"))
(unless (find-package "ARS_40X::RADARPOWERREQUEST")
  (make-package "ARS_40X::RADARPOWERREQUEST"))
(unless (find-package "ARS_40X::RADARPOWERRESPONSE")
  (make-package "ARS_40X::RADARPOWERRESPONSE"))

(in-package "ROS")





(defclass ars_40X::RadarPowerRequest
  :super ros::object
  :slots (_radar_power ))

(defmethod ars_40X::RadarPowerRequest
  (:init
   (&key
    ((:radar_power __radar_power) 0)
    )
   (send-super :init)
   (setq _radar_power (round __radar_power))
   self)
  (:radar_power
   (&optional __radar_power)
   (if __radar_power (setq _radar_power __radar_power)) _radar_power)
  (:serialization-length
   ()
   (+
    ;; uint8 _radar_power
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _radar_power
       (write-byte _radar_power s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _radar_power
     (setq _radar_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ars_40X::RadarPowerResponse
  :super ros::object
  :slots ())

(defmethod ars_40X::RadarPowerResponse
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

(defclass ars_40X::RadarPower
  :super ros::object
  :slots ())

(setf (get ars_40X::RadarPower :md5sum-) "1729e07afca5fdcd752c0c577b4694e3")
(setf (get ars_40X::RadarPower :datatype-) "ars_40X/RadarPower")
(setf (get ars_40X::RadarPower :request) ars_40X::RadarPowerRequest)
(setf (get ars_40X::RadarPower :response) ars_40X::RadarPowerResponse)

(defmethod ars_40X::RadarPowerRequest
  (:response () (instance ars_40X::RadarPowerResponse :init)))

(setf (get ars_40X::RadarPowerRequest :md5sum-) "1729e07afca5fdcd752c0c577b4694e3")
(setf (get ars_40X::RadarPowerRequest :datatype-) "ars_40X/RadarPowerRequest")
(setf (get ars_40X::RadarPowerRequest :definition-)
      "# Configures the transmitted radar power (Tx
# attenuation). The output RCS of cluster and objects
# will be compensated for this attenuation. Reducing
# the output power can improve detection in case of
# close range scenarios or inside rooms.
#
# Standard
# -3dB Tx gain
# -6dB Tx gain
# -9dB Tx gain

uint8 radar_power
---
")

(setf (get ars_40X::RadarPowerResponse :md5sum-) "1729e07afca5fdcd752c0c577b4694e3")
(setf (get ars_40X::RadarPowerResponse :datatype-) "ars_40X/RadarPowerResponse")
(setf (get ars_40X::RadarPowerResponse :definition-)
      "# Configures the transmitted radar power (Tx
# attenuation). The output RCS of cluster and objects
# will be compensated for this attenuation. Reducing
# the output power can improve detection in case of
# close range scenarios or inside rooms.
#
# Standard
# -3dB Tx gain
# -6dB Tx gain
# -9dB Tx gain

uint8 radar_power
---
")



(provide :ars_40X/RadarPower "1729e07afca5fdcd752c0c577b4694e3")


