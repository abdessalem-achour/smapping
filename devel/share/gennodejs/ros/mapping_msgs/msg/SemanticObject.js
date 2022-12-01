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
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class SemanticObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.shape = null;
      this.obb = null;
      this.position = null;
      this.pointcloud = null;
      this.name = null;
      this.tags = null;
      this.confidence = null;
      this.exist_certainty = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new geometry_msgs.msg.Polygon();
      }
      if (initObj.hasOwnProperty('obb')) {
        this.obb = initObj.obb
      }
      else {
        this.obb = new geometry_msgs.msg.Polygon();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pointcloud')) {
        this.pointcloud = initObj.pointcloud
      }
      else {
        this.pointcloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = [];
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = [];
      }
      if (initObj.hasOwnProperty('exist_certainty')) {
        this.exist_certainty = initObj.exist_certainty
      }
      else {
        this.exist_certainty = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SemanticObject
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.shape, buffer, bufferOffset);
    // Serialize message field [obb]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.obb, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [pointcloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.pointcloud, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = _arraySerializer.string(obj.tags, buffer, bufferOffset, null);
    // Serialize message field [confidence]
    bufferOffset = _arraySerializer.float64(obj.confidence, buffer, bufferOffset, null);
    // Serialize message field [exist_certainty]
    bufferOffset = _serializer.float64(obj.exist_certainty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SemanticObject
    let len;
    let data = new SemanticObject(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [obb]
    data.obb = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pointcloud]
    data.pointcloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [confidence]
    data.confidence = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [exist_certainty]
    data.exist_certainty = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.Polygon.getMessageSize(object.shape);
    length += geometry_msgs.msg.Polygon.getMessageSize(object.obb);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.pointcloud);
    length += _getByteLength(object.name);
    object.tags.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.confidence.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mapping_msgs/SemanticObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34c4e8ec6dbe8338ce914b56f57b64e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    geometry_msgs/Polygon shape
    geometry_msgs/Polygon obb
    geometry_msgs/Point position # should be centroid of shape
    sensor_msgs/PointCloud2 pointcloud
    string name
    string[] tags
    float64[] confidence
    float64 exist_certainty
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
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
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
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SemanticObject(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.shape !== undefined) {
      resolved.shape = geometry_msgs.msg.Polygon.Resolve(msg.shape)
    }
    else {
      resolved.shape = new geometry_msgs.msg.Polygon()
    }

    if (msg.obb !== undefined) {
      resolved.obb = geometry_msgs.msg.Polygon.Resolve(msg.obb)
    }
    else {
      resolved.obb = new geometry_msgs.msg.Polygon()
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.pointcloud !== undefined) {
      resolved.pointcloud = sensor_msgs.msg.PointCloud2.Resolve(msg.pointcloud)
    }
    else {
      resolved.pointcloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.tags !== undefined) {
      resolved.tags = msg.tags;
    }
    else {
      resolved.tags = []
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = []
    }

    if (msg.exist_certainty !== undefined) {
      resolved.exist_certainty = msg.exist_certainty;
    }
    else {
      resolved.exist_certainty = 0.0
    }

    return resolved;
    }
};

module.exports = SemanticObject;
