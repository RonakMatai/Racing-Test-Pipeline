; Auto-generated. Do not edit!


(cl:in-package pkg1-msg)


;//! \htmlinclude array2d.msg.html

(cl:defclass <array2d> (roslisp-msg-protocol:ros-message)
  ((b
    :reader b
    :initarg :b
    :type (cl:vector pkg1-msg:array1d)
   :initform (cl:make-array 0 :element-type 'pkg1-msg:array1d :initial-element (cl:make-instance 'pkg1-msg:array1d))))
)

(cl:defclass array2d (<array2d>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <array2d>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'array2d)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg1-msg:<array2d> is deprecated: use pkg1-msg:array2d instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <array2d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg1-msg:b-val is deprecated.  Use pkg1-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <array2d>) ostream)
  "Serializes a message object of type '<array2d>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'b))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <array2d>) istream)
  "Deserializes a message object of type '<array2d>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'b) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'b)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pkg1-msg:array1d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<array2d>)))
  "Returns string type for a message object of type '<array2d>"
  "pkg1/array2d")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'array2d)))
  "Returns string type for a message object of type 'array2d"
  "pkg1/array2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<array2d>)))
  "Returns md5sum for a message object of type '<array2d>"
  "514196907c24619763a39f051ec0299e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'array2d)))
  "Returns md5sum for a message object of type 'array2d"
  "514196907c24619763a39f051ec0299e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<array2d>)))
  "Returns full string definition for message of type '<array2d>"
  (cl:format cl:nil "array1d[] b~%~%================================================================================~%MSG: pkg1/array1d~%int64[] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'array2d)))
  "Returns full string definition for message of type 'array2d"
  (cl:format cl:nil "array1d[] b~%~%================================================================================~%MSG: pkg1/array1d~%int64[] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <array2d>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'b) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <array2d>))
  "Converts a ROS message object to a list"
  (cl:list 'array2d
    (cl:cons ':b (b msg))
))
