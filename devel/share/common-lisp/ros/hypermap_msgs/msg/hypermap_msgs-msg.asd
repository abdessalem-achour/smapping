
(cl:in-package :asdf)

(defsystem "hypermap_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HypermapMetaData" :depends-on ("_package_HypermapMetaData"))
    (:file "_package_HypermapMetaData" :depends-on ("_package"))
    (:file "LayerMetaData" :depends-on ("_package_LayerMetaData"))
    (:file "_package_LayerMetaData" :depends-on ("_package"))
    (:file "SemanticMap" :depends-on ("_package_SemanticMap"))
    (:file "_package_SemanticMap" :depends-on ("_package"))
    (:file "SemanticMapUpdate" :depends-on ("_package_SemanticMapUpdate"))
    (:file "_package_SemanticMapUpdate" :depends-on ("_package"))
    (:file "SemanticObject" :depends-on ("_package_SemanticObject"))
    (:file "_package_SemanticObject" :depends-on ("_package"))
  ))