
(cl:in-package :asdf)

(defsystem "mapping_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :rosgraph_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox" :depends-on ("_package_BoundingBox"))
    (:file "_package_BoundingBox" :depends-on ("_package"))
    (:file "BoundingBoxes" :depends-on ("_package_BoundingBoxes"))
    (:file "_package_BoundingBoxes" :depends-on ("_package"))
    (:file "BoxesAndClouds" :depends-on ("_package_BoxesAndClouds"))
    (:file "_package_BoxesAndClouds" :depends-on ("_package"))
    (:file "FindObjects" :depends-on ("_package_FindObjects"))
    (:file "_package_FindObjects" :depends-on ("_package"))
    (:file "ObbMap" :depends-on ("_package_ObbMap"))
    (:file "_package_ObbMap" :depends-on ("_package"))
    (:file "ObjectCount" :depends-on ("_package_ObjectCount"))
    (:file "_package_ObjectCount" :depends-on ("_package"))
    (:file "ObjectPositions" :depends-on ("_package_ObjectPositions"))
    (:file "_package_ObjectPositions" :depends-on ("_package"))
    (:file "SemanticMap" :depends-on ("_package_SemanticMap"))
    (:file "_package_SemanticMap" :depends-on ("_package"))
    (:file "SemanticObject" :depends-on ("_package_SemanticObject"))
    (:file "_package_SemanticObject" :depends-on ("_package"))
  ))