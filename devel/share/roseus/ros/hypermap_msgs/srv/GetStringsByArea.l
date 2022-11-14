;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::GetStringsByArea)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'GetStringsByArea (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::GETSTRINGSBYAREA")
  (make-package "HYPERMAP_MSGS::GETSTRINGSBYAREA"))
(unless (find-package "HYPERMAP_MSGS::GETSTRINGSBYAREAREQUEST")
  (make-package "HYPERMAP_MSGS::GETSTRINGSBYAREAREQUEST"))
(unless (find-package "HYPERMAP_MSGS::GETSTRINGSBYAREARESPONSE")
  (make-package "HYPERMAP_MSGS::GETSTRINGSBYAREARESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hypermap_msgs::GetStringsByAreaRequest
  :super ros::object
  :slots (_layer _area ))

(defmethod hypermap_msgs::GetStringsByAreaRequest
  (:init
   (&key
    ((:layer __layer) "")
    ((:area __area) (instance geometry_msgs::PolygonStamped :init))
    )
   (send-super :init)
   (setq _layer (string __layer))
   (setq _area __area)
   self)
  (:layer
   (&optional __layer)
   (if __layer (setq _layer __layer)) _layer)
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
    ;; geometry_msgs/PolygonStamped _area
    (send _area :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _layer
       (write-long (length _layer) s) (princ _layer s)
     ;; geometry_msgs/PolygonStamped _area
       (send _area :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _layer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _layer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PolygonStamped _area
     (send _area :deserialize buf ptr-) (incf ptr- (send _area :serialization-length))
   ;;
   self)
  )

(defclass hypermap_msgs::GetStringsByAreaResponse
  :super ros::object
  :slots (_names _locations ))

(defmethod hypermap_msgs::GetStringsByAreaResponse
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:locations __locations) ())
    )
   (send-super :init)
   (setq _names __names)
   (setq _locations __locations)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
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
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; geometry_msgs/Point[] _locations
    (apply #'+ (send-all _locations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Point[] _locations
     (write-long (length _locations) s)
     (dolist (elem _locations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
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

(defclass hypermap_msgs::GetStringsByArea
  :super ros::object
  :slots ())

(setf (get hypermap_msgs::GetStringsByArea :md5sum-) "26b97ae5a059a35d222e8b1128c7abd4")
(setf (get hypermap_msgs::GetStringsByArea :datatype-) "hypermap_msgs/GetStringsByArea")
(setf (get hypermap_msgs::GetStringsByArea :request) hypermap_msgs::GetStringsByAreaRequest)
(setf (get hypermap_msgs::GetStringsByArea :response) hypermap_msgs::GetStringsByAreaResponse)

(defmethod hypermap_msgs::GetStringsByAreaRequest
  (:response () (instance hypermap_msgs::GetStringsByAreaResponse :init)))

(setf (get hypermap_msgs::GetStringsByAreaRequest :md5sum-) "26b97ae5a059a35d222e8b1128c7abd4")
(setf (get hypermap_msgs::GetStringsByAreaRequest :datatype-) "hypermap_msgs/GetStringsByAreaRequest")
(setf (get hypermap_msgs::GetStringsByAreaRequest :definition-)
      "string layer
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
string[] names
geometry_msgs/Point[] locations


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get hypermap_msgs::GetStringsByAreaResponse :md5sum-) "26b97ae5a059a35d222e8b1128c7abd4")
(setf (get hypermap_msgs::GetStringsByAreaResponse :datatype-) "hypermap_msgs/GetStringsByAreaResponse")
(setf (get hypermap_msgs::GetStringsByAreaResponse :definition-)
      "string layer
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
string[] names
geometry_msgs/Point[] locations


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :hypermap_msgs/GetStringsByArea "26b97ae5a059a35d222e8b1128c7abd4")


