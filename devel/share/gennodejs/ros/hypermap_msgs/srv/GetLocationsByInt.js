// Auto-generated. Do not edit!

// (in-package hypermap_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetLocationsByIntRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.layer = null;
      this.value = null;
      this.area = null;
    }
    else {
      if (initObj.hasOwnProperty('layer')) {
        this.layer = initObj.layer
      }
      else {
        this.layer = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = new geometry_msgs.msg.PolygonStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLocationsByIntRequest
    // Serialize message field [layer]
    bufferOffset = _serializer.string(obj.layer, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    // Serialize message field [area]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.area, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLocationsByIntRequest
    let len;
    let data = new GetLocationsByIntRequest(null);
    // Deserialize message field [layer]
    data.layer = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [area]
    data.area = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.layer);
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.area);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hypermap_msgs/GetLocationsByIntRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '595fe89ec03cc255d1e83f3b8c716b4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string layer
    int32 value
    geometry_msgs/PolygonStamped area
    
    ================================================================================
    MSG: geometry_msgs/PolygonStamped
    # This represents a Polygon with reference coordinate frame and timestamp
    Header header
    Polygon polygon
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new GetLocationsByIntRequest(null);
    if (msg.layer !== undefined) {
      resolved.layer = msg.layer;
    }
    else {
      resolved.layer = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.area !== undefined) {
      resolved.area = geometry_msgs.msg.PolygonStamped.Resolve(msg.area)
    }
    else {
      resolved.area = new geometry_msgs.msg.PolygonStamped()
    }

    return resolved;
    }
};

class GetLocationsByIntResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.locations = null;
    }
    else {
      if (initObj.hasOwnProperty('locations')) {
        this.locations = initObj.locations
      }
      else {
        this.locations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLocationsByIntResponse
    // Serialize message field [locations]
    // Serialize the length for message field [locations]
    bufferOffset = _serializer.uint32(obj.locations.length, buffer, bufferOffset);
    obj.locations.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLocationsByIntResponse
    let len;
    let data = new GetLocationsByIntResponse(null);
    // Deserialize message field [locations]
    // Deserialize array length for message field [locations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.locations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.locations[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.locations.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hypermap_msgs/GetLocationsByIntResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd45bf911fc03811b8b5d44e79e15058f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] locations
    
    
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
    const resolved = new GetLocationsByIntResponse(null);
    if (msg.locations !== undefined) {
      resolved.locations = new Array(msg.locations.length);
      for (let i = 0; i < resolved.locations.length; ++i) {
        resolved.locations[i] = geometry_msgs.msg.Point.Resolve(msg.locations[i]);
      }
    }
    else {
      resolved.locations = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetLocationsByIntRequest,
  Response: GetLocationsByIntResponse,
  md5sum() { return 'b49980ebdc2170afb007a5755d50a9cc'; },
  datatype() { return 'hypermap_msgs/GetLocationsByInt'; }
};
