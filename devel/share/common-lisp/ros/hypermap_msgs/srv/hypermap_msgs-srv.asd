
(cl:in-package :asdf)

(defsystem "hypermap_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :hypermap_msgs-msg
)
  :components ((:file "_package")
    (:file "GetIntAtPoint" :depends-on ("_package_GetIntAtPoint"))
    (:file "_package_GetIntAtPoint" :depends-on ("_package"))
    (:file "GetIntsByArea" :depends-on ("_package_GetIntsByArea"))
    (:file "_package_GetIntsByArea" :depends-on ("_package"))
    (:file "GetLocationsByInt" :depends-on ("_package_GetLocationsByInt"))
    (:file "_package_GetLocationsByInt" :depends-on ("_package"))
    (:file "GetLocationsByString" :depends-on ("_package_GetLocationsByString"))
    (:file "_package_GetLocationsByString" :depends-on ("_package"))
    (:file "GetSemanticByArea" :depends-on ("_package_GetSemanticByArea"))
    (:file "_package_GetSemanticByArea" :depends-on ("_package"))
    (:file "GetSemanticByString" :depends-on ("_package_GetSemanticByString"))
    (:file "_package_GetSemanticByString" :depends-on ("_package"))
    (:file "GetStringAtPoint" :depends-on ("_package_GetStringAtPoint"))
    (:file "_package_GetStringAtPoint" :depends-on ("_package"))
    (:file "GetStringsByArea" :depends-on ("_package_GetStringsByArea"))
    (:file "_package_GetStringsByArea" :depends-on ("_package"))
    (:file "LoadMap" :depends-on ("_package_LoadMap"))
    (:file "_package_LoadMap" :depends-on ("_package"))
    (:file "StoreMap" :depends-on ("_package_StoreMap"))
    (:file "_package_StoreMap" :depends-on ("_package"))
  ))