
(cl:in-package :asdf)

(defsystem "ars_40X-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Cluster" :depends-on ("_package_Cluster"))
    (:file "_package_Cluster" :depends-on ("_package"))
    (:file "ClusterList" :depends-on ("_package_ClusterList"))
    (:file "_package_ClusterList" :depends-on ("_package"))
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "ObjectList" :depends-on ("_package_ObjectList"))
    (:file "_package_ObjectList" :depends-on ("_package"))
    (:file "RadarStatus" :depends-on ("_package_RadarStatus"))
    (:file "_package_RadarStatus" :depends-on ("_package"))
  ))