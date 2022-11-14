; Auto-generated. Do not edit!


(cl:in-package hypermap_msgs-srv)


;//! \htmlinclude GetIntAtPoint-request.msg.html

(cl:defclass <GetIntAtPoint-request> (roslisp-msg-protocol:ros-message)
  ((layer
    :reader layer
    :initarg :layer
    :type cl:string
    :initform "")
   (location
    :reader location
    :initarg :location
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass GetIntAtPoint-request (<GetIntAtPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIntAtPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIntAtPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<GetIntAtPoint-request> is deprecated: use hypermap_msgs-srv:GetIntAtPoint-request instead.")))

(cl:ensure-generic-function 'layer-val :lambda-list '(m))
(cl:defmethod layer-val ((m <GetIntAtPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:layer-val is deprecated.  Use hypermap_msgs-srv:layer instead.")
  (layer m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <GetIntAtPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:location-val is deprecated.  Use hypermap_msgs-srv:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIntAtPoint-request>) ostream)
  "Serializes a message object of type '<GetIntAtPoint-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'layer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'layer))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIntAtPoint-request>) istream)
  "Deserializes a message object of type '<GetIntAtPoint-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'layer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'layer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIntAtPoint-request>)))
  "Returns string type for a service object of type '<GetIntAtPoint-request>"
  "hypermap_msgs/GetIntAtPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIntAtPoint-request)))
  "Returns string type for a service object of type 'GetIntAtPoint-request"
  "hypermap_msgs/GetIntAtPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIntAtPoint-request>)))
  "Returns md5sum for a message object of type '<GetIntAtPoint-request>"
  "5b82ad85c0c95a55d71d18e8d12c4b30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIntAtPoint-request)))
  "Returns md5sum for a message object of type 'GetIntAtPoint-request"
  "5b82ad85c0c95a55d71d18e8d12c4b30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIntAtPoint-request>)))
  "Returns full string definition for message of type '<GetIntAtPoint-request>"
  (cl:format cl:nil "string layer~%geometry_msgs/PointStamped location~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIntAtPoint-request)))
  "Returns full string definition for message of type 'GetIntAtPoint-request"
  (cl:format cl:nil "string layer~%geometry_msgs/PointStamped location~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIntAtPoint-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'layer))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIntAtPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIntAtPoint-request
    (cl:cons ':layer (layer msg))
    (cl:cons ':location (location msg))
))
;//! \htmlinclude GetIntAtPoint-response.msg.html

(cl:defclass <GetIntAtPoint-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass GetIntAtPoint-response (<GetIntAtPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIntAtPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIntAtPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<GetIntAtPoint-response> is deprecated: use hypermap_msgs-srv:GetIntAtPoint-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetIntAtPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:value-val is deprecated.  Use hypermap_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIntAtPoint-response>) ostream)
  "Serializes a message object of type '<GetIntAtPoint-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIntAtPoint-response>) istream)
  "Deserializes a message object of type '<GetIntAtPoint-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIntAtPoint-response>)))
  "Returns string type for a service object of type '<GetIntAtPoint-response>"
  "hypermap_msgs/GetIntAtPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIntAtPoint-response)))
  "Returns string type for a service object of type 'GetIntAtPoint-response"
  "hypermap_msgs/GetIntAtPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIntAtPoint-response>)))
  "Returns md5sum for a message object of type '<GetIntAtPoint-response>"
  "5b82ad85c0c95a55d71d18e8d12c4b30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIntAtPoint-response)))
  "Returns md5sum for a message object of type 'GetIntAtPoint-response"
  "5b82ad85c0c95a55d71d18e8d12c4b30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIntAtPoint-response>)))
  "Returns full string definition for message of type '<GetIntAtPoint-response>"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIntAtPoint-response)))
  "Returns full string definition for message of type 'GetIntAtPoint-response"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIntAtPoint-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIntAtPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIntAtPoint-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIntAtPoint)))
  'GetIntAtPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIntAtPoint)))
  'GetIntAtPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIntAtPoint)))
  "Returns string type for a service object of type '<GetIntAtPoint>"
  "hypermap_msgs/GetIntAtPoint")