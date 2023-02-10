; Auto-generated. Do not edit!


(cl:in-package ars_40X-srv)


;//! \htmlinclude SortIndex-request.msg.html

(cl:defclass <SortIndex-request> (roslisp-msg-protocol:ros-message)
  ((sort_index
    :reader sort_index
    :initarg :sort_index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SortIndex-request (<SortIndex-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SortIndex-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SortIndex-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<SortIndex-request> is deprecated: use ars_40X-srv:SortIndex-request instead.")))

(cl:ensure-generic-function 'sort_index-val :lambda-list '(m))
(cl:defmethod sort_index-val ((m <SortIndex-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-srv:sort_index-val is deprecated.  Use ars_40X-srv:sort_index instead.")
  (sort_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SortIndex-request>) ostream)
  "Serializes a message object of type '<SortIndex-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sort_index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SortIndex-request>) istream)
  "Deserializes a message object of type '<SortIndex-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sort_index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SortIndex-request>)))
  "Returns string type for a service object of type '<SortIndex-request>"
  "ars_40X/SortIndexRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SortIndex-request)))
  "Returns string type for a service object of type 'SortIndex-request"
  "ars_40X/SortIndexRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SortIndex-request>)))
  "Returns md5sum for a message object of type '<SortIndex-request>"
  "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SortIndex-request)))
  "Returns md5sum for a message object of type 'SortIndex-request"
  "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SortIndex-request>)))
  "Returns full string definition for message of type '<SortIndex-request>"
  (cl:format cl:nil "# Selects the sorting index for the object list (ignored for~%# clusters as they are always sorted by range)~%#~%# no sorting~%# sorted by range~%# sorted by RCS~%~%uint8 sort_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SortIndex-request)))
  "Returns full string definition for message of type 'SortIndex-request"
  (cl:format cl:nil "# Selects the sorting index for the object list (ignored for~%# clusters as they are always sorted by range)~%#~%# no sorting~%# sorted by range~%# sorted by RCS~%~%uint8 sort_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SortIndex-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SortIndex-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SortIndex-request
    (cl:cons ':sort_index (sort_index msg))
))
;//! \htmlinclude SortIndex-response.msg.html

(cl:defclass <SortIndex-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SortIndex-response (<SortIndex-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SortIndex-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SortIndex-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<SortIndex-response> is deprecated: use ars_40X-srv:SortIndex-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SortIndex-response>) ostream)
  "Serializes a message object of type '<SortIndex-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SortIndex-response>) istream)
  "Deserializes a message object of type '<SortIndex-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SortIndex-response>)))
  "Returns string type for a service object of type '<SortIndex-response>"
  "ars_40X/SortIndexResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SortIndex-response)))
  "Returns string type for a service object of type 'SortIndex-response"
  "ars_40X/SortIndexResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SortIndex-response>)))
  "Returns md5sum for a message object of type '<SortIndex-response>"
  "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SortIndex-response)))
  "Returns md5sum for a message object of type 'SortIndex-response"
  "93fb6a7e64dbd2a0708217b8ad8f0eb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SortIndex-response>)))
  "Returns full string definition for message of type '<SortIndex-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SortIndex-response)))
  "Returns full string definition for message of type 'SortIndex-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SortIndex-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SortIndex-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SortIndex-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SortIndex)))
  'SortIndex-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SortIndex)))
  'SortIndex-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SortIndex)))
  "Returns string type for a service object of type '<SortIndex>"
  "ars_40X/SortIndex")