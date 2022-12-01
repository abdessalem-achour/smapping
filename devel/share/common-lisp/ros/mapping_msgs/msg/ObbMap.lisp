; Auto-generated. Do not edit!


(cl:in-package mapping_msgs-msg)


;//! \htmlinclude ObbMap.msg.html

(cl:defclass <ObbMap> (roslisp-msg-protocol:ros-message)
  ((objects_obb
    :reader objects_obb
    :initarg :objects_obb
    :type (cl:vector geometry_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Polygon :initial-element (cl:make-instance 'geometry_msgs-msg:Polygon))))
)

(cl:defclass ObbMap (<ObbMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObbMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObbMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mapping_msgs-msg:<ObbMap> is deprecated: use mapping_msgs-msg:ObbMap instead.")))

(cl:ensure-generic-function 'objects_obb-val :lambda-list '(m))
(cl:defmethod objects_obb-val ((m <ObbMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapping_msgs-msg:objects_obb-val is deprecated.  Use mapping_msgs-msg:objects_obb instead.")
  (objects_obb m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObbMap>) ostream)
  "Serializes a message object of type '<ObbMap>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects_obb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects_obb))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObbMap>) istream)
  "Deserializes a message object of type '<ObbMap>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects_obb) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects_obb)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Polygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObbMap>)))
  "Returns string type for a message object of type '<ObbMap>"
  "mapping_msgs/ObbMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObbMap)))
  "Returns string type for a message object of type 'ObbMap"
  "mapping_msgs/ObbMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObbMap>)))
  "Returns md5sum for a message object of type '<ObbMap>"
  "fb56d8292e7d369877fd0b4896a6a391")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObbMap)))
  "Returns md5sum for a message object of type 'ObbMap"
  "fb56d8292e7d369877fd0b4896a6a391")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObbMap>)))
  "Returns full string definition for message of type '<ObbMap>"
  (cl:format cl:nil "geometry_msgs/Polygon[] objects_obb~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObbMap)))
  "Returns full string definition for message of type 'ObbMap"
  (cl:format cl:nil "geometry_msgs/Polygon[] objects_obb~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObbMap>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects_obb) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObbMap>))
  "Converts a ROS message object to a list"
  (cl:list 'ObbMap
    (cl:cons ':objects_obb (objects_obb msg))
))
