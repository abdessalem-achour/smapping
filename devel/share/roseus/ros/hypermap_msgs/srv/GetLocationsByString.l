;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::GetLocationsByString)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'GetLocationsByString (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::GETLOCATIONSBYSTRING")
  (make-package "HYPERMAP_MSGS::GETLOCATIONSBYSTRING"))
(unless (find-package "HYPERMAP_MSGS::GETLOCATIONSBYSTRINGREQUEST")
  (make-package "HYPERMAP_MSGS::GETLOCATIONSBYSTRINGREQUEST"))
(unless (find-package "HYPERMAP_MSGS::GETLOCATIONSBYSTRINGRESPONSE")
  (make-package "HYPERMAP_MSGS::GETLOCATIONSBYSTRINGRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hypermap_msgs::GetLocationsByStringRequest
  :super ros::object
  :slots (_layer _name _area ))

(defmethod hypermap_msgs::GetLocationsByStringRequest
  (:init
   (&key
    ((:layer __layer) "")
    ((:name __name) "")
    ((:area __area) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _layer (string __layer))
   (setq _name (string __name))
   (setq _area __area)
   self)
  (:layer
   (&optional __layer)
   (if __layer (setq _layer __layer)) _layer)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
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
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/PolygonStamped _area
    (send _area :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _layer
       (write-long (length _layer) s) (princ _layer s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/PolygonStamped _area
       (send _area :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _layer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _layer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PolygonStamped _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;;
   self)
  )

(defclass hypermap_msgs::GetLocationsByStringResponse
  :super ros::object
  :slots (_locations ))

(defmethod hypermap_msgs::GetLocationsByStringResponse
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

(defclass hypermap_msgs::GetLocationsByString
  :super ros::object
  :slots ())

(setf (get hypermap_msgs::GetLocationsByString :md5sum-) "f35d753aab50372861c2fe00912379e5")
(setf (get hypermap_msgs::GetLocationsByString :datatype-) "hypermap_msgs/GetLocationsByString")
(setf (get hypermap_msgs::GetLocationsByString :request) hypermap_msgs::GetLocationsByStringRequest)
(setf (get hypermap_msgs::GetLocationsByString :response) hypermap_msgs::GetLocationsByStringResponse)

(defmethod hypermap_msgs::GetLocationsByStringRequest
  (:response () (instance hypermap_msgs::GetLocationsByStringResponse :init)))

(setf (get hypermap_msgs::GetLocationsByStringRequest :md5sum-) "f35d753aab50372861c2fe00912379e5")
(setf (get hypermap_msgs::GetLocationsByStringRequest :datatype-) "hypermap_msgs/GetLocationsByStringRequest")
(setf (get hypermap_msgs::GetLocationsByStringRequest :definition-)
      "string layer
string name
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

(setf (get hypermap_msgs::GetLocationsByStringResponse :md5sum-) "f35d753aab50372861c2fe00912379e5")
(setf (get hypermap_msgs::GetLocationsByStringResponse :datatype-) "hypermap_msgs/GetLocationsByStringResponse")
(setf (get hypermap_msgs::GetLocationsByStringResponse :definition-)
      "string layer
string name
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



(provide :hypermap_msgs/GetLocationsByString "f35d753aab50372861c2fe00912379e5")


