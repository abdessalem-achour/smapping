;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::StoreMap)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'StoreMap (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::STOREMAP")
  (make-package "HYPERMAP_MSGS::STOREMAP"))
(unless (find-package "HYPERMAP_MSGS::STOREMAPREQUEST")
  (make-package "HYPERMAP_MSGS::STOREMAPREQUEST"))
(unless (find-package "HYPERMAP_MSGS::STOREMAPRESPONSE")
  (make-package "HYPERMAP_MSGS::STOREMAPRESPONSE"))

(in-package "ROS")





(defclass hypermap_msgs::StoreMapRequest
  :super ros::object
  :slots (_filename ))

(defmethod hypermap_msgs::StoreMapRequest
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

(defclass hypermap_msgs::StoreMapResponse
  :super ros::object
  :slots (_success ))

(defmethod hypermap_msgs::StoreMapResponse
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

(defclass hypermap_msgs::StoreMap
  :super ros::object
  :slots ())

(setf (get hypermap_msgs::StoreMap :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get hypermap_msgs::StoreMap :datatype-) "hypermap_msgs/StoreMap")
(setf (get hypermap_msgs::StoreMap :request) hypermap_msgs::StoreMapRequest)
(setf (get hypermap_msgs::StoreMap :response) hypermap_msgs::StoreMapResponse)

(defmethod hypermap_msgs::StoreMapRequest
  (:response () (instance hypermap_msgs::StoreMapResponse :init)))

(setf (get hypermap_msgs::StoreMapRequest :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get hypermap_msgs::StoreMapRequest :datatype-) "hypermap_msgs/StoreMapRequest")
(setf (get hypermap_msgs::StoreMapRequest :definition-)
      "string filename
---
bool success

")

(setf (get hypermap_msgs::StoreMapResponse :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get hypermap_msgs::StoreMapResponse :datatype-) "hypermap_msgs/StoreMapResponse")
(setf (get hypermap_msgs::StoreMapResponse :definition-)
      "string filename
---
bool success

")



(provide :hypermap_msgs/StoreMap "93a4bc4c60dc17e2a69e3fcaaa25d69d")


