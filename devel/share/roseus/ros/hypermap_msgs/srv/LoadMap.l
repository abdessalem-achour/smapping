;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::LoadMap)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'LoadMap (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::LOADMAP")
  (make-package "HYPERMAP_MSGS::LOADMAP"))
(unless (find-package "HYPERMAP_MSGS::LOADMAPREQUEST")
  (make-package "HYPERMAP_MSGS::LOADMAPREQUEST"))
(unless (find-package "HYPERMAP_MSGS::LOADMAPRESPONSE")
  (make-package "HYPERMAP_MSGS::LOADMAPRESPONSE"))

(in-package "ROS")





(defclass hypermap_msgs::LoadMapRequest
  :super ros::object
  :slots (_filename ))

(defmethod hypermap_msgs::LoadMapRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hypermap_msgs::LoadMapResponse
  :super ros::object
  :slots (_success ))

(defmethod hypermap_msgs::LoadMapResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hypermap_msgs::LoadMap
  :super ros::object
  :slots ())

(setf (get hypermap_msgs::LoadMap :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get hypermap_msgs::LoadMap :datatype-) "hypermap_msgs/LoadMap")
(setf (get hypermap_msgs::LoadMap :request) hypermap_msgs::LoadMapRequest)
(setf (get hypermap_msgs::LoadMap :response) hypermap_msgs::LoadMapResponse)

(defmethod hypermap_msgs::LoadMapRequest
  (:response () (instance hypermap_msgs::LoadMapResponse :init)))

(setf (get hypermap_msgs::LoadMapRequest :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get hypermap_msgs::LoadMapRequest :datatype-) "hypermap_msgs/LoadMapRequest")
(setf (get hypermap_msgs::LoadMapRequest :definition-)
      "string filename
---
bool success

")

(setf (get hypermap_msgs::LoadMapResponse :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get hypermap_msgs::LoadMapResponse :datatype-) "hypermap_msgs/LoadMapResponse")
(setf (get hypermap_msgs::LoadMapResponse :definition-)
      "string filename
---
bool success

")



(provide :hypermap_msgs/LoadMap "93a4bc4c60dc17e2a69e3fcaaa25d69d")


