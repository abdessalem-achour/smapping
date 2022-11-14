;; Auto-generated. Do not edit!


(when (boundp 'hypermap_msgs::HypermapMetaData)
  (if (not (find-package "HYPERMAP_MSGS"))
    (make-package "HYPERMAP_MSGS"))
  (shadow 'HypermapMetaData (find-package "HYPERMAP_MSGS")))
(unless (find-package "HYPERMAP_MSGS::HYPERMAPMETADATA")
  (make-package "HYPERMAP_MSGS::HYPERMAPMETADATA"))

(in-package "ROS")
;;//! \htmlinclude HypermapMetaData.msg.html


(defclass hypermap_msgs::HypermapMetaData
  :super ros::object
  :slots (_layer_cnt _node_name _layers ))

(defmethod hypermap_msgs::HypermapMetaData
  (:init
   (&key
    ((:layer_cnt __layer_cnt) 0)
    ((:node_name __node_name) "")
    ((:layers __layers) ())
    )
   (send-super :init)
   (setq _layer_cnt (round __layer_cnt))
   (setq _node_name (string __node_name))
   (setq _layers __layers)
   self)
  (:layer_cnt
   (&optional __layer_cnt)
   (if __layer_cnt (setq _layer_cnt __layer_cnt)) _layer_cnt)
  (:node_name
   (&optional __node_name)
   (if __node_name (setq _node_name __node_name)) _node_name)
  (:layers
   (&rest __layers)
   (if (keywordp (car __layers))
       (send* _layers __layers)
     (progn
       (if __layers (setq _layers (car __layers)))
       _layers)))
  (:serialization-length
   ()
   (+
    ;; uint32 _layer_cnt
    4
    ;; string _node_name
    4 (length _node_name)
    ;; hypermap_msgs/LayerMetaData[] _layers
    (apply #'+ (send-all _layers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _layer_cnt
       (write-long _layer_cnt s)
     ;; string _node_name
       (write-long (length _node_name) s) (princ _node_name s)
     ;; hypermap_msgs/LayerMetaData[] _layers
     (write-long (length _layers) s)
     (dolist (elem _layers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _layer_cnt
     (setq _layer_cnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; hypermap_msgs/LayerMetaData[] _layers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _layers (let (r) (dotimes (i n) (push (instance hypermap_msgs::LayerMetaData :init) r)) r))
     (dolist (elem- _layers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hypermap_msgs::HypermapMetaData :md5sum-) "5befb9e9353d4c71ff05aaa102cd721a")
(setf (get hypermap_msgs::HypermapMetaData :datatype-) "hypermap_msgs/HypermapMetaData")
(setf (get hypermap_msgs::HypermapMetaData :definition-)
      "uint32 layer_cnt
string node_name
LayerMetaData[] layers

================================================================================
MSG: hypermap_msgs/LayerMetaData
string class_name
string name
string frame_id
bool subscribe_mode
bool enable_update
bool publish_global_topics

")



(provide :hypermap_msgs/HypermapMetaData "5befb9e9353d4c71ff05aaa102cd721a")


