;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::GetSemanticByString)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'GetSemanticByString (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::GETSEMANTICBYSTRING")
  (make-package "HYPERMAP_MSGS::GETSEMANTICBYSTRING"))
(unless (find-package "HYPERMAP_MSGS::GETSEMANTICBYSTRINGREQUEST")
  (make-package "HYPERMAP_MSGS::GETSEMANTICBYSTRINGREQUEST"))
(unless (find-package "HYPERMAP_MSGS::GETSEMANTICBYSTRINGRESPONSE")
  (make-package "HYPERMAP_MSGS::GETSEMANTICBYSTRINGRESPONSE"))

(in-package "ROS")





(defclass hypermap_msgs::GetSemanticByStringRequest
  :super ros::object
  :slots (_name ))

(defmethod hypermap_msgs::GetSemanticByStringRequest
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

(defclass hypermap_msgs::GetSemanticByStringResponse
  :super ros::object
  :slots (_objects ))

(defmethod hypermap_msgs::GetSemanticByStringResponse
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

(defclass hypermap_msgs::GetSemanticByString
  :super ros::object
  :slots ())

(setf (get hypermap_msgs::GetSemanticByString :md5sum-) "dc1a1b37336827be86f9f0f1fe2b5c16")
(setf (get hypermap_msgs::GetSemanticByString :datatype-) "hypermap_msgs/GetSemanticByString")
(setf (get hypermap_msgs::GetSemanticByString :request) hypermap_msgs::GetSemanticByStringRequest)
(setf (get hypermap_msgs::GetSemanticByString :response) hypermap_msgs::GetSemanticByStringResponse)

(defmethod hypermap_msgs::GetSemanticByStringRequest
  (:response () (instance hypermap_msgs::GetSemanticByStringResponse :init)))

(setf (get hypermap_msgs::GetSemanticByStringRequest :md5sum-) "dc1a1b37336827be86f9f0f1fe2b5c16")
(setf (get hypermap_msgs::GetSemanticByStringRequest :datatype-) "hypermap_msgs/GetSemanticByStringRequest")
(setf (get hypermap_msgs::GetSemanticByStringRequest :definition-)
      "string name
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

(setf (get hypermap_msgs::GetSemanticByStringResponse :md5sum-) "dc1a1b37336827be86f9f0f1fe2b5c16")
(setf (get hypermap_msgs::GetSemanticByStringResponse :datatype-) "hypermap_msgs/GetSemanticByStringResponse")
(setf (get hypermap_msgs::GetSemanticByStringResponse :definition-)
      "string name
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



(provide :hypermap_msgs/GetSemanticByString "dc1a1b37336827be86f9f0f1fe2b5c16")


