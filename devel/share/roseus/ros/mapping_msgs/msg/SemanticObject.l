;; Auto-generated. Do not edit!


(when (boundp 'mapping_msgs::SemanticObject)
  (if (not (find-package "MAPPING_MSGS"))
    (make-package "MAPPING_MSGS"))
  (shadow 'SemanticObject (find-package "MAPPING_MSGS")))
(unless (find-package "MAPPING_MSGS::SEMANTICOBJECT")
  (make-package "MAPPING_MSGS::SEMANTICOBJECT"))

(in-package "ROS")
;;//! \htmlinclude SemanticObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass mapping_msgs::SemanticObject
  :super ros::object
  :slots (_id _shape _obb _position _pointcloud _name _tags _confidence _exist_certainty ))

(defmethod mapping_msgs::SemanticObject
  (:init
   (&key
    ((:id __id) 0)
    ((:shape __shape) (instance geometry_msgs::Polygon :init))
    ((:obb __obb) (instance geometry_msgs::Polygon :init))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:pointcloud __pointcloud) (instance sensor_msgs::PointCloud2 :init))
    ((:name __name) "")
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:confidence __confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:exist_certainty __exist_certainty) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _shape __shape)
   (setq _obb __obb)
   (setq _position __position)
   (setq _pointcloud __pointcloud)
   (setq _name (string __name))
   (setq _tags __tags)
   (setq _confidence __confidence)
   (setq _exist_certainty (float __exist_certainty))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:obb
   (&rest __obb)
   (if (keywordp (car __obb))
       (send* _obb __obb)
     (progn
       (if __obb (setq _obb (car __obb)))
       _obb)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:pointcloud
   (&rest __pointcloud)
   (if (keywordp (car __pointcloud))
       (send* _pointcloud __pointcloud)
     (progn
       (if __pointcloud (setq _pointcloud (car __pointcloud)))
       _pointcloud)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:exist_certainty
   (&optional __exist_certainty)
   (if __exist_certainty (setq _exist_certainty __exist_certainty)) _exist_certainty)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/Polygon _shape
    (send _shape :serialization-length)
    ;; geometry_msgs/Polygon _obb
    (send _obb :serialization-length)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; sensor_msgs/PointCloud2 _pointcloud
    (send _pointcloud :serialization-length)
    ;; string _name
    4 (length _name)
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ;; float64[] _confidence
    (* 8    (length _confidence)) 4
    ;; float64 _exist_certainty
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Polygon _shape
       (send _shape :serialize s)
     ;; geometry_msgs/Polygon _obb
       (send _obb :serialize s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; sensor_msgs/PointCloud2 _pointcloud
       (send _pointcloud :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _confidence
     (write-long (length _confidence) s)
     (dotimes (i (length _confidence))
       (sys::poke (elt _confidence i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _exist_certainty
       (sys::poke _exist_certainty (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Polygon _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; geometry_msgs/Polygon _obb
     (send _obb :deserialize buf ptr-) (incf ptr- (send _obb :serialization-length))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; sensor_msgs/PointCloud2 _pointcloud
     (send _pointcloud :deserialize buf ptr-) (incf ptr- (send _pointcloud :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _confidence i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _exist_certainty
     (setq _exist_certainty (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mapping_msgs::SemanticObject :md5sum-) "34c4e8ec6dbe8338ce914b56f57b64e4")
(setf (get mapping_msgs::SemanticObject :datatype-) "mapping_msgs/SemanticObject")
(setf (get mapping_msgs::SemanticObject :definition-)
      "int32 id
geometry_msgs/Polygon shape
geometry_msgs/Polygon obb
geometry_msgs/Point position # should be centroid of shape
sensor_msgs/PointCloud2 pointcloud
string name
string[] tags
float64[] confidence
float64 exist_certainty
================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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

")



(provide :mapping_msgs/SemanticObject "34c4e8ec6dbe8338ce914b56f57b64e4")


