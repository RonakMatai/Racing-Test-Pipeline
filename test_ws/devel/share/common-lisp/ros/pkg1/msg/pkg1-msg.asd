
(cl:in-package :asdf)

(defsystem "pkg1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "array1d" :depends-on ("_package_array1d"))
    (:file "_package_array1d" :depends-on ("_package"))
    (:file "array2d" :depends-on ("_package_array2d"))
    (:file "_package_array2d" :depends-on ("_package"))
  ))