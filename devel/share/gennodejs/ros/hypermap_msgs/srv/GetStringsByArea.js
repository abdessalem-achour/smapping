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

class GetStringsByAreaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.layer = null;
      this.area = null;
    }
    else {
      if (initObj.hasOwnProperty('layer')) {
        this.layer = initObj.layer
      }
      else {
        this.layer = '';
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
    // Serializes a message object of type GetStringsByAreaRequest
    // Serialize message field [layer]
    bufferOffset = _serializer.string(obj.layer, buffer, bufferOffset);
    // Serialize message field [area]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.area, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStringsByAreaRequest
    let len;
    let data = new GetStringsByAreaRequest(null);
    // Deserialize message field [layer]
    data.layer = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [area]
    data.area = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.layer);
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.area);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hypermap_msgs/GetStringsByAreaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a397f744765bc1d59328469cfcac7595';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string layer
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
    const resolved = new GetStringsByAreaRequest(null);
    if (msg.layer !== undefined) {
      resolved.layer = msg.layer;
    }
    else {
      resolved.layer = ''
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

class GetStringsByAreaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.names = null;
      this.locations = null;
    }
    else {
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('locations')) {
        this.locations = initObj.locations
      }
      else {
        this.locations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStringsByAreaResponse
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [locations]
    // Serialize the length for message field [locations]
    bufferOffset = _serializer.uint32(obj.locations.length, buffer, bufferOffset);
    obj.locations.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStringsByAreaResponse
    let len;
    let data = new GetStringsByAreaResponse(null);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
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
    object.names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 24 * object.locations.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hypermap_msgs/GetStringsByAreaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edbe0cb3b8fce1c551c1862dc36469af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] names
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
    const resolved = new GetStringsByAreaResponse(null);
    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

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
  Request: GetStringsByAreaRequest,
  Response: GetStringsByAreaResponse,
  md5sum() { return '26b97ae5a059a35d222e8b1128c7abd4'; },
  datatype() { return 'hypermap_msgs/GetStringsByArea'; }
};
