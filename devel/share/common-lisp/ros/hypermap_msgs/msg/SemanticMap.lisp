; Auto-generated. Do not edit!


(cl:in-package hypermap_msgs-msg)


;//! \htmlinclude SemanticMap.msg.html

(cl:defclass <SemanticMap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector hypermap_msgs-msg:SemanticObject)
   :initform (cl:make-array 0 :element-type 'hypermap_msgs-msg:SemanticObject :initial-element (cl:make-instance 'hypermap_msgs-msg:SemanticObject))))
)

(cl:defclass SemanticMap (<SemanticMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-msg:<SemanticMap> is deprecated: use hypermap_msgs-msg:SemanticMap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SemanticMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:header-val is deprecated.  Use hypermap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <SemanticMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:objects-val is deprecated.  Use hypermap_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticMap>) ostream)
  "Serializes a message object of type '<SemanticMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticMap>) istream)
  "Deserializes a message object of type '<SemanticMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticMap>)))
  "Returns string type for a message object of type '<SemanticMap>"
  "hypermap_msgs/SemanticMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticMap)))
  "Returns string type for a message object of type 'SemanticMap"
  "hypermap_msgs/SemanticMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticMap>)))
  "Returns md5sum for a message object of type '<SemanticMap>"
  "8ec6a1e8bd790c8b760fdac54437cce7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticMap)))
  "Returns md5sum for a message object of type 'SemanticMap"
  "8ec6a1e8bd790c8b760fdac54437cce7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticMap>)))
  "Returns full string definition for message of type '<SemanticMap>"
  (cl:format cl:nil "Header header~%SemanticObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hypermap_msgs/SemanticObject~%int32 id~%geometry_msgs/Polygon shape~%geometry_msgs/Point position # should be centroid of shape~%string name~%string[] tags~%float64[] confidence~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticMap)))
  "Returns full string definition for message of type 'SemanticMap"
  (cl:format cl:nil "Header header~%SemanticObject[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hypermap_msgs/SemanticObject~%int32 id~%geometry_msgs/Polygon shape~%geometry_msgs/Point position # should be centroid of shape~%string name~%string[] tags~%float64[] confidence~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticMap>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticMap
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
