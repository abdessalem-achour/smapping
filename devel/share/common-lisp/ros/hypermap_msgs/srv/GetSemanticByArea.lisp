; Auto-generated. Do not edit!


(cl:in-package hypermap_msgs-srv)


;//! \htmlinclude GetSemanticByArea-request.msg.html

(cl:defclass <GetSemanticByArea-request> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass GetSemanticByArea-request (<GetSemanticByArea-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSemanticByArea-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSemanticByArea-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<GetSemanticByArea-request> is deprecated: use hypermap_msgs-srv:GetSemanticByArea-request instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <GetSemanticByArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:area-val is deprecated.  Use hypermap_msgs-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSemanticByArea-request>) ostream)
  "Serializes a message object of type '<GetSemanticByArea-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'area) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSemanticByArea-request>) istream)
  "Deserializes a message object of type '<GetSemanticByArea-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'area) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSemanticByArea-request>)))
  "Returns string type for a service object of type '<GetSemanticByArea-request>"
  "hypermap_msgs/GetSemanticByAreaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSemanticByArea-request)))
  "Returns string type for a service object of type 'GetSemanticByArea-request"
  "hypermap_msgs/GetSemanticByAreaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSemanticByArea-request>)))
  "Returns md5sum for a message object of type '<GetSemanticByArea-request>"
  "e0c98eff6480f8c467490b1909de5d07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSemanticByArea-request)))
  "Returns md5sum for a message object of type 'GetSemanticByArea-request"
  "e0c98eff6480f8c467490b1909de5d07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSemanticByArea-request>)))
  "Returns full string definition for message of type '<GetSemanticByArea-request>"
  (cl:format cl:nil "geometry_msgs/PolygonStamped area~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSemanticByArea-request)))
  "Returns full string definition for message of type 'GetSemanticByArea-request"
  (cl:format cl:nil "geometry_msgs/PolygonStamped area~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSemanticByArea-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'area))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSemanticByArea-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSemanticByArea-request
    (cl:cons ':area (area msg))
))
;//! \htmlinclude GetSemanticByArea-response.msg.html

(cl:defclass <GetSemanticByArea-response> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type (cl:vector hypermap_msgs-msg:SemanticObject)
   :initform (cl:make-array 0 :element-type 'hypermap_msgs-msg:SemanticObject :initial-element (cl:make-instance 'hypermap_msgs-msg:SemanticObject))))
)

(cl:defclass GetSemanticByArea-response (<GetSemanticByArea-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSemanticByArea-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSemanticByArea-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<GetSemanticByArea-response> is deprecated: use hypermap_msgs-srv:GetSemanticByArea-response instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <GetSemanticByArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:objects-val is deprecated.  Use hypermap_msgs-srv:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSemanticByArea-response>) ostream)
  "Serializes a message object of type '<GetSemanticByArea-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSemanticByArea-response>) istream)
  "Deserializes a message object of type '<GetSemanticByArea-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hypermap_msgs-msg:SemanticObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSemanticByArea-response>)))
  "Returns string type for a service object of type '<GetSemanticByArea-response>"
  "hypermap_msgs/GetSemanticByAreaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSemanticByArea-response)))
  "Returns string type for a service object of type 'GetSemanticByArea-response"
  "hypermap_msgs/GetSemanticByAreaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSemanticByArea-response>)))
  "Returns md5sum for a message object of type '<GetSemanticByArea-response>"
  "e0c98eff6480f8c467490b1909de5d07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSemanticByArea-response)))
  "Returns md5sum for a message object of type 'GetSemanticByArea-response"
  "e0c98eff6480f8c467490b1909de5d07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSemanticByArea-response>)))
  "Returns full string definition for message of type '<GetSemanticByArea-response>"
  (cl:format cl:nil "SemanticObject[] objects~%~%~%================================================================================~%MSG: hypermap_msgs/SemanticObject~%int32 id~%geometry_msgs/Polygon shape~%geometry_msgs/Point position # should be centroid of shape~%string name~%string[] tags~%float64[] confidence~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSemanticByArea-response)))
  "Returns full string definition for message of type 'GetSemanticByArea-response"
  (cl:format cl:nil "SemanticObject[] objects~%~%~%================================================================================~%MSG: hypermap_msgs/SemanticObject~%int32 id~%geometry_msgs/Polygon shape~%geometry_msgs/Point position # should be centroid of shape~%string name~%string[] tags~%float64[] confidence~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSemanticByArea-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSemanticByArea-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSemanticByArea-response
    (cl:cons ':objects (objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSemanticByArea)))
  'GetSemanticByArea-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSemanticByArea)))
  'GetSemanticByArea-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSemanticByArea)))
  "Returns string type for a service object of type '<GetSemanticByArea>"
  "hypermap_msgs/GetSemanticByArea")