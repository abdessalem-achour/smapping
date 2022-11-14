;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::SemanticMapUpdate)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'SemanticMapUpdate (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::SEMANTICMAPUPDATE")
  (make-package "HYPERMAP_MSGS::SEMANTICMAPUPDATE"))

(in-package "ROS")
;;//! \htmlinclude SemanticMapUpdate.msg.html


(defclass hypermap_msgs::SemanticMapUpdate
  :super ros::object
  :slots (_to_add _to_modify _updates _to_delete ))

(defmethod hypermap_msgs::SemanticMapUpdate
  (:init
   (&key
    ((:to_add __to_add) ())
    ((:to_modify __to_modify) (make-array 0 :initial-element 0 :element-type :integer))
    ((:updates __updates) ())
    ((:to_delete __to_delete) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _to_add __to_add)
   (setq _to_modify __to_modify)
   (setq _updates __updates)
   (setq _to_delete __to_delete)
   self)
  (:to_add
   (&rest __to_add)
   (if (keywordp (car __to_add))
       (send* _to_add __to_add)
     (progn
       (if __to_add (setq _to_add (car __to_add)))
       _to_add)))
  (:to_modify
   (&optional __to_modify)
   (if __to_modify (setq _to_modify __to_modify)) _to_modify)
  (:updates
   (&rest __updates)
   (if (keywordp (car __updates))
       (send* _updates __updates)
     (progn
       (if __updates (setq _updates (car __updates)))
       _updates)))
  (:to_delete
   (&optional __to_delete)
   (if __to_delete (setq _to_delete __to_delete)) _to_delete)
  (:serialization-length
   ()
   (+
    ;; hypermap_msgs/SemanticObject[] _to_add
    (apply #'+ (send-all _to_add :serialization-length)) 4
    ;; uint32[] _to_modify
    (* 4    (length _to_modify)) 4
    ;; hypermap_msgs/SemanticObject[] _updates
    (apply #'+ (send-all _updates :serialization-length)) 4
    ;; uint32[] _to_delete
    (* 4    (length _to_delete)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hypermap_msgs/SemanticObject[] _to_add
     (write-long (length _to_add) s)
     (dolist (elem _to_add)
       (send elem :serialize s)
       )
     ;; uint32[] _to_modify
     (write-long (length _to_modify) s)
     (dotimes (i (length _to_modify))
       (write-long (elt _to_modify i) s)
       )
     ;; hypermap_msgs/SemanticObject[] _updates
     (write-long (length _updates) s)
     (dolist (elem _updates)
       (send elem :serialize s)
       )
     ;; uint32[] _to_delete
     (write-long (length _to_delete) s)
     (dotimes (i (length _to_delete))
       (write-long (elt _to_delete i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hypermap_msgs/SemanticObject[] _to_add
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _to_add (let (r) (dotimes (i n) (push (instance hypermap_msgs::SemanticObject :init) r)) r))
     (dolist (elem- _to_add)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _to_modify
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _to_modify (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _to_modify i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; hypermap_msgs/SemanticObject[] _updates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _updates (let (r) (dotimes (i n) (push (instance hypermap_msgs::SemanticObject :init) r)) r))
     (dolist (elem- _updates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _to_delete
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _to_delete (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _to_delete i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hypermap_msgs::SemanticMapUpdate :md5sum-) "da8894bccdfde7741529f3941bb988c8")
(setf (get hypermap_msgs::SemanticMapUpdate :datatype-) "hypermap_msgs/SemanticMapUpdate")
(setf (get hypermap_msgs::SemanticMapUpdate :definition-)
      "SemanticObject[] to_add
uint32[] to_modify
SemanticObject[] updates
uint32[] to_delete

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



(provide :hypermap_msgs/SemanticMapUpdate "da8894bccdfde7741529f3941bb988c8")


