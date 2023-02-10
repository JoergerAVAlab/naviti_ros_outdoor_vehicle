; Auto-generated. Do not edit!


(cl:in-package ars_40X-srv)


;//! \htmlinclude OutputType-request.msg.html

(cl:defclass <OutputType-request> (roslisp-msg-protocol:ros-message)
  ((output_type
    :reader output_type
    :initarg :output_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OutputType-request (<OutputType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OutputType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OutputType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<OutputType-request> is deprecated: use ars_40X-srv:OutputType-request instead.")))

(cl:ensure-generic-function 'output_type-val :lambda-list '(m))
(cl:defmethod output_type-val ((m <OutputType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-srv:output_type-val is deprecated.  Use ars_40X-srv:output_type instead.")
  (output_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OutputType-request>) ostream)
  "Serializes a message object of type '<OutputType-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OutputType-request>) istream)
  "Deserializes a message object of type '<OutputType-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OutputType-request>)))
  "Returns string type for a service object of type '<OutputType-request>"
  "ars_40X/OutputTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutputType-request)))
  "Returns string type for a service object of type 'OutputType-request"
  "ars_40X/OutputTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OutputType-request>)))
  "Returns md5sum for a message object of type '<OutputType-request>"
  "84258bdfadc436fc1e07d471616d0a90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OutputType-request)))
  "Returns md5sum for a message object of type 'OutputType-request"
  "84258bdfadc436fc1e07d471616d0a90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OutputType-request>)))
  "Returns full string definition for message of type '<OutputType-request>"
  (cl:format cl:nil "# none~%# send objects~%# send clusters~%~%uint8 output_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OutputType-request)))
  "Returns full string definition for message of type 'OutputType-request"
  (cl:format cl:nil "# none~%# send objects~%# send clusters~%~%uint8 output_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OutputType-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OutputType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OutputType-request
    (cl:cons ':output_type (output_type msg))
))
;//! \htmlinclude OutputType-response.msg.html

(cl:defclass <OutputType-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass OutputType-response (<OutputType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OutputType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OutputType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<OutputType-response> is deprecated: use ars_40X-srv:OutputType-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OutputType-response>) ostream)
  "Serializes a message object of type '<OutputType-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OutputType-response>) istream)
  "Deserializes a message object of type '<OutputType-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OutputType-response>)))
  "Returns string type for a service object of type '<OutputType-response>"
  "ars_40X/OutputTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutputType-response)))
  "Returns string type for a service object of type 'OutputType-response"
  "ars_40X/OutputTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OutputType-response>)))
  "Returns md5sum for a message object of type '<OutputType-response>"
  "84258bdfadc436fc1e07d471616d0a90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OutputType-response)))
  "Returns md5sum for a message object of type 'OutputType-response"
  "84258bdfadc436fc1e07d471616d0a90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OutputType-response>)))
  "Returns full string definition for message of type '<OutputType-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OutputType-response)))
  "Returns full string definition for message of type 'OutputType-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OutputType-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OutputType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OutputType-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OutputType)))
  'OutputType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OutputType)))
  'OutputType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutputType)))
  "Returns string type for a service object of type '<OutputType>"
  "ars_40X/OutputType")