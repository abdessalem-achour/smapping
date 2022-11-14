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

class FindObjects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.near_to = null;
      this.nearest_to_robot = null;
      this.near_to_position = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('near_to')) {
        this.near_to = initObj.near_to
      }
      else {
        this.near_to = '';
      }
      if (initObj.hasOwnProperty('nearest_to_robot')) {
        this.nearest_to_robot = initObj.nearest_to_robot
      }
      else {
        this.nearest_to_robot = false;
      }
      if (initObj.hasOwnProperty('near_to_position')) {
        this.near_to_position = initObj.near_to_position
      }
      else {
        this.near_to_position = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FindObjects
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [near_to]
    bufferOffset = _serializer.string(obj.near_to, buffer, bufferOffset);
    // Serialize message field [nearest_to_robot]
    bufferOffset = _serializer.bool(obj.nearest_to_robot, buffer, bufferOffset);
    // Serialize message field [near_to_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.near_to_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindObjects
    let len;
    let data = new FindObjects(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [near_to]
    data.near_to = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nearest_to_robot]
    data.nearest_to_robot = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [near_to_position]
    data.near_to_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.near_to);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mapping_msgs/FindObjects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8b330e3732aff29a86332e860a858d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string near_to
    bool nearest_to_robot
    geometry_msgs/Point near_to_position
    
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
    const resolved = new FindObjects(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.near_to !== undefined) {
      resolved.near_to = msg.near_to;
    }
    else {
      resolved.near_to = ''
    }

    if (msg.nearest_to_robot !== undefined) {
      resolved.nearest_to_robot = msg.nearest_to_robot;
    }
    else {
      resolved.nearest_to_robot = false
    }

    if (msg.near_to_position !== undefined) {
      resolved.near_to_position = geometry_msgs.msg.Point.Resolve(msg.near_to_position)
    }
    else {
      resolved.near_to_position = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = FindObjects;
