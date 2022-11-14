;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::GetLocationsByInt)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'GetLocationsByInt (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::GETLOCATIONSBYINT")
  (make-package "HYPERMAP_MSGS::GETLOCATIONSBYINT"))
(unless (find-package "HYPERMAP_MSGS::GETLOCATIONSBYINTREQUEST")
  (make-package "HYPERMAP_MSGS::GETLOCATIONSBYINTREQUEST"))
(unless (find-package "HYPERMAP_MSGS::GETLOCATIONSBYINTRESPONSE")
  (make-package "HYPERMAP_MSGS::GETLOCATIONSBYINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hypermap_msgs::GetLocationsByIntRequest
  :super ros::object
  :slots (_layer _value _area ))

(defmethod hypermap_msgs::GetLocationsByIntRequest
  (:init
   (&key
    ((:layer __layer) "")
    ((:value __value) 0)
    ((:area __area) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _layer (string __layer))
   (setq _value (round __value))
   (setq _area __area)
   self)
  (:layer
   (&optional __layer)
   (if __layer (setq _layer __layer)) _layer)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
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
    ;; string _layer
    4 (length _layer)
    ;; int32 _value
    4
    ;; geometry_msgs/PolygonStamped _area
    (send _area :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _layer
       (write-long (length _layer) s) (princ _layer s)
     ;; int32 _value
       (write-long _value s)
     ;; geometry_msgs/PolygonStamped _area
       (send _area :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _layer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _layer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PolygonStamped _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;;
   self)
  )

(defclass hypermap_msgs::GetLocationsByIntResponse
  :super ros::object
  :slots (_locations ))

(defmethod hypermap_msgs::GetLocationsByIntResponse
  (:init
   (&key
    ((:locations __locations) ())
    )
   (send-super :init)
   (setq _locations __locations)
   self)
  (:locations
   (&rest __locations)
   (if (keywordp (car __locations))
       (send* _locations __locations)
     (progn
       (if __locations (setq _locations (car __locations)))
       _locations)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _locations
    (apply #'+ (send-all _locations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _locations
     (write-long (length _locations) s)
     (dolist (elem _locations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _locations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _locations (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _locations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass hypermap_msgs::GetLocationsByInt
  :super ros::object
  :slots ())

(setf (get hypermap_msgs::GetLocationsByInt :md5sum-) "b49980ebdc2170afb007a5755d50a9cc")
(setf (get hypermap_msgs::GetLocationsByInt :datatype-) "hypermap_msgs/GetLocationsByInt")
(setf (get hypermap_msgs::GetLocationsByInt :request) hypermap_msgs::GetLocationsByIntRequest)
(setf (get hypermap_msgs::GetLocationsByInt :response) hypermap_msgs::GetLocationsByIntResponse)

(defmethod hypermap_msgs::GetLocationsByIntRequest
  (:response () (instance hypermap_msgs::GetLocationsByIntResponse :init)))

(setf (get hypermap_msgs::GetLocationsByIntRequest :md5sum-) "b49980ebdc2170afb007a5755d50a9cc")
(setf (get hypermap_msgs::GetLocationsByIntRequest :datatype-) "hypermap_msgs/GetLocationsByIntRequest")
(setf (get hypermap_msgs::GetLocationsByIntRequest :definition-)
      "string layer
int32 value
geometry_msgs/PolygonStamped area

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
geometry_msgs/Point[] locations


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get hypermap_msgs::GetLocationsByIntResponse :md5sum-) "b49980ebdc2170afb007a5755d50a9cc")
(setf (get hypermap_msgs::GetLocationsByIntResponse :datatype-) "hypermap_msgs/GetLocationsByIntResponse")
(setf (get hypermap_msgs::GetLocationsByIntResponse :definition-)
      "string layer
int32 value
geometry_msgs/PolygonStamped area

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
geometry_msgs/Point[] locations


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :hypermap_msgs/GetLocationsByInt "b49980ebdc2170afb007a5755d50a9cc")


