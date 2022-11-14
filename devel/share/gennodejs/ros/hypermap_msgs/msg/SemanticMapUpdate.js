// Auto-generated. Do not edit!

// (in-package hypermap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SemanticObject = require('./SemanticObject.js');

//-----------------------------------------------------------

class SemanticMapUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.to_add = null;
      this.to_modify = null;
      this.updates = null;
      this.to_delete = null;
    }
    else {
      if (initObj.hasOwnProperty('to_add')) {
        this.to_add = initObj.to_add
      }
      else {
        this.to_add = [];
      }
      if (initObj.hasOwnProperty('to_modify')) {
        this.to_modify = initObj.to_modify
      }
      else {
        this.to_modify = [];
      }
      if (initObj.hasOwnProperty('updates')) {
        this.updates = initObj.updates
      }
      else {
        this.updates = [];
      }
      if (initObj.hasOwnProperty('to_delete')) {
        this.to_delete = initObj.to_delete
      }
      else {
        this.to_delete = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SemanticMapUpdate
    // Serialize message field [to_add]
    // Serialize the length for message field [to_add]
    bufferOffset = _serializer.uint32(obj.to_add.length, buffer, bufferOffset);
    obj.to_add.forEach((val) => {
      bufferOffset = SemanticObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [to_modify]
    bufferOffset = _arraySerializer.uint32(obj.to_modify, buffer, bufferOffset, null);
    // Serialize message field [updates]
    // Serialize the length for message field [updates]
    bufferOffset = _serializer.uint32(obj.updates.length, buffer, bufferOffset);
    obj.updates.forEach((val) => {
      bufferOffset = SemanticObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [to_delete]
    bufferOffset = _arraySerializer.uint32(obj.to_delete, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SemanticMapUpdate
    let len;
    let data = new SemanticMapUpdate(null);
    // Deserialize message field [to_add]
    // Deserialize array length for message field [to_add]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.to_add = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.to_add[i] = SemanticObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [to_modify]
    data.to_modify = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [updates]
    // Deserialize array length for message field [updates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.updates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.updates[i] = SemanticObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [to_delete]
    data.to_delete = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.to_add.forEach((val) => {
      length += SemanticObject.getMessageSize(val);
    });
    length += 4 * object.to_modify.length;
    object.updates.forEach((val) => {
      length += SemanticObject.getMessageSize(val);
    });
    length += 4 * object.to_delete.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hypermap_msgs/SemanticMapUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da8894bccdfde7741529f3941bb988c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SemanticObject[] to_add
    uint32[] to_modify
    SemanticObject[] updates
    uint32[] to_delete
    
    ================================================================================
    MSG: hypermap_msgs/SemanticObject
    int32 id
    geometry_msgs/Polygon shape
    geometry_msgs/Point position # should be centroid of shape
    string name
    string[] tags
    float64[] confidence
    
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
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SemanticMapUpdate(null);
    if (msg.to_add !== undefined) {
      resolved.to_add = new Array(msg.to_add.length);
      for (let i = 0; i < resolved.to_add.length; ++i) {
        resolved.to_add[i] = SemanticObject.Resolve(msg.to_add[i]);
      }
    }
    else {
      resolved.to_add = []
    }

    if (msg.to_modify !== undefined) {
      resolved.to_modify = msg.to_modify;
    }
    else {
      resolved.to_modify = []
    }

    if (msg.updates !== undefined) {
      resolved.updates = new Array(msg.updates.length);
      for (let i = 0; i < resolved.updates.length; ++i) {
        resolved.updates[i] = SemanticObject.Resolve(msg.updates[i]);
      }
    }
    else {
      resolved.updates = []
    }

    if (msg.to_delete !== undefined) {
      resolved.to_delete = msg.to_delete;
    }
    else {
      resolved.to_delete = []
    }

    return resolved;
    }
};

module.exports = SemanticMapUpdate;
