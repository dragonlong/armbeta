
(cl:in-package :asdf)

(defsystem "data_capture-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ImageSave" :depends-on ("_package_ImageSave"))
    (:file "_package_ImageSave" :depends-on ("_package"))
  ))