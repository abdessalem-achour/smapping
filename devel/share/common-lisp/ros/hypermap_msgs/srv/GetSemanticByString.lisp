; Auto-generated. Do not edit!


(cl:in-package hypermap_msgs-srv)


;//! \htmlinclude GetSemanticByString-request.msg.html

(cl:defclass <GetSemanticByString-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetSemanticByString-request (<GetSemanticByString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSemanticByString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSemanticByString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<GetSemanticByString-request> is deprecated: use hypermap_msgs-srv:GetSemanticByString-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetSemanticByString-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:name-val is deprecated.  Use hypermap_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSemanticByString-request>) ostream)
  "Serializes a message object of type '<GetSemanticByString-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSemanticByString-request>) istream)
  "Deserializes a message object of type '<GetSemanticByString-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSemanticByString-request>)))
  "Returns string type for a service object of type '<GetSemanticByString-request>"
  "hypermap_msgs/GetSemanticByStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSemanticByString-request)))
  "Returns string type for a service object of type 'GetSemanticByString-request"
  "hypermap_msgs/GetSemanticByStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSemanticByString-request>)))
  "Returns md5sum for a message object of type '<GetSemanticByString-request>"
  "dc1a1b37336827be86f9f0f1fe2b5c16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSemanticByString-request)))
  "Returns md5sum for a message object of type 'GetSemanticByString-request"
  "dc1a1b37336827be86f9f0f1fe2b5c16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSemanticByString-request>)))
  "Returns full string definition for message of type '<GetSemanticByString-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSemanticByString-request)))
  "Returns full string definition for message of type 'GetSemanticByString-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSemanticByString-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSemanticByString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSemanticByString-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetSemanticByString-response.msg.html

(cl:defclass <GetSemanticByString-response> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type (cl:vector hypermap_msgs-msg:SemanticObject)
   :initform (cl:make-array 0 :element-type 'hypermap_msgs-msg:SemanticObject :initial-element (cl:make-instance 'hypermap_msgs-msg:SemanticObject))))
)

(cl:defclass GetSemanticByString-response (<GetSemanticByString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSemanticByString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSemanticByString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<GetSemanticByString-response> is deprecated: use hypermap_msgs-srv:GetSemanticByString-response instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <GetSemanticByString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:objects-val is deprecated.  Use hypermap_msgs-srv:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSemanticByString-response>) ostream)
  "Serializes a message object of type '<GetSemanticByString-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSemanticByString-response>) istream)
  "Deserializes a message object of type '<GetSemanticByString-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSemanticByString-response>)))
  "Returns string type for a service object of type '<GetSemanticByString-response>"
  "hypermap_msgs/GetSemanticByStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSemanticByString-response)))
  "Returns string type for a service object of type 'GetSemanticByString-response"
  "hypermap_msgs/GetSemanticByStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSemanticByString-response>)))
  "Returns md5sum for a message object of type '<GetSemanticByString-response>"
  "dc1a1b37336827be86f9f0f1fe2b5c16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSemanticByString-response)))
  "Returns md5sum for a message object of type 'GetSemanticByString-response"
  "dc1a1b37336827be86f9f0f1fe2b5c16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSemanticByString-response>)))
  "Returns full string definition for message of type '<GetSemanticByString-response>"
  (cl:format cl:nil "SemanticObject[] objects~%~%~%================================================================================~%MSG: hypermap_msgs/SemanticObject~%int32 id~%geometry_msgs/Polygon shape~%geometry_msgs/Point position # should be centroid of shape~%string name~%string[] tags~%float64[] confidence~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSemanticByString-response)))
  "Returns full string definition for message of type 'GetSemanticByString-response"
  (cl:format cl:nil "SemanticObject[] objects~%~%~%================================================================================~%MSG: hypermap_msgs/SemanticObject~%int32 id~%geometry_msgs/Polygon shape~%geometry_msgs/Point position # should be centroid of shape~%string name~%string[] tags~%float64[] confidence~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSemanticByString-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSemanticByString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSemanticByString-response
    (cl:cons ':objects (objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSemanticByString)))
  'GetSemanticByString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSemanticByString)))
  'GetSemanticByString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSemanticByString)))
  "Returns string type for a service object of type '<GetSemanticByString>"
  "hypermap_msgs/GetSemanticByString")