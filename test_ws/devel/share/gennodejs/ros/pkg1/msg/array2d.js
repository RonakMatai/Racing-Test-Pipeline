// Auto-generated. Do not edit!

// (in-package pkg1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let array1d = require('./array1d.js');

//-----------------------------------------------------------

class array2d {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type array2d
    // Serialize message field [b]
    // Serialize the length for message field [b]
    bufferOffset = _serializer.uint32(obj.b.length, buffer, bufferOffset);
    obj.b.forEach((val) => {
      bufferOffset = array1d.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type array2d
    let len;
    let data = new array2d(null);
    // Deserialize message field [b]
    // Deserialize array length for message field [b]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.b = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.b[i] = array1d.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.b.forEach((val) => {
      length += array1d.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pkg1/array2d';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '514196907c24619763a39f051ec0299e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    array1d[] b
    
    ================================================================================
    MSG: pkg1/array1d
    int64[] a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new array2d(null);
    if (msg.b !== undefined) {
      resolved.b = new Array(msg.b.length);
      for (let i = 0; i < resolved.b.length; ++i) {
        resolved.b[i] = array1d.Resolve(msg.b[i]);
      }
    }
    else {
      resolved.b = []
    }

    return resolved;
    }
};

module.exports = array2d;
