;; Auto-generated. Do not edit!


(when (boundp 'pkg1::array1d)
  (if (not (find-package "PKG1"))
    (make-package "PKG1"))
  (shadow 'array1d (find-package "PKG1")))
(unless (find-package "PKG1::ARRAY1D")
  (make-package "PKG1::ARRAY1D"))

(in-package "ROS")
;;//! \htmlinclude array1d.msg.html


(defclass pkg1::array1d
  :super ros::object
  :slots (_a ))

(defmethod pkg1::array1d
  (:init
   (&key
    ((:a __a) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _a __a)
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int64[] _a
    (* 8    (length _a)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _a
     (write-long (length _a) s)
     (dotimes (i (length _a))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _a i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _a i)) (= (length ((elt _a i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _a i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _a i) . bv) 1) -1) s))
             ((and (class (elt _a i)) (= (length ((elt _a i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _a i) . bv) 0) s)
              (write-long (if (>= (elt _a i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _a i) s)(write-long (if (>= (elt _a i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _a i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _a i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get pkg1::array1d :md5sum-) "46c26f3e548098357cdcdd12adbb6b4c")
(setf (get pkg1::array1d :datatype-) "pkg1/array1d")
(setf (get pkg1::array1d :definition-)
      "int64[] a

")



(provide :pkg1/array1d "46c26f3e548098357cdcdd12adbb6b4c")


