;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::LayerMetaData)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'LayerMetaData (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::LAYERMETADATA")
  (make-package "HYPERMAP_MSGS::LAYERMETADATA"))

(in-package "ROS")
;;//! \htmlinclude LayerMetaData.msg.html


(defclass hypermap_msgs::LayerMetaData
  :super ros::object
  :slots (_class_name _name _frame_id _subscribe_mode _enable_update _publish_global_topics ))

(defmethod hypermap_msgs::LayerMetaData
  (:init
   (&key
    ((:class_name __class_name) "")
    ((:name __name) "")
    ((:frame_id __frame_id) "")
    ((:subscribe_mode __subscribe_mode) nil)
    ((:enable_update __enable_update) nil)
    ((:publish_global_topics __publish_global_topics) nil)
    )
   (send-super :init)
   (setq _class_name (string __class_name))
   (setq _name (string __name))
   (setq _frame_id (string __frame_id))
   (setq _subscribe_mode __subscribe_mode)
   (setq _enable_update __enable_update)
   (setq _publish_global_topics __publish_global_topics)
   self)
  (:class_name
   (&optional __class_name)
   (if __class_name (setq _class_name __class_name)) _class_name)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:subscribe_mode
   (&optional (__subscribe_mode :null))
   (if (not (eq __subscribe_mode :null)) (setq _subscribe_mode __subscribe_mode)) _subscribe_mode)
  (:enable_update
   (&optional (__enable_update :null))
   (if (not (eq __enable_update :null)) (setq _enable_update __enable_update)) _enable_update)
  (:publish_global_topics
   (&optional (__publish_global_topics :null))
   (if (not (eq __publish_global_topics :null)) (setq _publish_global_topics __publish_global_topics)) _publish_global_topics)
  (:serialization-length
   ()
   (+
    ;; string _class_name
    4 (length _class_name)
    ;; string _name
    4 (length _name)
    ;; string _frame_id
    4 (length _frame_id)
    ;; bool _subscribe_mode
    1
    ;; bool _enable_update
    1
    ;; bool _publish_global_topics
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _class_name
       (write-long (length _class_name) s) (princ _class_name s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; bool _subscribe_mode
       (if _subscribe_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_update
       (if _enable_update (write-byte -1 s) (write-byte 0 s))
     ;; bool _publish_global_topics
       (if _publish_global_topics (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _class_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _class_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _subscribe_mode
     (setq _subscribe_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_update
     (setq _enable_update (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _publish_global_topics
     (setq _publish_global_topics (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hypermap_msgs::LayerMetaData :md5sum-) "cbb087715ec31cbe2dbbb7c5a3c3c3a7")
(setf (get hypermap_msgs::LayerMetaData :datatype-) "hypermap_msgs/LayerMetaData")
(setf (get hypermap_msgs::LayerMetaData :definition-)
      "string class_name
string name
string frame_id
bool subscribe_mode
bool enable_update
bool publish_global_topics

")



(provide :hypermap_msgs/LayerMetaData "cbb087715ec31cbe2dbbb7c5a3c3c3a7")


