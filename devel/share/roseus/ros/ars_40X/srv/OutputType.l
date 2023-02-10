;; Auto-generated. Do not edit!


(when (boundp 'ars_40X::OutputType)
  (if (not (find-package "ARS_40X"))
    (make-package "ARS_40X"))
  (shadow 'OutputType (find-package "ARS_40X")))
(unless (find-package "ARS_40X::OUTPUTTYPE")
  (make-package "ARS_40X::OUTPUTTYPE"))
(unless (find-package "ARS_40X::OUTPUTTYPEREQUEST")
  (make-package "ARS_40X::OUTPUTTYPEREQUEST"))
(unless (find-package "ARS_40X::OUTPUTTYPERESPONSE")
  (make-package "ARS_40X::OUTPUTTYPERESPONSE"))

(in-package "ROS")





(defclass ars_40X::OutputTypeRequest
  :super ros::object
  :slots (_output_type ))

(defmethod ars_40X::OutputTypeRequest
  (:init
   (&key
    ((:output_type __output_type) 0)
    )
   (send-super :init)
   (setq _output_type (round __output_type))
   self)
  (:output_type
   (&optional __output_type)
   (if __output_type (setq _output_type __output_type)) _output_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _output_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _output_type
       (write-byte _output_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _output_type
     (setq _output_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ars_40X::OutputTypeResponse
  :super ros::object
  :slots ())

(defmethod ars_40X::OutputTypeResponse
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

(defclass ars_40X::OutputType
  :super ros::object
  :slots ())

(setf (get ars_40X::OutputType :md5sum-) "84258bdfadc436fc1e07d471616d0a90")
(setf (get ars_40X::OutputType :datatype-) "ars_40X/OutputType")
(setf (get ars_40X::OutputType :request) ars_40X::OutputTypeRequest)
(setf (get ars_40X::OutputType :response) ars_40X::OutputTypeResponse)

(defmethod ars_40X::OutputTypeRequest
  (:response () (instance ars_40X::OutputTypeResponse :init)))

(setf (get ars_40X::OutputTypeRequest :md5sum-) "84258bdfadc436fc1e07d471616d0a90")
(setf (get ars_40X::OutputTypeRequest :datatype-) "ars_40X/OutputTypeRequest")
(setf (get ars_40X::OutputTypeRequest :definition-)
      "# none
# send objects
# send clusters

uint8 output_type
---
")

(setf (get ars_40X::OutputTypeResponse :md5sum-) "84258bdfadc436fc1e07d471616d0a90")
(setf (get ars_40X::OutputTypeResponse :datatype-) "ars_40X/OutputTypeResponse")
(setf (get ars_40X::OutputTypeResponse :definition-)
      "# none
# send objects
# send clusters

uint8 output_type
---
")



(provide :ars_40X/OutputType "84258bdfadc436fc1e07d471616d0a90")


