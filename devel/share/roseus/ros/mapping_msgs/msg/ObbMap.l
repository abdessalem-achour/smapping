;; Auto-generated. Do not edit!


(when (boundp 'mapping_msgs::ObbMap)
  (if (not (find-package "MAPPING_MSGS"))
    (make-package "MAPPING_MSGS"))
  (shadow 'ObbMap (find-package "MAPPING_MSGS")))
(unless (find-package "MAPPING_MSGS::OBBMAP")
  (make-package "MAPPING_MSGS::OBBMAP"))

(in-package "ROS")
;;//! \htmlinclude ObbMap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mapping_msgs::ObbMap
  :super ros::object
  :slots (_objects_obb ))

(defmethod mapping_msgs::ObbMap
  (:init
   (&key
    ((:objects_obb __objects_obb) ())
    )
   (send-super :init)
   (setq _objects_obb __objects_obb)
   self)
  (:objects_obb
   (&rest __objects_obb)
   (if (keywordp (car __objects_obb))
       (send* _objects_obb __objects_obb)
     (progn
       (if __objects_obb (setq _objects_obb (car __objects_obb)))
       _objects_obb)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Polygon[] _objects_obb
    (apply #'+ (send-all _objects_obb :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Polygon[] _objects_obb
     (write-long (length _objects_obb) s)
     (dolist (elem _objects_obb)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Polygon[] _objects_obb
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects_obb (let (r) (dotimes (i n) (push (instance geometry_msgs::Polygon :init) r)) r))
     (dolist (elem- _objects_obb)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mapping_msgs::ObbMap :md5sum-) "fb56d8292e7d369877fd0b4896a6a391")
(setf (get mapping_msgs::ObbMap :datatype-) "mapping_msgs/ObbMap")
(setf (get mapping_msgs::ObbMap :definition-)
      "geometry_msgs/Polygon[] objects_obb
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
")



(provide :mapping_msgs/ObbMap "fb56d8292e7d369877fd0b4896a6a391")


