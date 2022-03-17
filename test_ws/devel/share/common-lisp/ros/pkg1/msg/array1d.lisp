; Auto-generated. Do not edit!


(cl:in-package pkg1-msg)


;//! \htmlinclude array1d.msg.html

(cl:defclass <array1d> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass array1d (<array1d>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <array1d>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'array1d)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg1-msg:<array1d> is deprecated: use pkg1-msg:array1d instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <array1d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg1-msg:a-val is deprecated.  Use pkg1-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <array1d>) ostream)
  "Serializes a message object of type '<array1d>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'a))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <array1d>) istream)
  "Deserializes a message object of type '<array1d>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'a) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'a)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<array1d>)))
  "Returns string type for a message object of type '<array1d>"
  "pkg1/array1d")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'array1d)))
  "Returns string type for a message object of type 'array1d"
  "pkg1/array1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<array1d>)))
  "Returns md5sum for a message object of type '<array1d>"
  "46c26f3e548098357cdcdd12adbb6b4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'array1d)))
  "Returns md5sum for a message object of type 'array1d"
  "46c26f3e548098357cdcdd12adbb6b4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<array1d>)))
  "Returns full string definition for message of type '<array1d>"
  (cl:format cl:nil "int64[] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'array1d)))
  "Returns full string definition for message of type 'array1d"
  (cl:format cl:nil "int64[] a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <array1d>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'a) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <array1d>))
  "Converts a ROS message object to a list"
  (cl:list 'array1d
    (cl:cons ':a (a msg))
))
