// Auto-generated. Do not edit!

// (in-package hypermap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LayerMetaData = require('./LayerMetaData.js');

//-----------------------------------------------------------

class HypermapMetaData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.layer_cnt = null;
      this.node_name = null;
      this.layers = null;
    }
    else {
      if (initObj.hasOwnProperty('layer_cnt')) {
        this.layer_cnt = initObj.layer_cnt
      }
      else {
        this.layer_cnt = 0;
      }
      if (initObj.hasOwnProperty('node_name')) {
        this.node_name = initObj.node_name
      }
      else {
        this.node_name = '';
      }
      if (initObj.hasOwnProperty('layers')) {
        this.layers = initObj.layers
      }
      else {
        this.layers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HypermapMetaData
    // Serialize message field [layer_cnt]
    bufferOffset = _serializer.uint32(obj.layer_cnt, buffer, bufferOffset);
    // Serialize message field [node_name]
    bufferOffset = _serializer.string(obj.node_name, buffer, bufferOffset);
    // Serialize message field [layers]
    // Serialize the length for message field [layers]
    bufferOffset = _serializer.uint32(obj.layers.length, buffer, bufferOffset);
    obj.layers.forEach((val) => {
      bufferOffset = LayerMetaData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HypermapMetaData
    let len;
    let data = new HypermapMetaData(null);
    // Deserialize message field [layer_cnt]
    data.layer_cnt = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [node_name]
    data.node_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [layers]
    // Deserialize array length for message field [layers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.layers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.layers[i] = LayerMetaData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.node_name);
    object.layers.forEach((val) => {
      length += LayerMetaData.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hypermap_msgs/HypermapMetaData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5befb9e9353d4c71ff05aaa102cd721a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 layer_cnt
    string node_name
    LayerMetaData[] layers
    
    ================================================================================
    MSG: hypermap_msgs/LayerMetaData
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
    const resolved = new HypermapMetaData(null);
    if (msg.layer_cnt !== undefined) {
      resolved.layer_cnt = msg.layer_cnt;
    }
    else {
      resolved.layer_cnt = 0
    }

    if (msg.node_name !== undefined) {
      resolved.node_name = msg.node_name;
    }
    else {
      resolved.node_name = ''
    }

    if (msg.layers !== undefined) {
      resolved.layers = new Array(msg.layers.length);
      for (let i = 0; i < resolved.layers.length; ++i) {
        resolved.layers[i] = LayerMetaData.Resolve(msg.layers[i]);
      }
    }
    else {
      resolved.layers = []
    }

    return resolved;
    }
};

module.exports = HypermapMetaData;
