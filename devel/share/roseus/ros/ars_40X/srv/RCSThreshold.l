;; Auto-generated. Do not edit!


(when (boundp 'ars_40X::RCSThreshold)
  (if (not (find-package "ARS_40X"))
    (make-package "ARS_40X"))
  (shadow 'RCSThreshold (find-package "ARS_40X")))
(unless (find-package "ARS_40X::RCSTHRESHOLD")
  (make-package "ARS_40X::RCSTHRESHOLD"))
(unless (find-package "ARS_40X::RCSTHRESHOLDREQUEST")
  (make-package "ARS_40X::RCSTHRESHOLDREQUEST"))
(unless (find-package "ARS_40X::RCSTHRESHOLDRESPONSE")
  (make-package "ARS_40X::RCSTHRESHOLDRESPONSE"))

(in-package "ROS")





(defclass ars_40X::RCSThresholdRequest
  :super ros::object
  :slots (_rcs_threshold ))

(defmethod ars_40X::RCSThresholdRequest
  (:init
   (&key
    ((:rcs_threshold __rcs_threshold) 0)
    )
   (send-super :init)
   (setq _rcs_threshold (round __rcs_threshold))
   self)
  (:rcs_threshold
   (&optional __rcs_threshold)
   (if __rcs_threshold (setq _rcs_threshold __rcs_threshold)) _rcs_threshold)
  (:serialization-length
   ()
   (+
    ;; uint8 _rcs_threshold
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _rcs_threshold
       (write-byte _rcs_threshold s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _rcs_threshold
     (setq _rcs_threshold (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ars_40X::RCSThresholdResponse
  :super ros::object
  :slots ())

(defmethod ars_40X::RCSThresholdResponse
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

(defclass ars_40X::RCSThreshold
  :super ros::object
  :slots ())

(setf (get ars_40X::RCSThreshold :md5sum-) "2395c11d5141075461a6a21a788a2778")
(setf (get ars_40X::RCSThreshold :datatype-) "ars_40X/RCSThreshold")
(setf (get ars_40X::RCSThreshold :request) ars_40X::RCSThresholdRequest)
(setf (get ars_40X::RCSThreshold :response) ars_40X::RCSThresholdResponse)

(defmethod ars_40X::RCSThresholdRequest
  (:response () (instance ars_40X::RCSThresholdResponse :init)))

(setf (get ars_40X::RCSThresholdRequest :md5sum-) "2395c11d5141075461a6a21a788a2778")
(setf (get ars_40X::RCSThresholdRequest :datatype-) "ars_40X/RCSThresholdRequest")
(setf (get ars_40X::RCSThresholdRequest :definition-)
      "# Sets the sensitivity of the cluster detection to standard
# (0x0) or high sensitivity (0x1)

uint8 rcs_threshold
---
")

(setf (get ars_40X::RCSThresholdResponse :md5sum-) "2395c11d5141075461a6a21a788a2778")
(setf (get ars_40X::RCSThresholdResponse :datatype-) "ars_40X/RCSThresholdResponse")
(setf (get ars_40X::RCSThresholdResponse :definition-)
      "# Sets the sensitivity of the cluster detection to standard
# (0x0) or high sensitivity (0x1)

uint8 rcs_threshold
---
")



(provide :ars_40X/RCSThreshold "2395c11d5141075461a6a21a788a2778")


