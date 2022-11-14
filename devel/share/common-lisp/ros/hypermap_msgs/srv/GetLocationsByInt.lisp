; Auto-generated. Do not edit!


(cl:in-package hypermap_msgs-srv)


;//! \htmlinclude GetLocationsByInt-request.msg.html

(cl:defclass <GetLocationsByInt-request> (roslisp-msg-protocol:ros-message)
  ((layer
    :reader layer
    :initarg :layer
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (area
    :reader area
    :initarg :area
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass GetLocationsByInt-request (<GetLocationsByInt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocationsByInt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocationsByInt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<GetLocationsByInt-request> is deprecated: use hypermap_msgs-srv:GetLocationsByInt-request instead.")))

(cl:ensure-generic-function 'layer-val :lambda-list '(m))
(cl:defmethod layer-val ((m <GetLocationsByInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:layer-val is deprecated.  Use hypermap_msgs-srv:layer instead.")
  (layer m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetLocationsByInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:value-val is deprecated.  Use hypermap_msgs-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <GetLocationsByInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:area-val is deprecated.  Use hypermap_msgs-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocationsByInt-request>) ostream)
  "Serializes a message object of type '<GetLocationsByInt-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'layer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'layer))
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'area) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocationsByInt-request>) istream)
  "Deserializes a message object of type '<GetLocationsByInt-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'layer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'layer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'area) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocationsByInt-request>)))
  "Returns string type for a service object of type '<GetLocationsByInt-request>"
  "hypermap_msgs/GetLocationsByIntRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocationsByInt-request)))
  "Returns string type for a service object of type 'GetLocationsByInt-request"
  "hypermap_msgs/GetLocationsByIntRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocationsByInt-request>)))
  "Returns md5sum for a message object of type '<GetLocationsByInt-request>"
  "b49980ebdc2170afb007a5755d50a9cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocationsByInt-request)))
  "Returns md5sum for a message object of type 'GetLocationsByInt-request"
  "b49980ebdc2170afb007a5755d50a9cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocationsByInt-request>)))
  "Returns full string definition for message of type '<GetLocationsByInt-request>"
  (cl:format cl:nil "string layer~%int32 value~%geometry_msgs/PolygonStamped area~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocationsByInt-request)))
  "Returns full string definition for message of type 'GetLocationsByInt-request"
  (cl:format cl:nil "string layer~%int32 value~%geometry_msgs/PolygonStamped area~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocationsByInt-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'layer))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'area))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocationsByInt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocationsByInt-request
    (cl:cons ':layer (layer msg))
    (cl:cons ':value (value msg))
    (cl:cons ':area (area msg))
))
;//! \htmlinclude GetLocationsByInt-response.msg.html

(cl:defclass <GetLocationsByInt-response> (roslisp-msg-protocol:ros-message)
  ((locations
    :reader locations
    :initarg :locations
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass GetLocationsByInt-response (<GetLocationsByInt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocationsByInt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocationsByInt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<GetLocationsByInt-response> is deprecated: use hypermap_msgs-srv:GetLocationsByInt-response instead.")))

(cl:ensure-generic-function 'locations-val :lambda-list '(m))
(cl:defmethod locations-val ((m <GetLocationsByInt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:locations-val is deprecated.  Use hypermap_msgs-srv:locations instead.")
  (locations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocationsByInt-response>) ostream)
  "Serializes a message object of type '<GetLocationsByInt-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'locations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'locations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocationsByInt-response>) istream)
  "Deserializes a message object of type '<GetLocationsByInt-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'locations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'locations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocationsByInt-response>)))
  "Returns string type for a service object of type '<GetLocationsByInt-response>"
  "hypermap_msgs/GetLocationsByIntResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocationsByInt-response)))
  "Returns string type for a service object of type 'GetLocationsByInt-response"
  "hypermap_msgs/GetLocationsByIntResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocationsByInt-response>)))
  "Returns md5sum for a message object of type '<GetLocationsByInt-response>"
  "b49980ebdc2170afb007a5755d50a9cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocationsByInt-response)))
  "Returns md5sum for a message object of type 'GetLocationsByInt-response"
  "b49980ebdc2170afb007a5755d50a9cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocationsByInt-response>)))
  "Returns full string definition for message of type '<GetLocationsByInt-response>"
  (cl:format cl:nil "geometry_msgs/Point[] locations~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocationsByInt-response)))
  "Returns full string definition for message of type 'GetLocationsByInt-response"
  (cl:format cl:nil "geometry_msgs/Point[] locations~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocationsByInt-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'locations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocationsByInt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocationsByInt-response
    (cl:cons ':locations (locations msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLocationsByInt)))
  'GetLocationsByInt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLocationsByInt)))
  'GetLocationsByInt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocationsByInt)))
  "Returns string type for a service object of type '<GetLocationsByInt>"
  "hypermap_msgs/GetLocationsByInt")