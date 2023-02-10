
(cl:in-package :asdf)

(defsystem "ars_40X-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MaxDistance" :depends-on ("_package_MaxDistance"))
    (:file "_package_MaxDistance" :depends-on ("_package"))
    (:file "OutputType" :depends-on ("_package_OutputType"))
    (:file "_package_OutputType" :depends-on ("_package"))
    (:file "RCSThreshold" :depends-on ("_package_RCSThreshold"))
    (:file "_package_RCSThreshold" :depends-on ("_package"))
    (:file "RadarPower" :depends-on ("_package_RadarPower"))
    (:file "_package_RadarPower" :depends-on ("_package"))
    (:file "SensorID" :depends-on ("_package_SensorID"))
    (:file "_package_SensorID" :depends-on ("_package"))
    (:file "SortIndex" :depends-on ("_package_SortIndex"))
    (:file "_package_SortIndex" :depends-on ("_package"))
  ))