;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::SemanticObject)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'SemanticObject (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::SEMANTICOBJECT")
  (make-package "HYPERMAP_MSGS::SEMANTICOBJECT"))

(in-package "ROS")
;;//! \htmlinclude SemanticObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hypermap_msgs::SemanticObject
  :super ros::object
  :slots (_id _shape _position _name _tags _confidence ))

(defmethod hypermap_msgs::SemanticObject
  (:init
   (&key
    ((:id __id) 0)
    ((:shape __shape) (instance geometry_msgs::Polygon :init))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:name __name) "")
    ((:tags __tags) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:confidence __confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _shape __shape)
   (setq _position __position)
   (setq _name (string __name))
   (setq _tags __tags)
   (setq _confidence __confidence)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:tags
   (&optional __tags)
   (if __tags (setq _tags __tags)) _tags)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/Polygon _shape
    (send _shape :serialization-length)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; string _name
    4 (length _name)
    ;; string[] _tags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tags)) 4
    ;; float64[] _confidence
    (* 8    (length _confidence)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Polygon _shape
       (send _shape :serialize s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _tags
     (write-long (length _tags) s)
     (dolist (elem _tags)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _confidence
     (write-long (length _confidence) s)
     (dotimes (i (length _confidence))
       (sys::poke (elt _confidence i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Polygon _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _tags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _confidence i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hypermap_msgs::SemanticObject :md5sum-) "050ac2886725844d8ee5ca593780131d")
(setf (get hypermap_msgs::SemanticObject :datatype-) "hypermap_msgs/SemanticObject")
(setf (get hypermap_msgs::SemanticObject :definition-)
      "int32 id
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



(provide :hypermap_msgs/SemanticObject "050ac2886725844d8ee5ca593780131d")


