// Auto-generated. Do not edit!

// (in-package mapping_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ObbMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objects_obb = null;
    }
    else {
      if (initObj.hasOwnProperty('objects_obb')) {
        this.objects_obb = initObj.objects_obb
      }
      else {
        this.objects_obb = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObbMap
    // Serialize message field [objects_obb]
    // Serialize the length for message field [objects_obb]
    bufferOffset = _serializer.uint32(obj.objects_obb.length, buffer, bufferOffset);
    obj.objects_obb.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Polygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObbMap
    let len;
    let data = new ObbMap(null);
    // Deserialize message field [objects_obb]
    // Deserialize array length for message field [objects_obb]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects_obb = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects_obb[i] = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.objects_obb.forEach((val) => {
      length += geometry_msgs.msg.Polygon.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mapping_msgs/ObbMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb56d8292e7d369877fd0b4896a6a391';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Polygon[] objects_obb
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObbMap(null);
    if (msg.objects_obb !== undefined) {
      resolved.objects_obb = new Array(msg.objects_obb.length);
      for (let i = 0; i < resolved.objects_obb.length; ++i) {
        resolved.objects_obb[i] = geometry_msgs.msg.Polygon.Resolve(msg.objects_obb[i]);
      }
    }
    else {
      resolved.objects_obb = []
    }

    return resolved;
    }
};

module.exports = ObbMap;
