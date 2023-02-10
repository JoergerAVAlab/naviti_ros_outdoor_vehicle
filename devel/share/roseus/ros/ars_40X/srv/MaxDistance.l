;; Auto-generated. Do not edit!


(when (boundp 'ars_40X::MaxDistance)
  (if (not (find-package "ARS_40X"))
    (make-package "ARS_40X"))
  (shadow 'MaxDistance (find-package "ARS_40X")))
(unless (find-package "ARS_40X::MAXDISTANCE")
  (make-package "ARS_40X::MAXDISTANCE"))
(unless (find-package "ARS_40X::MAXDISTANCEREQUEST")
  (make-package "ARS_40X::MAXDISTANCEREQUEST"))
(unless (find-package "ARS_40X::MAXDISTANCERESPONSE")
  (make-package "ARS_40X::MAXDISTANCERESPONSE"))

(in-package "ROS")





(defclass ars_40X::MaxDistanceRequest
  :super ros::object
  :slots (_max_distance ))

(defmethod ars_40X::MaxDistanceRequest
  (:init
   (&key
    ((:max_distance __max_distance) 0)
    )
   (send-super :init)
   (setq _max_distance (round __max_distance))
   self)
  (:max_distance
   (&optional __max_distance)
   (if __max_distance (setq _max_distance __max_distance)) _max_distance)
  (:serialization-length
   ()
   (+
    ;; uint8 _max_distance
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _max_distance
       (write-byte _max_distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _max_distance
     (setq _max_distance (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ars_40X::MaxDistanceResponse
  :super ros::object
  :slots ())

(defmethod ars_40X::MaxDistanceResponse
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

(defclass ars_40X::MaxDistance
  :super ros::object
  :slots ())

(setf (get ars_40X::MaxDistance :md5sum-) "721f4b602fafb1f59d20d474bb2d42da")
(setf (get ars_40X::MaxDistance :datatype-) "ars_40X/MaxDistance")
(setf (get ars_40X::MaxDistance :request) ars_40X::MaxDistanceRequest)
(setf (get ars_40X::MaxDistance :response) ars_40X::MaxDistanceResponse)

(defmethod ars_40X::MaxDistanceRequest
  (:response () (instance ars_40X::MaxDistanceResponse :init)))

(setf (get ars_40X::MaxDistanceRequest :md5sum-) "721f4b602fafb1f59d20d474bb2d42da")
(setf (get ars_40X::MaxDistanceRequest :datatype-) "ars_40X/MaxDistanceRequest")
(setf (get ars_40X::MaxDistanceRequest :definition-)
      "# Maximum distance of far scan (near scan maximum
# distance is set proportionally to half of the far scan).
# The maximum distance will also change the range
# resolution proportionally. For example, 200 m
# maximum distance will lead to:
# - far scan 200 m with 1.79 m range resolution,
# - near scan 100 m with 0.42 m range resolution.

# Standard Range: 150 – 190 m
# Extended Range: 90 – 1000 m

uint8 max_distance
---
")

(setf (get ars_40X::MaxDistanceResponse :md5sum-) "721f4b602fafb1f59d20d474bb2d42da")
(setf (get ars_40X::MaxDistanceResponse :datatype-) "ars_40X/MaxDistanceResponse")
(setf (get ars_40X::MaxDistanceResponse :definition-)
      "# Maximum distance of far scan (near scan maximum
# distance is set proportionally to half of the far scan).
# The maximum distance will also change the range
# resolution proportionally. For example, 200 m
# maximum distance will lead to:
# - far scan 200 m with 1.79 m range resolution,
# - near scan 100 m with 0.42 m range resolution.

# Standard Range: 150 – 190 m
# Extended Range: 90 – 1000 m

uint8 max_distance
---
")



(provide :ars_40X/MaxDistance "721f4b602fafb1f59d20d474bb2d42da")


