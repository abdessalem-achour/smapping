;; Auto-generated. Do not edit!


(when (boundp 'mapping_msgs::ObjectPositions)
  (if (not (find-package "MAPPING_MSGS"))
    (make-package "MAPPING_MSGS"))
  (shadow 'ObjectPositions (find-package "MAPPING_MSGS")))
(unless (find-package "MAPPING_MSGS::OBJECTPOSITIONS")
  (make-package "MAPPING_MSGS::OBJECTPOSITIONS"))

(in-package "ROS")
;;//! \htmlinclude ObjectPositions.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mapping_msgs::ObjectPositions
  :super ros::object
  :slots (_name _positions ))

(defmethod mapping_msgs::ObjectPositions
  (:init
   (&key
    ((:name __name) "")
    ((:positions __positions) ())
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _positions __positions)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:positions
   (&rest __positions)
   (if (keywordp (car __positions))
       (send* _positions __positions)
     (progn
       (if __positions (setq _positions (car __positions)))
       _positions)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Point[] _positions
    (apply #'+ (send-all _positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Point[] _positions
     (write-long (length _positions) s)
     (dolist (elem _positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mapping_msgs::ObjectPositions :md5sum-) "9d2747e1cc7147808d30f00b52065469")
(setf (get mapping_msgs::ObjectPositions :datatype-) "mapping_msgs/ObjectPositions")
(setf (get mapping_msgs::ObjectPositions :definition-)
      "string name
geometry_msgs/Point[] positions
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :mapping_msgs/ObjectPositions "9d2747e1cc7147808d30f00b52065469")


