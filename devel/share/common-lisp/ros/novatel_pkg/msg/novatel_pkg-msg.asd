
(cl:in-package :asdf)

(defsystem "novatel_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "BESTPOS" :depends-on ("_package_BESTPOS"))
    (:file "_package_BESTPOS" :depends-on ("_package"))
    (:file "CommonLongHeader" :depends-on ("_package_CommonLongHeader"))
    (:file "_package_CommonLongHeader" :depends-on ("_package"))
    (:file "CommonShortHeader" :depends-on ("_package_CommonShortHeader"))
    (:file "_package_CommonShortHeader" :depends-on ("_package"))
    (:file "INSPVAS" :depends-on ("_package_INSPVAS"))
    (:file "_package_INSPVAS" :depends-on ("_package"))
    (:file "RANGE" :depends-on ("_package_RANGE"))
    (:file "_package_RANGE" :depends-on ("_package"))
    (:file "RAWIMUSX" :depends-on ("_package_RAWIMUSX"))
    (:file "_package_RAWIMUSX" :depends-on ("_package"))
  ))