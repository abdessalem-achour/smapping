;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::GetSemanticByArea)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'GetSemanticByArea (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::GETSEMANTICBYAREA")
  (make-package "HYPERMAP_MSGS::GETSEMANTICBYAREA"))
(unless (find-package "HYPERMAP_MSGS::GETSEMANTICBYAREAREQUEST")
  (make-package "HYPERMAP_MSGS::GETSEMANTICBYAREAREQUEST"))
(unless (find-package "HYPERMAP_MSGS::GETSEMANTICBYAREARESPONSE")
  (make-package "HYPERMAP_MSGS::GETSEMANTICBYAREARESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass hypermap_msgs::GetSemanticByAreaRequest
  :super ros::object
  :slots (_area ))

(defmethod hypermap_msgs::GetSemanticByAreaRequest
  (:init
   (&key
    ((:area __area) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _area __area)
   self)
  (:area
   (&rest __area)
   (if (keywordp (car __area))
       (send* _area __area)
     (progn
       (if __area (setq _area (car __area)))
       _area)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PolygonStamped _area
    (send _area :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PolygonStamped _area
       (send _area :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PolygonStamped _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;;
   self)
  )

(defclass hypermap_msgs::GetSemanticByAreaResponse
  :super ros::object
  :slots (_objects ))

(defmethod hypermap_msgs::GetSemanticByAreaResponse
  (:init
   (&key
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _objects __objects)
   self)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; hypermap_msgs/SemanticObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hypermap_msgs/SemanticObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hypermap_msgs/SemanticObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance hypermap_msgs::SemanticObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass hypermap_msgs::GetSemanticByArea
  :super ros::object
  :slots ())

(setf (get hypermap_msgs::GetSemanticByArea :md5sum-) "e0c98eff6480f8c467490b1909de5d07")
(setf (get hypermap_msgs::GetSemanticByArea :datatype-) "hypermap_msgs/GetSemanticByArea")
(setf (get hypermap_msgs::GetSemanticByArea :request) hypermap_msgs::GetSemanticByAreaRequest)
(setf (get hypermap_msgs::GetSemanticByArea :response) hypermap_msgs::GetSemanticByAreaResponse)

(defmethod hypermap_msgs::GetSemanticByAreaRequest
  (:response () (instance hypermap_msgs::GetSemanticByAreaResponse :init)))

(setf (get hypermap_msgs::GetSemanticByAreaRequest :md5sum-) "e0c98eff6480f8c467490b1909de5d07")
(setf (get hypermap_msgs::GetSemanticByAreaRequest :datatype-) "hypermap_msgs/GetSemanticByAreaRequest")
(setf (get hypermap_msgs::GetSemanticByAreaRequest :definition-)
      "geometry_msgs/PolygonStamped area

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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
---
SemanticObject[] objects


================================================================================
MSG: hypermap_msgs/SemanticObject
int32 id
geometry_msgs/Polygon shape
geometry_msgs/Point position # should be centroid of shape
string name
string[] tags
float64[] confidence

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
")

(setf (get hypermap_msgs::GetSemanticByAreaResponse :md5sum-) "e0c98eff6480f8c467490b1909de5d07")
(setf (get hypermap_msgs::GetSemanticByAreaResponse :datatype-) "hypermap_msgs/GetSemanticByAreaResponse")
(setf (get hypermap_msgs::GetSemanticByAreaResponse :definition-)
      "geometry_msgs/PolygonStamped area

================================================================================
MSG: geometry_msgs/PolygonStamped
# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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
---
SemanticObject[] objects


================================================================================
MSG: hypermap_msgs/SemanticObject
int32 id
geometry_msgs/Polygon shape
geometry_msgs/Point position # should be centroid of shape
string name
string[] tags
float64[] confidence

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
")



(provide :hypermap_msgs/GetSemanticByArea "e0c98eff6480f8c467490b1909de5d07")


