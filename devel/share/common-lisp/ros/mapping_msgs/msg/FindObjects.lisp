; Auto-generated. Do not edit!


(cl:in-package mapping_msgs-msg)


;//! \htmlinclude FindObjects.msg.html

(cl:defclass <FindObjects> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (near_to
    :reader near_to
    :initarg :near_to
    :type cl:string
    :initform "")
   (nearest_to_robot
    :reader nearest_to_robot
    :initarg :nearest_to_robot
    :type cl:boolean
    :initform cl:nil)
   (near_to_position
    :reader near_to_position
    :initarg :near_to_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass FindObjects (<FindObjects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindObjects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindObjects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mapping_msgs-msg:<FindObjects> is deprecated: use mapping_msgs-msg:FindObjects instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <FindObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapping_msgs-msg:name-val is deprecated.  Use mapping_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'near_to-val :lambda-list '(m))
(cl:defmethod near_to-val ((m <FindObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapping_msgs-msg:near_to-val is deprecated.  Use mapping_msgs-msg:near_to instead.")
  (near_to m))

(cl:ensure-generic-function 'nearest_to_robot-val :lambda-list '(m))
(cl:defmethod nearest_to_robot-val ((m <FindObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapping_msgs-msg:nearest_to_robot-val is deprecated.  Use mapping_msgs-msg:nearest_to_robot instead.")
  (nearest_to_robot m))

(cl:ensure-generic-function 'near_to_position-val :lambda-list '(m))
(cl:defmethod near_to_position-val ((m <FindObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapping_msgs-msg:near_to_position-val is deprecated.  Use mapping_msgs-msg:near_to_position instead.")
  (near_to_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindObjects>) ostream)
  "Serializes a message object of type '<FindObjects>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'near_to))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'near_to))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'nearest_to_robot) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'near_to_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindObjects>) istream)
  "Deserializes a message object of type '<FindObjects>"
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
      (cl:setf (cl:slot-value msg 'near_to) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'near_to) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'nearest_to_robot) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'near_to_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindObjects>)))
  "Returns string type for a message object of type '<FindObjects>"
  "mapping_msgs/FindObjects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindObjects)))
  "Returns string type for a message object of type 'FindObjects"
  "mapping_msgs/FindObjects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindObjects>)))
  "Returns md5sum for a message object of type '<FindObjects>"
  "a8b330e3732aff29a86332e860a858d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindObjects)))
  "Returns md5sum for a message object of type 'FindObjects"
  "a8b330e3732aff29a86332e860a858d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindObjects>)))
  "Returns full string definition for message of type '<FindObjects>"
  (cl:format cl:nil "string name~%string near_to~%bool nearest_to_robot~%geometry_msgs/Point near_to_position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindObjects)))
  "Returns full string definition for message of type 'FindObjects"
  (cl:format cl:nil "string name~%string near_to~%bool nearest_to_robot~%geometry_msgs/Point near_to_position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindObjects>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'near_to))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'near_to_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindObjects>))
  "Converts a ROS message object to a list"
  (cl:list 'FindObjects
    (cl:cons ':name (name msg))
    (cl:cons ':near_to (near_to msg))
    (cl:cons ':nearest_to_robot (nearest_to_robot msg))
    (cl:cons ':near_to_position (near_to_position msg))
))
