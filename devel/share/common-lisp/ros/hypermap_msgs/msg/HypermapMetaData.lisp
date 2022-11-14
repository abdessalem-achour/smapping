; Auto-generated. Do not edit!


(cl:in-package hypermap_msgs-msg)


;//! \htmlinclude HypermapMetaData.msg.html

(cl:defclass <HypermapMetaData> (roslisp-msg-protocol:ros-message)
  ((layer_cnt
    :reader layer_cnt
    :initarg :layer_cnt
    :type cl:integer
    :initform 0)
   (node_name
    :reader node_name
    :initarg :node_name
    :type cl:string
    :initform "")
   (layers
    :reader layers
    :initarg :layers
    :type (cl:vector hypermap_msgs-msg:LayerMetaData)
   :initform (cl:make-array 0 :element-type 'hypermap_msgs-msg:LayerMetaData :initial-element (cl:make-instance 'hypermap_msgs-msg:LayerMetaData))))
)

(cl:defclass HypermapMetaData (<HypermapMetaData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HypermapMetaData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HypermapMetaData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hypermap_msgs-msg:<HypermapMetaData> is deprecated: use hypermap_msgs-msg:HypermapMetaData instead.")))

(cl:ensure-generic-function 'layer_cnt-val :lambda-list '(m))
(cl:defmethod layer_cnt-val ((m <HypermapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:layer_cnt-val is deprecated.  Use hypermap_msgs-msg:layer_cnt instead.")
  (layer_cnt m))

(cl:ensure-generic-function 'node_name-val :lambda-list '(m))
(cl:defmethod node_name-val ((m <HypermapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:node_name-val is deprecated.  Use hypermap_msgs-msg:node_name instead.")
  (node_name m))

(cl:ensure-generic-function 'layers-val :lambda-list '(m))
(cl:defmethod layers-val ((m <HypermapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hypermap_msgs-msg:layers-val is deprecated.  Use hypermap_msgs-msg:layers instead.")
  (layers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HypermapMetaData>) ostream)
  "Serializes a message object of type '<HypermapMetaData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'layer_cnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'layer_cnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'layer_cnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'layer_cnt)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'layers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'layers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HypermapMetaData>) istream)
  "Deserializes a message object of type '<HypermapMetaData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'layer_cnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'layer_cnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'layer_cnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'layer_cnt)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'layers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'layers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hypermap_msgs-msg:LayerMetaData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HypermapMetaData>)))
  "Returns string type for a message object of type '<HypermapMetaData>"
  "hypermap_msgs/HypermapMetaData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HypermapMetaData)))
  "Returns string type for a message object of type 'HypermapMetaData"
  "hypermap_msgs/HypermapMetaData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HypermapMetaData>)))
  "Returns md5sum for a message object of type '<HypermapMetaData>"
  "5befb9e9353d4c71ff05aaa102cd721a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HypermapMetaData)))
  "Returns md5sum for a message object of type 'HypermapMetaData"
  "5befb9e9353d4c71ff05aaa102cd721a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HypermapMetaData>)))
  "Returns full string definition for message of type '<HypermapMetaData>"
  (cl:format cl:nil "uint32 layer_cnt~%string node_name~%LayerMetaData[] layers~%~%================================================================================~%MSG: hypermap_msgs/LayerMetaData~%string class_name~%string name~%string frame_id~%bool subscribe_mode~%bool enable_update~%bool publish_global_topics~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HypermapMetaData)))
  "Returns full string definition for message of type 'HypermapMetaData"
  (cl:format cl:nil "uint32 layer_cnt~%string node_name~%LayerMetaData[] layers~%~%================================================================================~%MSG: hypermap_msgs/LayerMetaData~%string class_name~%string name~%string frame_id~%bool subscribe_mode~%bool enable_update~%bool publish_global_topics~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HypermapMetaData>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'node_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'layers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HypermapMetaData>))
  "Converts a ROS message object to a list"
  (cl:list 'HypermapMetaData
    (cl:cons ':layer_cnt (layer_cnt msg))
    (cl:cons ':node_name (node_name msg))
    (cl:cons ':layers (layers msg))
))
