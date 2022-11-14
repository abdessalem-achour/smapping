;; Auto-generated. Do not edit!


(when (boundp 'mapping_msgs::BoxesAndClouds)
  (if (not (find-package "MAPPING_MSGS"))
    (make-package "MAPPING_MSGS"))
  (shadow 'BoxesAndClouds (find-package "MAPPING_MSGS")))
(unless (find-package "MAPPING_MSGS::BOXESANDCLOUDS")
  (make-package "MAPPING_MSGS::BOXESANDCLOUDS"))

(in-package "ROS")
;;//! \htmlinclude BoxesAndClouds.msg.html
(if (not (find-package "ROSGRAPH_MSGS"))
  (ros::roseus-add-msgs "rosgraph_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass mapping_msgs::BoxesAndClouds
  :super ros::object
  :slots (_bounding_boxes _point_cloud _clock ))

(defmethod mapping_msgs::BoxesAndClouds
  (:init
   (&key
    ((:bounding_boxes __bounding_boxes) (instance mapping_msgs::BoundingBoxes :init))
    ((:point_cloud __point_cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:clock __clock) (instance rosgraph_msgs::Clock :init))
    )
   (send-super :init)
   (setq _bounding_boxes __bounding_boxes)
   (setq _point_cloud __point_cloud)
   (setq _clock __clock)
   self)
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:point_cloud
   (&rest __point_cloud)
   (if (keywordp (car __point_cloud))
       (send* _point_cloud __point_cloud)
     (progn
       (if __point_cloud (setq _point_cloud (car __point_cloud)))
       _point_cloud)))
  (:clock
   (&rest __clock)
   (if (keywordp (car __clock))
       (send* _clock __clock)
     (progn
       (if __clock (setq _clock (car __clock)))
       _clock)))
  (:serialization-length
   ()
   (+
    ;; mapping_msgs/BoundingBoxes _bounding_boxes
    (send _bounding_boxes :serialization-length)
    ;; sensor_msgs/PointCloud2 _point_cloud
    (send _point_cloud :serialization-length)
    ;; rosgraph_msgs/Clock _clock
    (send _clock :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mapping_msgs/BoundingBoxes _bounding_boxes
       (send _bounding_boxes :serialize s)
     ;; sensor_msgs/PointCloud2 _point_cloud
       (send _point_cloud :serialize s)
     ;; rosgraph_msgs/Clock _clock
       (send _clock :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mapping_msgs/BoundingBoxes _bounding_boxes
     (send _bounding_boxes :deserialize buf ptr-) (incf ptr- (send _bounding_boxes :serialization-length))
   ;; sensor_msgs/PointCloud2 _point_cloud
     (send _point_cloud :deserialize buf ptr-) (incf ptr- (send _point_cloud :serialization-length))
   ;; rosgraph_msgs/Clock _clock
     (send _clock :deserialize buf ptr-) (incf ptr- (send _clock :serialization-length))
   ;;
   self)
  )

(setf (get mapping_msgs::BoxesAndClouds :md5sum-) "a9d322cd162f39753ffb3778b7aa7277")
(setf (get mapping_msgs::BoxesAndClouds :datatype-) "mapping_msgs/BoxesAndClouds")
(setf (get mapping_msgs::BoxesAndClouds :definition-)
      "BoundingBoxes bounding_boxes
sensor_msgs/PointCloud2 point_cloud
rosgraph_msgs/Clock clock

================================================================================
MSG: mapping_msgs/BoundingBoxes
Header header
Header image_header
BoundingBox[] bounding_boxes

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: mapping_msgs/BoundingBox
float64 probability
int64 xmin
int64 ymin
int64 xmax
int64 ymax
int16 id
string Class

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: rosgraph_msgs/Clock
# roslib/Clock is used for publishing simulated time in ROS. 
# This message simply communicates the current time.
# For more information, see http://www.ros.org/wiki/Clock
time clock

")



(provide :mapping_msgs/BoxesAndClouds "a9d322cd162f39753ffb3778b7aa7277")


