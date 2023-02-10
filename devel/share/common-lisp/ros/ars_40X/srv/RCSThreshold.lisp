; Auto-generated. Do not edit!


(cl:in-package ars_40X-srv)


;//! \htmlinclude RCSThreshold-request.msg.html

(cl:defclass <RCSThreshold-request> (roslisp-msg-protocol:ros-message)
  ((rcs_threshold
    :reader rcs_threshold
    :initarg :rcs_threshold
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RCSThreshold-request (<RCSThreshold-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RCSThreshold-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RCSThreshold-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<RCSThreshold-request> is deprecated: use ars_40X-srv:RCSThreshold-request instead.")))

(cl:ensure-generic-function 'rcs_threshold-val :lambda-list '(m))
(cl:defmethod rcs_threshold-val ((m <RCSThreshold-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-srv:rcs_threshold-val is deprecated.  Use ars_40X-srv:rcs_threshold instead.")
  (rcs_threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RCSThreshold-request>) ostream)
  "Serializes a message object of type '<RCSThreshold-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rcs_threshold)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RCSThreshold-request>) istream)
  "Deserializes a message object of type '<RCSThreshold-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rcs_threshold)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RCSThreshold-request>)))
  "Returns string type for a service object of type '<RCSThreshold-request>"
  "ars_40X/RCSThresholdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RCSThreshold-request)))
  "Returns string type for a service object of type 'RCSThreshold-request"
  "ars_40X/RCSThresholdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RCSThreshold-request>)))
  "Returns md5sum for a message object of type '<RCSThreshold-request>"
  "2395c11d5141075461a6a21a788a2778")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RCSThreshold-request)))
  "Returns md5sum for a message object of type 'RCSThreshold-request"
  "2395c11d5141075461a6a21a788a2778")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RCSThreshold-request>)))
  "Returns full string definition for message of type '<RCSThreshold-request>"
  (cl:format cl:nil "# Sets the sensitivity of the cluster detection to standard~%# (0x0) or high sensitivity (0x1)~%~%uint8 rcs_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RCSThreshold-request)))
  "Returns full string definition for message of type 'RCSThreshold-request"
  (cl:format cl:nil "# Sets the sensitivity of the cluster detection to standard~%# (0x0) or high sensitivity (0x1)~%~%uint8 rcs_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RCSThreshold-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RCSThreshold-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RCSThreshold-request
    (cl:cons ':rcs_threshold (rcs_threshold msg))
))
;//! \htmlinclude RCSThreshold-response.msg.html

(cl:defclass <RCSThreshold-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RCSThreshold-response (<RCSThreshold-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RCSThreshold-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RCSThreshold-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<RCSThreshold-response> is deprecated: use ars_40X-srv:RCSThreshold-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RCSThreshold-response>) ostream)
  "Serializes a message object of type '<RCSThreshold-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RCSThreshold-response>) istream)
  "Deserializes a message object of type '<RCSThreshold-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RCSThreshold-response>)))
  "Returns string type for a service object of type '<RCSThreshold-response>"
  "ars_40X/RCSThresholdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RCSThreshold-response)))
  "Returns string type for a service object of type 'RCSThreshold-response"
  "ars_40X/RCSThresholdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RCSThreshold-response>)))
  "Returns md5sum for a message object of type '<RCSThreshold-response>"
  "2395c11d5141075461a6a21a788a2778")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RCSThreshold-response)))
  "Returns md5sum for a message object of type 'RCSThreshold-response"
  "2395c11d5141075461a6a21a788a2778")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RCSThreshold-response>)))
  "Returns full string definition for message of type '<RCSThreshold-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RCSThreshold-response)))
  "Returns full string definition for message of type 'RCSThreshold-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RCSThreshold-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RCSThreshold-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RCSThreshold-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RCSThreshold)))
  'RCSThreshold-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RCSThreshold)))
  'RCSThreshold-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RCSThreshold)))
  "Returns string type for a service object of type '<RCSThreshold>"
  "ars_40X/RCSThreshold")