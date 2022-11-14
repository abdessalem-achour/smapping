; Auto-generated. Do not edit!


(cl:in-package mapping_msgs-msg)


;//! \htmlinclude BoxesAndClouds.msg.html

(cl:defclass <BoxesAndClouds> (roslisp-msg-protocol:ros-message)
  ((bounding_boxes
    :reader bounding_boxes
    :initarg :bounding_boxes
    :type mapping_msgs-msg:BoundingBoxes
    :initform (cl:make-instance 'mapping_msgs-msg:BoundingBoxes))
   (point_cloud
    :reader point_cloud
    :initarg :point_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (clock
    :reader clock
    :initarg :clock
    :type rosgraph_msgs-msg:Clock
    :initform (cl:make-instance 'rosgraph_msgs-msg:Clock)))
)

(cl:defclass BoxesAndClouds (<BoxesAndClouds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoxesAndClouds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoxesAndClouds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mapping_msgs-msg:<BoxesAndClouds> is deprecated: use mapping_msgs-msg:BoxesAndClouds instead.")))

(cl:ensure-generic-function 'bounding_boxes-val :lambda-list '(m))
(cl:defmethod bounding_boxes-val ((m <BoxesAndClouds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapping_msgs-msg:bounding_boxes-val is deprecated.  Use mapping_msgs-msg:bounding_boxes instead.")
  (bounding_boxes m))

(cl:ensure-generic-function 'point_cloud-val :lambda-list '(m))
(cl:defmethod point_cloud-val ((m <BoxesAndClouds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapping_msgs-msg:point_cloud-val is deprecated.  Use mapping_msgs-msg:point_cloud instead.")
  (point_cloud m))

(cl:ensure-generic-function 'clock-val :lambda-list '(m))
(cl:defmethod clock-val ((m <BoxesAndClouds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapping_msgs-msg:clock-val is deprecated.  Use mapping_msgs-msg:clock instead.")
  (clock m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoxesAndClouds>) ostream)
  "Serializes a message object of type '<BoxesAndClouds>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_boxes) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_cloud) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'clock) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoxesAndClouds>) istream)
  "Deserializes a message object of type '<BoxesAndClouds>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_boxes) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_cloud) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'clock) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoxesAndClouds>)))
  "Returns string type for a message object of type '<BoxesAndClouds>"
  "mapping_msgs/BoxesAndClouds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoxesAndClouds)))
  "Returns string type for a message object of type 'BoxesAndClouds"
  "mapping_msgs/BoxesAndClouds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoxesAndClouds>)))
  "Returns md5sum for a message object of type '<BoxesAndClouds>"
  "a9d322cd162f39753ffb3778b7aa7277")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoxesAndClouds)))
  "Returns md5sum for a message object of type 'BoxesAndClouds"
  "a9d322cd162f39753ffb3778b7aa7277")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoxesAndClouds>)))
  "Returns full string definition for message of type '<BoxesAndClouds>"
  (cl:format cl:nil "BoundingBoxes bounding_boxes~%sensor_msgs/PointCloud2 point_cloud~%rosgraph_msgs/Clock clock~%~%================================================================================~%MSG: mapping_msgs/BoundingBoxes~%Header header~%Header image_header~%BoundingBox[] bounding_boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mapping_msgs/BoundingBox~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%int16 id~%string Class~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: rosgraph_msgs/Clock~%# roslib/Clock is used for publishing simulated time in ROS. ~%# This message simply communicates the current time.~%# For more information, see http://www.ros.org/wiki/Clock~%time clock~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoxesAndClouds)))
  "Returns full string definition for message of type 'BoxesAndClouds"
  (cl:format cl:nil "BoundingBoxes bounding_boxes~%sensor_msgs/PointCloud2 point_cloud~%rosgraph_msgs/Clock clock~%~%================================================================================~%MSG: mapping_msgs/BoundingBoxes~%Header header~%Header image_header~%BoundingBox[] bounding_boxes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mapping_msgs/BoundingBox~%float64 probability~%int64 xmin~%int64 ymin~%int64 xmax~%int64 ymax~%int16 id~%string Class~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: rosgraph_msgs/Clock~%# roslib/Clock is used for publishing simulated time in ROS. ~%# This message simply communicates the current time.~%# For more information, see http://www.ros.org/wiki/Clock~%time clock~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoxesAndClouds>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_boxes))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_cloud))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'clock))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoxesAndClouds>))
  "Converts a ROS message object to a list"
  (cl:list 'BoxesAndClouds
    (cl:cons ':bounding_boxes (bounding_boxes msg))
    (cl:cons ':point_cloud (point_cloud msg))
    (cl:cons ':clock (clock msg))
))
