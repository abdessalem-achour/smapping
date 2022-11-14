;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::GetStringAtPoint)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'GetStringAtPoint (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::GETSTRINGATPOINT")
  (make-package "HYPERMAP_MSGS::GETSTRINGATPOINT"))
(unless (find-package "HYPERMAP_MSGS::GETSTRINGATPOINTREQUEST")
  (make-package "HYPERMAP_MSGS::GETSTRINGATPOINTREQUEST"))
(unless (find-package "HYPERMAP_MSGS::GETSTRINGATPOINTRESPONSE")
  (make-package "HYPERMAP_MSGS::GETSTRINGATPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass hypermap_msgs::GetStringAtPointRequest
  :super ros::object
  :slots (_layer _location ))

(defmethod hypermap_msgs::GetStringAtPointRequest
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

(defclass hypermap_msgs::GetStringAtPointResponse
  :super ros::object
  :slots (_name ))

(defmethod hypermap_msgs::GetStringAtPointResponse
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hypermap_msgs::GetStringAtPoint
  :super ros::object
  :slots ())

(setf (get hypermap_msgs::GetStringAtPoint :md5sum-) "6506da1882bf4a49b3b562d98d4687c4")
(setf (get hypermap_msgs::GetStringAtPoint :datatype-) "hypermap_msgs/GetStringAtPoint")
(setf (get hypermap_msgs::GetStringAtPoint :request) hypermap_msgs::GetStringAtPointRequest)
(setf (get hypermap_msgs::GetStringAtPoint :response) hypermap_msgs::GetStringAtPointResponse)

(defmethod hypermap_msgs::GetStringAtPointRequest
  (:response () (instance hypermap_msgs::GetStringAtPointResponse :init)))

(setf (get hypermap_msgs::GetStringAtPointRequest :md5sum-) "6506da1882bf4a49b3b562d98d4687c4")
(setf (get hypermap_msgs::GetStringAtPointRequest :datatype-) "hypermap_msgs/GetStringAtPointRequest")
(setf (get hypermap_msgs::GetStringAtPointRequest :definition-)
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
string name

")

(setf (get hypermap_msgs::GetStringAtPointResponse :md5sum-) "6506da1882bf4a49b3b562d98d4687c4")
(setf (get hypermap_msgs::GetStringAtPointResponse :datatype-) "hypermap_msgs/GetStringAtPointResponse")
(setf (get hypermap_msgs::GetStringAtPointResponse :definition-)
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
string name

")



(provide :hypermap_msgs/GetStringAtPoint "6506da1882bf4a49b3b562d98d4687c4")


