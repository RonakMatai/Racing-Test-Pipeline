;; Auto-generated. Do not edit!


(when (boundp 'pkg1::array2d)
  (if (not (find-package "PKG1"))
    (make-package "PKG1"))
  (shadow 'array2d (find-package "PKG1")))
(unless (find-package "PKG1::ARRAY2D")
  (make-package "PKG1::ARRAY2D"))

(in-package "ROS")
;;//! \htmlinclude array2d.msg.html


(defclass pkg1::array2d
  :super ros::object
  :slots (_b ))

(defmethod pkg1::array2d
  (:init
   (&key
    ((:b __b) (let (r) (dotimes (i 0) (push (instance pkg1::array1d :init) r)) r))
    )
   (send-super :init)
   (setq _b __b)
   self)
  (:b
   (&rest __b)
   (if (keywordp (car __b))
       (send* _b __b)
     (progn
       (if __b (setq _b (car __b)))
       _b)))
  (:serialization-length
   ()
   (+
    ;; pkg1/array1d[] _b
    (apply #'+ (send-all _b :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pkg1/array1d[] _b
     (write-long (length _b) s)
     (dolist (elem _b)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pkg1/array1d[] _b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _b (let (r) (dotimes (i n) (push (instance pkg1::array1d :init) r)) r))
     (dolist (elem- _b)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pkg1::array2d :md5sum-) "514196907c24619763a39f051ec0299e")
(setf (get pkg1::array2d :datatype-) "pkg1/array2d")
(setf (get pkg1::array2d :definition-)
      "array1d[] b

================================================================================
MSG: pkg1/array1d
int64[] a

")



(provide :pkg1/array2d "514196907c24619763a39f051ec0299e")


