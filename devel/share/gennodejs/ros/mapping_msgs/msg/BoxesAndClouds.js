// Auto-generated. Do not edit!

// (in-package mapping_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBoxes = require('./BoundingBoxes.js');
let rosgraph_msgs = _finder('rosgraph_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class BoxesAndClouds {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bounding_boxes = null;
      this.point_cloud = null;
      this.clock = null;
    }
    else {
      if (initObj.hasOwnProperty('bounding_boxes')) {
        this.bounding_boxes = initObj.bounding_boxes
      }
      else {
        this.bounding_boxes = new BoundingBoxes();
      }
      if (initObj.hasOwnProperty('point_cloud')) {
        this.point_cloud = initObj.point_cloud
      }
      else {
        this.point_cloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('clock')) {
        this.clock = initObj.clock
      }
      else {
        this.clock = new rosgraph_msgs.msg.Clock();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoxesAndClouds
    // Serialize message field [bounding_boxes]
    bufferOffset = BoundingBoxes.serialize(obj.bounding_boxes, buffer, bufferOffset);
    // Serialize message field [point_cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.point_cloud, buffer, bufferOffset);
    // Serialize message field [clock]
    bufferOffset = rosgraph_msgs.msg.Clock.serialize(obj.clock, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoxesAndClouds
    let len;
    let data = new BoxesAndClouds(null);
    // Deserialize message field [bounding_boxes]
    data.bounding_boxes = BoundingBoxes.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_cloud]
    data.point_cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [clock]
    data.clock = rosgraph_msgs.msg.Clock.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += BoundingBoxes.getMessageSize(object.bounding_boxes);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.point_cloud);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mapping_msgs/BoxesAndClouds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9d322cd162f39753ffb3778b7aa7277';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    BoundingBoxes bounding_boxes
    sensor_msgs/PointCloud2 point_cloud
    rosgraph_msgs/Clock clock
    
    ================================================================================
    MSG: mapping_msgs/BoundingBoxes
    Header header
    Header image_header
    BoundingBox[] bounding_boxes
    
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
    MSG: mapping_msgs/BoundingBox
    float64 probability
    int64 xmin
    int64 ymin
    int64 xmax
    int64 ymax
    int16 id
    string Class
    
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
    
    ================================================================================
    MSG: rosgraph_msgs/Clock
    # roslib/Clock is used for publishing simulated time in ROS. 
    # This message simply communicates the current time.
    # For more information, see http://www.ros.org/wiki/Clock
    time clock
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoxesAndClouds(null);
    if (msg.bounding_boxes !== undefined) {
      resolved.bounding_boxes = BoundingBoxes.Resolve(msg.bounding_boxes)
    }
    else {
      resolved.bounding_boxes = new BoundingBoxes()
    }

    if (msg.point_cloud !== undefined) {
      resolved.point_cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.point_cloud)
    }
    else {
      resolved.point_cloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.clock !== undefined) {
      resolved.clock = rosgraph_msgs.msg.Clock.Resolve(msg.clock)
    }
    else {
      resolved.clock = new rosgraph_msgs.msg.Clock()
    }

    return resolved;
    }
};

module.exports = BoxesAndClouds;
