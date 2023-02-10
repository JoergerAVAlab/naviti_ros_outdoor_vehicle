; Auto-generated. Do not edit!


(cl:in-package ars_40X-srv)


;//! \htmlinclude SensorID-request.msg.html

(cl:defclass <SensorID-request> (roslisp-msg-protocol:ros-message)
  ((sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SensorID-request (<SensorID-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorID-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorID-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<SensorID-request> is deprecated: use ars_40X-srv:SensorID-request instead.")))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <SensorID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-srv:sensor_id-val is deprecated.  Use ars_40X-srv:sensor_id instead.")
  (sensor_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorID-request>) ostream)
  "Serializes a message object of type '<SensorID-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorID-request>) istream)
  "Deserializes a message object of type '<SensorID-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorID-request>)))
  "Returns string type for a service object of type '<SensorID-request>"
  "ars_40X/SensorIDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorID-request)))
  "Returns string type for a service object of type 'SensorID-request"
  "ars_40X/SensorIDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorID-request>)))
  "Returns md5sum for a message object of type '<SensorID-request>"
  "66c46e7435a6e0ca30e3a5cf913651cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorID-request)))
  "Returns md5sum for a message object of type 'SensorID-request"
  "66c46e7435a6e0ca30e3a5cf913651cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorID-request>)))
  "Returns full string definition for message of type '<SensorID-request>"
  (cl:format cl:nil "# Sensor ID 0 – 7~%~%uint8 sensor_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorID-request)))
  "Returns full string definition for message of type 'SensorID-request"
  (cl:format cl:nil "# Sensor ID 0 – 7~%~%uint8 sensor_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorID-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorID-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorID-request
    (cl:cons ':sensor_id (sensor_id msg))
))
;//! \htmlinclude SensorID-response.msg.html

(cl:defclass <SensorID-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SensorID-response (<SensorID-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorID-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorID-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<SensorID-response> is deprecated: use ars_40X-srv:SensorID-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorID-response>) ostream)
  "Serializes a message object of type '<SensorID-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorID-response>) istream)
  "Deserializes a message object of type '<SensorID-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorID-response>)))
  "Returns string type for a service object of type '<SensorID-response>"
  "ars_40X/SensorIDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorID-response)))
  "Returns string type for a service object of type 'SensorID-response"
  "ars_40X/SensorIDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorID-response>)))
  "Returns md5sum for a message object of type '<SensorID-response>"
  "66c46e7435a6e0ca30e3a5cf913651cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorID-response)))
  "Returns md5sum for a message object of type 'SensorID-response"
  "66c46e7435a6e0ca30e3a5cf913651cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorID-response>)))
  "Returns full string definition for message of type '<SensorID-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorID-response)))
  "Returns full string definition for message of type 'SensorID-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorID-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorID-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorID-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SensorID)))
  'SensorID-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SensorID)))
  'SensorID-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorID)))
  "Returns string type for a service object of type '<SensorID>"
  "ars_40X/SensorID")