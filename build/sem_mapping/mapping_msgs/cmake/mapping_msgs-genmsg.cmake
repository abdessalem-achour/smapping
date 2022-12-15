# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mapping_msgs: 9 messages, 0 services")

set(MSG_I_FLAGS "-Imapping_msgs:/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Irosgraph_msgs:/opt/ros/noetic/share/rosgraph_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mapping_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_mapping_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapping_msgs" "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg" ""
)

get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_custom_target(_mapping_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapping_msgs" "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg" "mapping_msgs/BoundingBox:std_msgs/Header"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg" NAME_WE)
add_custom_target(_mapping_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapping_msgs" "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg" NAME_WE)
add_custom_target(_mapping_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapping_msgs" "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg" "mapping_msgs/BoundingBox:rosgraph_msgs/Clock:mapping_msgs/BoundingBoxes:sensor_msgs/PointCloud2:std_msgs/Header:sensor_msgs/PointField"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg" NAME_WE)
add_custom_target(_mapping_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapping_msgs" "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg" NAME_WE)
add_custom_target(_mapping_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapping_msgs" "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg" NAME_WE)
add_custom_target(_mapping_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapping_msgs" "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg" "sensor_msgs/PointField:geometry_msgs/Polygon:sensor_msgs/PointCloud2:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Point32:mapping_msgs/SemanticObject"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg" NAME_WE)
add_custom_target(_mapping_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapping_msgs" "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg" "sensor_msgs/PointField:geometry_msgs/Polygon:sensor_msgs/PointCloud2:std_msgs/Header:geometry_msgs/Point32:geometry_msgs/Point"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg" NAME_WE)
add_custom_target(_mapping_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mapping_msgs" "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg" "geometry_msgs/Polygon:geometry_msgs/Point32"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_cpp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_cpp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_cpp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg;/opt/ros/noetic/share/rosgraph_msgs/cmake/../msg/Clock.msg;/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_cpp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_cpp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_cpp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_cpp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_cpp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(mapping_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mapping_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mapping_msgs_generate_messages mapping_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_cpp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_cpp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_cpp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_cpp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_cpp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_cpp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_cpp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_cpp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_cpp _mapping_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mapping_msgs_gencpp)
add_dependencies(mapping_msgs_gencpp mapping_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mapping_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
)
_generate_msg_eus(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
)
_generate_msg_eus(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
)
_generate_msg_eus(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg;/opt/ros/noetic/share/rosgraph_msgs/cmake/../msg/Clock.msg;/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
)
_generate_msg_eus(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
)
_generate_msg_eus(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
)
_generate_msg_eus(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
)
_generate_msg_eus(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
)
_generate_msg_eus(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(mapping_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mapping_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mapping_msgs_generate_messages mapping_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_eus _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_eus _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_eus _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_eus _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_eus _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_eus _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_eus _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_eus _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_eus _mapping_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mapping_msgs_geneus)
add_dependencies(mapping_msgs_geneus mapping_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mapping_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_lisp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_lisp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_lisp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg;/opt/ros/noetic/share/rosgraph_msgs/cmake/../msg/Clock.msg;/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_lisp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_lisp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_lisp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_lisp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
)
_generate_msg_lisp(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(mapping_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mapping_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mapping_msgs_generate_messages mapping_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_lisp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_lisp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_lisp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_lisp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_lisp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_lisp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_lisp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_lisp _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_lisp _mapping_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mapping_msgs_genlisp)
add_dependencies(mapping_msgs_genlisp mapping_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mapping_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
)
_generate_msg_nodejs(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
)
_generate_msg_nodejs(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
)
_generate_msg_nodejs(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg;/opt/ros/noetic/share/rosgraph_msgs/cmake/../msg/Clock.msg;/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
)
_generate_msg_nodejs(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
)
_generate_msg_nodejs(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
)
_generate_msg_nodejs(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
)
_generate_msg_nodejs(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
)
_generate_msg_nodejs(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mapping_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mapping_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mapping_msgs_generate_messages mapping_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_nodejs _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_nodejs _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_nodejs _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_nodejs _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_nodejs _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_nodejs _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_nodejs _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_nodejs _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_nodejs _mapping_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mapping_msgs_gennodejs)
add_dependencies(mapping_msgs_gennodejs mapping_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mapping_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
)
_generate_msg_py(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
)
_generate_msg_py(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
)
_generate_msg_py(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg;/opt/ros/noetic/share/rosgraph_msgs/cmake/../msg/Clock.msg;/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
)
_generate_msg_py(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
)
_generate_msg_py(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
)
_generate_msg_py(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
)
_generate_msg_py(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
)
_generate_msg_py(mapping_msgs
  "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(mapping_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mapping_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mapping_msgs_generate_messages mapping_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_py _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_py _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectCount.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_py _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/BoxesAndClouds.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_py _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObjectPositions.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_py _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/FindObjects.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_py _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticMap.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_py _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/SemanticObject.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_py _mapping_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/sem_mapping/mapping_msgs/msg/ObbMap.msg" NAME_WE)
add_dependencies(mapping_msgs_generate_messages_py _mapping_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mapping_msgs_genpy)
add_dependencies(mapping_msgs_genpy mapping_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mapping_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mapping_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mapping_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mapping_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mapping_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET rosgraph_msgs_generate_messages_cpp)
  add_dependencies(mapping_msgs_generate_messages_cpp rosgraph_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mapping_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mapping_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mapping_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mapping_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET rosgraph_msgs_generate_messages_eus)
  add_dependencies(mapping_msgs_generate_messages_eus rosgraph_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mapping_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mapping_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mapping_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mapping_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET rosgraph_msgs_generate_messages_lisp)
  add_dependencies(mapping_msgs_generate_messages_lisp rosgraph_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mapping_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mapping_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mapping_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mapping_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET rosgraph_msgs_generate_messages_nodejs)
  add_dependencies(mapping_msgs_generate_messages_nodejs rosgraph_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mapping_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mapping_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mapping_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mapping_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET rosgraph_msgs_generate_messages_py)
  add_dependencies(mapping_msgs_generate_messages_py rosgraph_msgs_generate_messages_py)
endif()
