; Auto-generated. Do not edit!


(cl:in-package hypermap_msgs-srv)


;//! \htmlinclude GetStringAtPoint-request.msg.html

(cl:defclass <GetStringAtPoint-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetStringAtPoint-request (<GetStringAtPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStringAtPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStringAtPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<GetStringAtPoint-request> is deprecated: use hypermap_msgs-srv:GetStringAtPoint-request instead.")))

(cl:ensure-generic-function 'layer-val :lambda-list '(m))
(cl:defmethod layer-val ((m <GetStringAtPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:layer-val is deprecated.  Use hypermap_msgs-srv:layer instead.")
  (layer m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <GetStringAtPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:location-val is deprecated.  Use hypermap_msgs-srv:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStringAtPoint-request>) ostream)
  "Serializes a message object of type '<GetStringAtPoint-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'layer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'layer))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStringAtPoint-request>) istream)
  "Deserializes a message object of type '<GetStringAtPoint-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStringAtPoint-request>)))
  "Returns string type for a service object of type '<GetStringAtPoint-request>"
  "hypermap_msgs/GetStringAtPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringAtPoint-request)))
  "Returns string type for a service object of type 'GetStringAtPoint-request"
  "hypermap_msgs/GetStringAtPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStringAtPoint-request>)))
  "Returns md5sum for a message object of type '<GetStringAtPoint-request>"
  "6506da1882bf4a49b3b562d98d4687c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStringAtPoint-request)))
  "Returns md5sum for a message object of type 'GetStringAtPoint-request"
  "6506da1882bf4a49b3b562d98d4687c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStringAtPoint-request>)))
  "Returns full string definition for message of type '<GetStringAtPoint-request>"
  (cl:format cl:nil "string layer~%geometry_msgs/PointStamped location~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStringAtPoint-request)))
  "Returns full string definition for message of type 'GetStringAtPoint-request"
  (cl:format cl:nil "string layer~%geometry_msgs/PointStamped location~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStringAtPoint-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'layer))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStringAtPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStringAtPoint-request
    (cl:cons ':layer (layer msg))
    (cl:cons ':location (location msg))
))
;//! \htmlinclude GetStringAtPoint-response.msg.html

(cl:defclass <GetStringAtPoint-response> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetStringAtPoint-response (<GetStringAtPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStringAtPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStringAtPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<GetStringAtPoint-response> is deprecated: use hypermap_msgs-srv:GetStringAtPoint-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetStringAtPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:name-val is deprecated.  Use hypermap_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStringAtPoint-response>) ostream)
  "Serializes a message object of type '<GetStringAtPoint-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStringAtPoint-response>) istream)
  "Deserializes a message object of type '<GetStringAtPoint-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStringAtPoint-response>)))
  "Returns string type for a service object of type '<GetStringAtPoint-response>"
  "hypermap_msgs/GetStringAtPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringAtPoint-response)))
  "Returns string type for a service object of type 'GetStringAtPoint-response"
  "hypermap_msgs/GetStringAtPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStringAtPoint-response>)))
  "Returns md5sum for a message object of type '<GetStringAtPoint-response>"
  "6506da1882bf4a49b3b562d98d4687c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStringAtPoint-response)))
  "Returns md5sum for a message object of type 'GetStringAtPoint-response"
  "6506da1882bf4a49b3b562d98d4687c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStringAtPoint-response>)))
  "Returns full string definition for message of type '<GetStringAtPoint-response>"
  (cl:format cl:nil "string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStringAtPoint-response)))
  "Returns full string definition for message of type 'GetStringAtPoint-response"
  (cl:format cl:nil "string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStringAtPoint-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStringAtPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStringAtPoint-response
    (cl:cons ':name (name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetStringAtPoint)))
  'GetStringAtPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetStringAtPoint)))
  'GetStringAtPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringAtPoint)))
  "Returns string type for a service object of type '<GetStringAtPoint>"
  "hypermap_msgs/GetStringAtPoint")