; Auto-generated. Do not edit!


(cl:in-package hypermap_msgs-msg)


;//! \htmlinclude SemanticMapUpdate.msg.html

(cl:defclass <SemanticMapUpdate> (roslisp-msg-protocol:ros-message)
  ((to_add
    :reader to_add
    :initarg :to_add
    :type (cl:vector hypermap_msgs-msg:SemanticObject)
   :initform (cl:make-array 0 :element-type 'hypermap_msgs-msg:SemanticObject :initial-element (cl:make-instance 'hypermap_msgs-msg:SemanticObject)))
   (to_modify
    :reader to_modify
    :initarg :to_modify
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (updates
    :reader updates
    :initarg :updates
    :type (cl:vector hypermap_msgs-msg:SemanticObject)
   :initform (cl:make-array 0 :element-type 'hypermap_msgs-msg:SemanticObject :initial-element (cl:make-instance 'hypermap_msgs-msg:SemanticObject)))
   (to_delete
    :reader to_delete
    :initarg :to_delete
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SemanticMapUpdate (<SemanticMapUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticMapUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticMapUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-msg:<SemanticMapUpdate> is deprecated: use hypermap_msgs-msg:SemanticMapUpdate instead.")))

(cl:ensure-generic-function 'to_add-val :lambda-list '(m))
(cl:defmethod to_add-val ((m <SemanticMapUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:to_add-val is deprecated.  Use hypermap_msgs-msg:to_add instead.")
  (to_add m))

(cl:ensure-generic-function 'to_modify-val :lambda-list '(m))
(cl:defmethod to_modify-val ((m <SemanticMapUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:to_modify-val is deprecated.  Use hypermap_msgs-msg:to_modify instead.")
  (to_modify m))

(cl:ensure-generic-function 'updates-val :lambda-list '(m))
(cl:defmethod updates-val ((m <SemanticMapUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:updates-val is deprecated.  Use hypermap_msgs-msg:updates instead.")
  (updates m))

(cl:ensure-generic-function 'to_delete-val :lambda-list '(m))
(cl:defmethod to_delete-val ((m <SemanticMapUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:to_delete-val is deprecated.  Use hypermap_msgs-msg:to_delete instead.")
  (to_delete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticMapUpdate>) ostream)
  "Serializes a message object of type '<SemanticMapUpdate>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'to_add))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'to_add))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'to_modify))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'to_modify))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'updates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'updates))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'to_delete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'to_delete))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticMapUpdate>) istream)
  "Deserializes a message object of type '<SemanticMapUpdate>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'to_add) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'to_add)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hypermap_msgs-msg:SemanticObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'to_modify) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'to_modify)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'updates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'updates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hypermap_msgs-msg:SemanticObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'to_delete) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'to_delete)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticMapUpdate>)))
  "Returns string type for a message object of type '<SemanticMapUpdate>"
  "hypermap_msgs/SemanticMapUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticMapUpdate)))
  "Returns string type for a message object of type 'SemanticMapUpdate"
  "hypermap_msgs/SemanticMapUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticMapUpdate>)))
  "Returns md5sum for a message object of type '<SemanticMapUpdate>"
  "da8894bccdfde7741529f3941bb988c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticMapUpdate)))
  "Returns md5sum for a message object of type 'SemanticMapUpdate"
  "da8894bccdfde7741529f3941bb988c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticMapUpdate>)))
  "Returns full string definition for message of type '<SemanticMapUpdate>"
  (cl:format cl:nil "SemanticObject[] to_add~%uint32[] to_modify~%SemanticObject[] updates~%uint32[] to_delete~%~%================================================================================~%MSG: hypermap_msgs/SemanticObject~%int32 id~%geometry_msgs/Polygon shape~%geometry_msgs/Point position # should be centroid of shape~%string name~%string[] tags~%float64[] confidence~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticMapUpdate)))
  "Returns full string definition for message of type 'SemanticMapUpdate"
  (cl:format cl:nil "SemanticObject[] to_add~%uint32[] to_modify~%SemanticObject[] updates~%uint32[] to_delete~%~%================================================================================~%MSG: hypermap_msgs/SemanticObject~%int32 id~%geometry_msgs/Polygon shape~%geometry_msgs/Point position # should be centroid of shape~%string name~%string[] tags~%float64[] confidence~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticMapUpdate>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'to_add) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'to_modify) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'updates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'to_delete) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticMapUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticMapUpdate
    (cl:cons ':to_add (to_add msg))
    (cl:cons ':to_modify (to_modify msg))
    (cl:cons ':updates (updates msg))
    (cl:cons ':to_delete (to_delete msg))
))
