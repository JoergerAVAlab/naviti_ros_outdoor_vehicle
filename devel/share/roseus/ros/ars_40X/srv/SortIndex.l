;; Auto-generated. Do not edit!


(when (boundp 'ars_40X::SortIndex)
  (if (not (find-package "ARS_40X"))
    (make-package "ARS_40X"))
  (shadow 'SortIndex (find-package "ARS_40X")))
(unless (find-package "ARS_40X::SORTINDEX")
  (make-package "ARS_40X::SORTINDEX"))
(unless (find-package "ARS_40X::SORTINDEXREQUEST")
  (make-package "ARS_40X::SORTINDEXREQUEST"))
(unless (find-package "ARS_40X::SORTINDEXRESPONSE")
  (make-package "ARS_40X::SORTINDEXRESPONSE"))

(in-package "ROS")





(defclass ars_40X::SortIndexRequest
  :super ros::object
  :slots (_sort_index ))

(defmethod ars_40X::SortIndexRequest
  (:init
   (&key
    ((:sort_index __sort_index) 0)
    )
   (send-super :init)
   (setq _sort_index (round __sort_index))
   self)
  (:sort_index
   (&optional __sort_index)
   (if __sort_index (setq _sort_index __sort_index)) _sort_index)
  (:serialization-length
   ()
   (+
    ;; uint8 _sort_index
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sort_index
       (write-byte _sort_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sort_index
     (setq _sort_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ars_40X::SortIndexResponse
  :super ros::object
  :slots ())

(defmethod ars_40X::SortIndexResponse
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

(defclass ars_40X::SortIndex
  :super ros::object
  :slots ())

(setf (get ars_40X::SortIndex :md5sum-) "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(setf (get ars_40X::SortIndex :datatype-) "ars_40X/SortIndex")
(setf (get ars_40X::SortIndex :request) ars_40X::SortIndexRequest)
(setf (get ars_40X::SortIndex :response) ars_40X::SortIndexResponse)

(defmethod ars_40X::SortIndexRequest
  (:response () (instance ars_40X::SortIndexResponse :init)))

(setf (get ars_40X::SortIndexRequest :md5sum-) "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(setf (get ars_40X::SortIndexRequest :datatype-) "ars_40X/SortIndexRequest")
(setf (get ars_40X::SortIndexRequest :definition-)
      "# Selects the sorting index for the object list (ignored for
# clusters as they are always sorted by range)
#
# no sorting
# sorted by range
# sorted by RCS

uint8 sort_index
---
")

(setf (get ars_40X::SortIndexResponse :md5sum-) "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(setf (get ars_40X::SortIndexResponse :datatype-) "ars_40X/SortIndexResponse")
(setf (get ars_40X::SortIndexResponse :definition-)
      "# Selects the sorting index for the object list (ignored for
# clusters as they are always sorted by range)
#
# no sorting
# sorted by range
# sorted by RCS

uint8 sort_index
---
")



(provide :ars_40X/SortIndex "93fb6a7e64dbd2a0708217b8ad8f0eb8")


