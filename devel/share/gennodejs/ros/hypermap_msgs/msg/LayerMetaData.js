// Auto-generated. Do not edit!

// (in-package hypermap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LayerMetaData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.class_name = null;
      this.name = null;
      this.frame_id = null;
      this.subscribe_mode = null;
      this.enable_update = null;
      this.publish_global_topics = null;
    }
    else {
      if (initObj.hasOwnProperty('class_name')) {
        this.class_name = initObj.class_name
      }
      else {
        this.class_name = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('subscribe_mode')) {
        this.subscribe_mode = initObj.subscribe_mode
      }
      else {
        this.subscribe_mode = false;
      }
      if (initObj.hasOwnProperty('enable_update')) {
        this.enable_update = initObj.enable_update
      }
      else {
        this.enable_update = false;
      }
      if (initObj.hasOwnProperty('publish_global_topics')) {
        this.publish_global_topics = initObj.publish_global_topics
      }
      else {
        this.publish_global_topics = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LayerMetaData
    // Serialize message field [class_name]
    bufferOffset = _serializer.string(obj.class_name, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [subscribe_mode]
    bufferOffset = _serializer.bool(obj.subscribe_mode, buffer, bufferOffset);
    // Serialize message field [enable_update]
    bufferOffset = _serializer.bool(obj.enable_update, buffer, bufferOffset);
    // Serialize message field [publish_global_topics]
    bufferOffset = _serializer.bool(obj.publish_global_topics, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LayerMetaData
    let len;
    let data = new LayerMetaData(null);
    // Deserialize message field [class_name]
    data.class_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [subscribe_mode]
    data.subscribe_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_update]
    data.enable_update = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [publish_global_topics]
    data.publish_global_topics = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.class_name);
    length += _getByteLength(object.name);
    length += _getByteLength(object.frame_id);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hypermap_msgs/LayerMetaData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbb087715ec31cbe2dbbb7c5a3c3c3a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string class_name
    string name
    string frame_id
    bool subscribe_mode
    bool enable_update
    bool publish_global_topics
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LayerMetaData(null);
    if (msg.class_name !== undefined) {
      resolved.class_name = msg.class_name;
    }
    else {
      resolved.class_name = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.subscribe_mode !== undefined) {
      resolved.subscribe_mode = msg.subscribe_mode;
    }
    else {
      resolved.subscribe_mode = false
    }

    if (msg.enable_update !== undefined) {
      resolved.enable_update = msg.enable_update;
    }
    else {
      resolved.enable_update = false
    }

    if (msg.publish_global_topics !== undefined) {
      resolved.publish_global_topics = msg.publish_global_topics;
    }
    else {
      resolved.publish_global_topics = false
    }

    return resolved;
    }
};

module.exports = LayerMetaData;
