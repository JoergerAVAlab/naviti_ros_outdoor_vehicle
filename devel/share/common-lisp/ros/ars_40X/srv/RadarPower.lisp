; Auto-generated. Do not edit!


(cl:in-package ars_40X-srv)


;//! \htmlinclude RadarPower-request.msg.html

(cl:defclass <RadarPower-request> (roslisp-msg-protocol:ros-message)
  ((radar_power
    :reader radar_power
    :initarg :radar_power
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarPower-request (<RadarPower-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarPower-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarPower-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<RadarPower-request> is deprecated: use ars_40X-srv:RadarPower-request instead.")))

(cl:ensure-generic-function 'radar_power-val :lambda-list '(m))
(cl:defmethod radar_power-val ((m <RadarPower-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ars_40X-srv:radar_power-val is deprecated.  Use ars_40X-srv:radar_power instead.")
  (radar_power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarPower-request>) ostream)
  "Serializes a message object of type '<RadarPower-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_power)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarPower-request>) istream)
  "Deserializes a message object of type '<RadarPower-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_power)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarPower-request>)))
  "Returns string type for a service object of type '<RadarPower-request>"
  "ars_40X/RadarPowerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarPower-request)))
  "Returns string type for a service object of type 'RadarPower-request"
  "ars_40X/RadarPowerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarPower-request>)))
  "Returns md5sum for a message object of type '<RadarPower-request>"
  "1729e07afca5fdcd752c0c577b4694e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarPower-request)))
  "Returns md5sum for a message object of type 'RadarPower-request"
  "1729e07afca5fdcd752c0c577b4694e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarPower-request>)))
  "Returns full string definition for message of type '<RadarPower-request>"
  (cl:format cl:nil "# Configures the transmitted radar power (Tx~%# attenuation). The output RCS of cluster and objects~%# will be compensated for this attenuation. Reducing~%# the output power can improve detection in case of~%# close range scenarios or inside rooms.~%#~%# Standard~%# -3dB Tx gain~%# -6dB Tx gain~%# -9dB Tx gain~%~%uint8 radar_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarPower-request)))
  "Returns full string definition for message of type 'RadarPower-request"
  (cl:format cl:nil "# Configures the transmitted radar power (Tx~%# attenuation). The output RCS of cluster and objects~%# will be compensated for this attenuation. Reducing~%# the output power can improve detection in case of~%# close range scenarios or inside rooms.~%#~%# Standard~%# -3dB Tx gain~%# -6dB Tx gain~%# -9dB Tx gain~%~%uint8 radar_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarPower-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarPower-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarPower-request
    (cl:cons ':radar_power (radar_power msg))
))
;//! \htmlinclude RadarPower-response.msg.html

(cl:defclass <RadarPower-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RadarPower-response (<RadarPower-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarPower-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarPower-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ars_40X-srv:<RadarPower-response> is deprecated: use ars_40X-srv:RadarPower-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarPower-response>) ostream)
  "Serializes a message object of type '<RadarPower-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarPower-response>) istream)
  "Deserializes a message object of type '<RadarPower-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarPower-response>)))
  "Returns string type for a service object of type '<RadarPower-response>"
  "ars_40X/RadarPowerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarPower-response)))
  "Returns string type for a service object of type 'RadarPower-response"
  "ars_40X/RadarPowerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarPower-response>)))
  "Returns md5sum for a message object of type '<RadarPower-response>"
  "1729e07afca5fdcd752c0c577b4694e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarPower-response)))
  "Returns md5sum for a message object of type 'RadarPower-response"
  "1729e07afca5fdcd752c0c577b4694e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarPower-response>)))
  "Returns full string definition for message of type '<RadarPower-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarPower-response)))
  "Returns full string definition for message of type 'RadarPower-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarPower-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarPower-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarPower-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RadarPower)))
  'RadarPower-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RadarPower)))
  'RadarPower-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarPower)))
  "Returns string type for a service object of type '<RadarPower>"
  "ars_40X/RadarPower")