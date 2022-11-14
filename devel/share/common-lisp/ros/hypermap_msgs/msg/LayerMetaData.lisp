; Auto-generated. Do not edit!


(cl:in-package hypermap_msgs-msg)


;//! \htmlinclude LayerMetaData.msg.html

(cl:defclass <LayerMetaData> (roslisp-msg-protocol:ros-message)
  ((class_name
    :reader class_name
    :initarg :class_name
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (subscribe_mode
    :reader subscribe_mode
    :initarg :subscribe_mode
    :type cl:boolean
    :initform cl:nil)
   (enable_update
    :reader enable_update
    :initarg :enable_update
    :type cl:boolean
    :initform cl:nil)
   (publish_global_topics
    :reader publish_global_topics
    :initarg :publish_global_topics
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LayerMetaData (<LayerMetaData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LayerMetaData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LayerMetaData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-msg:<LayerMetaData> is deprecated: use hypermap_msgs-msg:LayerMetaData instead.")))

(cl:ensure-generic-function 'class_name-val :lambda-list '(m))
(cl:defmethod class_name-val ((m <LayerMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:class_name-val is deprecated.  Use hypermap_msgs-msg:class_name instead.")
  (class_name m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <LayerMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:name-val is deprecated.  Use hypermap_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <LayerMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:frame_id-val is deprecated.  Use hypermap_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'subscribe_mode-val :lambda-list '(m))
(cl:defmethod subscribe_mode-val ((m <LayerMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:subscribe_mode-val is deprecated.  Use hypermap_msgs-msg:subscribe_mode instead.")
  (subscribe_mode m))

(cl:ensure-generic-function 'enable_update-val :lambda-list '(m))
(cl:defmethod enable_update-val ((m <LayerMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:enable_update-val is deprecated.  Use hypermap_msgs-msg:enable_update instead.")
  (enable_update m))

(cl:ensure-generic-function 'publish_global_topics-val :lambda-list '(m))
(cl:defmethod publish_global_topics-val ((m <LayerMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:publish_global_topics-val is deprecated.  Use hypermap_msgs-msg:publish_global_topics instead.")
  (publish_global_topics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LayerMetaData>) ostream)
  "Serializes a message object of type '<LayerMetaData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'class_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'class_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'subscribe_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_update) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'publish_global_topics) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LayerMetaData>) istream)
  "Deserializes a message object of type '<LayerMetaData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'class_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'class_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'subscribe_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_update) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'publish_global_topics) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LayerMetaData>)))
  "Returns string type for a message object of type '<LayerMetaData>"
  "hypermap_msgs/LayerMetaData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LayerMetaData)))
  "Returns string type for a message object of type 'LayerMetaData"
  "hypermap_msgs/LayerMetaData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LayerMetaData>)))
  "Returns md5sum for a message object of type '<LayerMetaData>"
  "cbb087715ec31cbe2dbbb7c5a3c3c3a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LayerMetaData)))
  "Returns md5sum for a message object of type 'LayerMetaData"
  "cbb087715ec31cbe2dbbb7c5a3c3c3a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LayerMetaData>)))
  "Returns full string definition for message of type '<LayerMetaData>"
  (cl:format cl:nil "string class_name~%string name~%string frame_id~%bool subscribe_mode~%bool enable_update~%bool publish_global_topics~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LayerMetaData)))
  "Returns full string definition for message of type 'LayerMetaData"
  (cl:format cl:nil "string class_name~%string name~%string frame_id~%bool subscribe_mode~%bool enable_update~%bool publish_global_topics~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LayerMetaData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'class_name))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LayerMetaData>))
  "Converts a ROS message object to a list"
  (cl:list 'LayerMetaData
    (cl:cons ':class_name (class_name msg))
    (cl:cons ':name (name msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':subscribe_mode (subscribe_mode msg))
    (cl:cons ':enable_update (enable_update msg))
    (cl:cons ':publish_global_topics (publish_global_topics msg))
))
