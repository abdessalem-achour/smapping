;; Auto-generated. Do not edit!


(when (boundp 'mapping_msgs::FindObjects)
  (if (not (find-package "MAPPING_MSGS"))
    (make-package "MAPPING_MSGS"))
  (shadow 'FindObjects (find-package "MAPPING_MSGS")))
(unless (find-package "MAPPING_MSGS::FINDOBJECTS")
  (make-package "MAPPING_MSGS::FINDOBJECTS"))

(in-package "ROS")
;;//! \htmlinclude FindObjects.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mapping_msgs::FindObjects
  :super ros::object
  :slots (_name _near_to _nearest_to_robot _near_to_position ))

(defmethod mapping_msgs::FindObjects
  (:init
   (&key
    ((:name __name) "")
    ((:near_to __near_to) "")
    ((:nearest_to_robot __nearest_to_robot) nil)
    ((:near_to_position __near_to_position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _near_to (string __near_to))
   (setq _nearest_to_robot __nearest_to_robot)
   (setq _near_to_position __near_to_position)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:near_to
   (&optional __near_to)
   (if __near_to (setq _near_to __near_to)) _near_to)
  (:nearest_to_robot
   (&optional (__nearest_to_robot :null))
   (if (not (eq __nearest_to_robot :null)) (setq _nearest_to_robot __nearest_to_robot)) _nearest_to_robot)
  (:near_to_position
   (&rest __near_to_position)
   (if (keywordp (car __near_to_position))
       (send* _near_to_position __near_to_position)
     (progn
       (if __near_to_position (setq _near_to_position (car __near_to_position)))
       _near_to_position)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _near_to
    4 (length _near_to)
    ;; bool _nearest_to_robot
    1
    ;; geometry_msgs/Point _near_to_position
    (send _near_to_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _near_to
       (write-long (length _near_to) s) (princ _near_to s)
     ;; bool _nearest_to_robot
       (if _nearest_to_robot (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _near_to_position
       (send _near_to_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _near_to
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _near_to (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _nearest_to_robot
     (setq _nearest_to_robot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _near_to_position
     (send _near_to_position :deserialize buf ptr-) (incf ptr- (send _near_to_position :serialization-length))
   ;;
   self)
  )

(setf (get mapping_msgs::FindObjects :md5sum-) "a8b330e3732aff29a86332e860a858d8")
(setf (get mapping_msgs::FindObjects :datatype-) "mapping_msgs/FindObjects")
(setf (get mapping_msgs::FindObjects :definition-)
      "string name
string near_to
bool nearest_to_robot
geometry_msgs/Point near_to_position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :mapping_msgs/FindObjects "a8b330e3732aff29a86332e860a858d8")


