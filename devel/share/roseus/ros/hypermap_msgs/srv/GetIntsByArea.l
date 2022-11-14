;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::GetIntsByArea)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'GetIntsByArea (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::GETINTSBYAREA")
  (make-package "HYPERMAP_MSGS::GETINTSBYAREA"))
(unless (find-package "HYPERMAP_MSGS::GETINTSBYAREAREQUEST")
  (make-package "HYPERMAP_MSGS::GETINTSBYAREAREQUEST"))
(unless (find-package "HYPERMAP_MSGS::GETINTSBYAREARESPONSE")
  (make-package "HYPERMAP_MSGS::GETINTSBYAREARESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hypermap_msgs::GetIntsByAreaRequest
  :super ros::object
  :slots (_layer _area ))

(defmethod hypermap_msgs::GetIntsByAreaRequest
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

(defclass hypermap_msgs::GetIntsByAreaResponse
  :super ros::object
  :slots (_values _locations ))

(defmethod hypermap_msgs::GetIntsByAreaResponse
  (:init
   (&key
    ((:values __values) (make-array 0 :initial-element 0 :element-type :integer))
    ((:locations __locations) ())
    )
   (send-super :init)
   (setq _values __values)
   (setq _locations __locations)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
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
    ;; int32[] _values
    (* 4    (length _values)) 4
    ;; geometry_msgs/Point[] _locations
    (apply #'+ (send-all _locations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (write-long (elt _values i) s)
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
   ;; int32[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(defclass hypermap_msgs::GetIntsByArea
  :super ros::object
  :slots ())

(setf (get hypermap_msgs::GetIntsByArea :md5sum-) "31e81242de76615a7f403b97dc514350")
(setf (get hypermap_msgs::GetIntsByArea :datatype-) "hypermap_msgs/GetIntsByArea")
(setf (get hypermap_msgs::GetIntsByArea :request) hypermap_msgs::GetIntsByAreaRequest)
(setf (get hypermap_msgs::GetIntsByArea :response) hypermap_msgs::GetIntsByAreaResponse)

(defmethod hypermap_msgs::GetIntsByAreaRequest
  (:response () (instance hypermap_msgs::GetIntsByAreaResponse :init)))

(setf (get hypermap_msgs::GetIntsByAreaRequest :md5sum-) "31e81242de76615a7f403b97dc514350")
(setf (get hypermap_msgs::GetIntsByAreaRequest :datatype-) "hypermap_msgs/GetIntsByAreaRequest")
(setf (get hypermap_msgs::GetIntsByAreaRequest :definition-)
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
int32[] values
geometry_msgs/Point[] locations


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get hypermap_msgs::GetIntsByAreaResponse :md5sum-) "31e81242de76615a7f403b97dc514350")
(setf (get hypermap_msgs::GetIntsByAreaResponse :datatype-) "hypermap_msgs/GetIntsByAreaResponse")
(setf (get hypermap_msgs::GetIntsByAreaResponse :definition-)
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
int32[] values
geometry_msgs/Point[] locations


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :hypermap_msgs/GetIntsByArea "31e81242de76615a7f403b97dc514350")


