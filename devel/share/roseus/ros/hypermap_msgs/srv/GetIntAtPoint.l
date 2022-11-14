;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::GetIntAtPoint)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'GetIntAtPoint (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::GETINTATPOINT")
  (make-package "HYPERMAP_MSGS::GETINTATPOINT"))
(unless (find-package "HYPERMAP_MSGS::GETINTATPOINTREQUEST")
  (make-package "HYPERMAP_MSGS::GETINTATPOINTREQUEST"))
(unless (find-package "HYPERMAP_MSGS::GETINTATPOINTRESPONSE")
  (make-package "HYPERMAP_MSGS::GETINTATPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass hypermap_msgs::GetIntAtPointRequest
  :super ros::object
  :slots (_layer _location ))

(defmethod hypermap_msgs::GetIntAtPointRequest
  (:init
   (&key
    ((:layer __layer) "")
    ((:location __location) (instance geometry_msgs::PointStamped :init))
    )
   (send-super :init)
   (setq _layer (string __layer))
   (setq _location __location)
   self)
  (:layer
   (&optional __layer)
   (if __layer (setq _layer __layer)) _layer)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:serialization-length
   ()
   (+
    ;; string _layer
    4 (length _layer)
    ;; geometry_msgs/PointStamped _location
    (send _location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _layer
       (write-long (length _layer) s) (princ _layer s)
     ;; geometry_msgs/PointStamped _location
       (send _location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _layer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _layer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PointStamped _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;;
   self)
  )

(defclass hypermap_msgs::GetIntAtPointResponse
  :super ros::object
  :slots (_value ))

(defmethod hypermap_msgs::GetIntAtPointResponse
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hypermap_msgs::GetIntAtPoint
  :super ros::object
  :slots ())

(setf (get hypermap_msgs::GetIntAtPoint :md5sum-) "5b82ad85c0c95a55d71d18e8d12c4b30")
(setf (get hypermap_msgs::GetIntAtPoint :datatype-) "hypermap_msgs/GetIntAtPoint")
(setf (get hypermap_msgs::GetIntAtPoint :request) hypermap_msgs::GetIntAtPointRequest)
(setf (get hypermap_msgs::GetIntAtPoint :response) hypermap_msgs::GetIntAtPointResponse)

(defmethod hypermap_msgs::GetIntAtPointRequest
  (:response () (instance hypermap_msgs::GetIntAtPointResponse :init)))

(setf (get hypermap_msgs::GetIntAtPointRequest :md5sum-) "5b82ad85c0c95a55d71d18e8d12c4b30")
(setf (get hypermap_msgs::GetIntAtPointRequest :datatype-) "hypermap_msgs/GetIntAtPointRequest")
(setf (get hypermap_msgs::GetIntAtPointRequest :definition-)
      "string layer
geometry_msgs/PointStamped location

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
int32 value

")

(setf (get hypermap_msgs::GetIntAtPointResponse :md5sum-) "5b82ad85c0c95a55d71d18e8d12c4b30")
(setf (get hypermap_msgs::GetIntAtPointResponse :datatype-) "hypermap_msgs/GetIntAtPointResponse")
(setf (get hypermap_msgs::GetIntAtPointResponse :definition-)
      "string layer
geometry_msgs/PointStamped location

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
int32 value

")



(provide :hypermap_msgs/GetIntAtPoint "5b82ad85c0c95a55d71d18e8d12c4b30")


