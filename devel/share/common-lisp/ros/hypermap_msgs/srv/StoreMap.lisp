; Auto-generated. Do not edit!


(cl:in-package hypermap_msgs-srv)


;//! \htmlinclude StoreMap-request.msg.html

(cl:defclass <StoreMap-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass StoreMap-request (<StoreMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StoreMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StoreMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<StoreMap-request> is deprecated: use hypermap_msgs-srv:StoreMap-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <StoreMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:filename-val is deprecated.  Use hypermap_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StoreMap-request>) ostream)
  "Serializes a message object of type '<StoreMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StoreMap-request>) istream)
  "Deserializes a message object of type '<StoreMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StoreMap-request>)))
  "Returns string type for a service object of type '<StoreMap-request>"
  "hypermap_msgs/StoreMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StoreMap-request)))
  "Returns string type for a service object of type 'StoreMap-request"
  "hypermap_msgs/StoreMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StoreMap-request>)))
  "Returns md5sum for a message object of type '<StoreMap-request>"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StoreMap-request)))
  "Returns md5sum for a message object of type 'StoreMap-request"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StoreMap-request>)))
  "Returns full string definition for message of type '<StoreMap-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StoreMap-request)))
  "Returns full string definition for message of type 'StoreMap-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StoreMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StoreMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StoreMap-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude StoreMap-response.msg.html

(cl:defclass <StoreMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StoreMap-response (<StoreMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StoreMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StoreMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-srv:<StoreMap-response> is deprecated: use hypermap_msgs-srv:StoreMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StoreMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-srv:success-val is deprecated.  Use hypermap_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StoreMap-response>) ostream)
  "Serializes a message object of type '<StoreMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StoreMap-response>) istream)
  "Deserializes a message object of type '<StoreMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StoreMap-response>)))
  "Returns string type for a service object of type '<StoreMap-response>"
  "hypermap_msgs/StoreMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StoreMap-response)))
  "Returns string type for a service object of type 'StoreMap-response"
  "hypermap_msgs/StoreMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StoreMap-response>)))
  "Returns md5sum for a message object of type '<StoreMap-response>"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StoreMap-response)))
  "Returns md5sum for a message object of type 'StoreMap-response"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StoreMap-response>)))
  "Returns full string definition for message of type '<StoreMap-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StoreMap-response)))
  "Returns full string definition for message of type 'StoreMap-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StoreMap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StoreMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StoreMap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StoreMap)))
  'StoreMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StoreMap)))
  'StoreMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StoreMap)))
  "Returns string type for a service object of type '<StoreMap>"
  "hypermap_msgs/StoreMap")