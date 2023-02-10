; Auto-generated. Do not edit!


(cl:in-package ars_40X-srv)


;//! \htmlinclude MaxDistance-request.msg.html

(cl:defclass <MaxDistance-request> (roslisp-msg-protocol:ros-message)
  ((max_distance
    :reader max_distance
    :initarg :max_distance
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MaxDistance-request (<MaxDistance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaxDistance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaxDistance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<MaxDistance-request> is deprecated: use ars_40X-srv:MaxDistance-request instead.")))

(cl:ensure-generic-function 'max_distance-val :lambda-list '(m))
(cl:defmethod max_distance-val ((m <MaxDistance-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-srv:max_distance-val is deprecated.  Use ars_40X-srv:max_distance instead.")
  (max_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaxDistance-request>) ostream)
  "Serializes a message object of type '<MaxDistance-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_distance)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaxDistance-request>) istream)
  "Deserializes a message object of type '<MaxDistance-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_distance)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaxDistance-request>)))
  "Returns string type for a service object of type '<MaxDistance-request>"
  "ars_40X/MaxDistanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaxDistance-request)))
  "Returns string type for a service object of type 'MaxDistance-request"
  "ars_40X/MaxDistanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaxDistance-request>)))
  "Returns md5sum for a message object of type '<MaxDistance-request>"
  "721f4b602fafb1f59d20d474bb2d42da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaxDistance-request)))
  "Returns md5sum for a message object of type 'MaxDistance-request"
  "721f4b602fafb1f59d20d474bb2d42da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaxDistance-request>)))
  "Returns full string definition for message of type '<MaxDistance-request>"
  (cl:format cl:nil "# Maximum distance of far scan (near scan maximum~%# distance is set proportionally to half of the far scan).~%# The maximum distance will also change the range~%# resolution proportionally. For example, 200 m~%# maximum distance will lead to:~%# - far scan 200 m with 1.79 m range resolution,~%# - near scan 100 m with 0.42 m range resolution.~%~%# Standard Range: 150 – 190 m~%# Extended Range: 90 – 1000 m~%~%uint8 max_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaxDistance-request)))
  "Returns full string definition for message of type 'MaxDistance-request"
  (cl:format cl:nil "# Maximum distance of far scan (near scan maximum~%# distance is set proportionally to half of the far scan).~%# The maximum distance will also change the range~%# resolution proportionally. For example, 200 m~%# maximum distance will lead to:~%# - far scan 200 m with 1.79 m range resolution,~%# - near scan 100 m with 0.42 m range resolution.~%~%# Standard Range: 150 – 190 m~%# Extended Range: 90 – 1000 m~%~%uint8 max_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaxDistance-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaxDistance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MaxDistance-request
    (cl:cons ':max_distance (max_distance msg))
))
;//! \htmlinclude MaxDistance-response.msg.html

(cl:defclass <MaxDistance-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MaxDistance-response (<MaxDistance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaxDistance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaxDistance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<MaxDistance-response> is deprecated: use ars_40X-srv:MaxDistance-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaxDistance-response>) ostream)
  "Serializes a message object of type '<MaxDistance-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaxDistance-response>) istream)
  "Deserializes a message object of type '<MaxDistance-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaxDistance-response>)))
  "Returns string type for a service object of type '<MaxDistance-response>"
  "ars_40X/MaxDistanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaxDistance-response)))
  "Returns string type for a service object of type 'MaxDistance-response"
  "ars_40X/MaxDistanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaxDistance-response>)))
  "Returns md5sum for a message object of type '<MaxDistance-response>"
  "721f4b602fafb1f59d20d474bb2d42da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaxDistance-response)))
  "Returns md5sum for a message object of type 'MaxDistance-response"
  "721f4b602fafb1f59d20d474bb2d42da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaxDistance-response>)))
  "Returns full string definition for message of type '<MaxDistance-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaxDistance-response)))
  "Returns full string definition for message of type 'MaxDistance-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaxDistance-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaxDistance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MaxDistance-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MaxDistance)))
  'MaxDistance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MaxDistance)))
  'MaxDistance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaxDistance)))
  "Returns string type for a service object of type '<MaxDistance>"
  "ars_40X/MaxDistance")