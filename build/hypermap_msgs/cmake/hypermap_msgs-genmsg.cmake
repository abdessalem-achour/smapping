# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hypermap_msgs: 5 messages, 10 services")

set(MSG_I_FLAGS "-Ihypermap_msgs:/home/abdessalem/smapping/src/hypermap_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hypermap_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg" ""
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg" "hypermap_msgs/LayerMetaData"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg" "geometry_msgs/Point:geometry_msgs/Point32:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg" "std_msgs/Header:hypermap_msgs/SemanticObject:geometry_msgs/Point32:geometry_msgs/Point:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg" "hypermap_msgs/SemanticObject:geometry_msgs/Point:geometry_msgs/Point32:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv" "geometry_msgs/PointStamped:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv" "std_msgs/Header:geometry_msgs/Point32:geometry_msgs/Point:geometry_msgs/PolygonStamped:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv" "std_msgs/Header:geometry_msgs/Point32:geometry_msgs/Point:geometry_msgs/PolygonStamped:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv" "std_msgs/Header:geometry_msgs/Point32:geometry_msgs/Point:geometry_msgs/PolygonStamped:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv" "std_msgs/Header:hypermap_msgs/SemanticObject:geometry_msgs/Point32:geometry_msgs/Point:geometry_msgs/PolygonStamped:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv" "hypermap_msgs/SemanticObject:geometry_msgs/Point:geometry_msgs/Point32:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv" "geometry_msgs/PointStamped:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv" "std_msgs/Header:geometry_msgs/Point32:geometry_msgs/Point:geometry_msgs/PolygonStamped:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv" ""
)

get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv" NAME_WE)
add_custom_target(_hypermap_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hypermap_msgs" "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)

### Generating Services
_generate_srv_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_cpp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
)

### Generating Module File
_generate_module_cpp(hypermap_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hypermap_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hypermap_msgs_generate_messages hypermap_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_cpp _hypermap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hypermap_msgs_gencpp)
add_dependencies(hypermap_msgs_gencpp hypermap_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hypermap_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)

### Generating Services
_generate_srv_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_eus(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
)

### Generating Module File
_generate_module_eus(hypermap_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hypermap_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hypermap_msgs_generate_messages hypermap_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_eus _hypermap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hypermap_msgs_geneus)
add_dependencies(hypermap_msgs_geneus hypermap_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hypermap_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)

### Generating Services
_generate_srv_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_lisp(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
)

### Generating Module File
_generate_module_lisp(hypermap_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hypermap_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hypermap_msgs_generate_messages hypermap_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_lisp _hypermap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hypermap_msgs_genlisp)
add_dependencies(hypermap_msgs_genlisp hypermap_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hypermap_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)

### Generating Services
_generate_srv_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_nodejs(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
)

### Generating Module File
_generate_module_nodejs(hypermap_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hypermap_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hypermap_msgs_generate_messages hypermap_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_nodejs _hypermap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hypermap_msgs_gennodejs)
add_dependencies(hypermap_msgs_gennodejs hypermap_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hypermap_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_msg_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)

### Generating Services
_generate_srv_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv"
  "${MSG_I_FLAGS}"
  "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)
_generate_srv_py(hypermap_msgs
  "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
)

### Generating Module File
_generate_module_py(hypermap_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hypermap_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hypermap_msgs_generate_messages hypermap_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv" NAME_WE)
add_dependencies(hypermap_msgs_generate_messages_py _hypermap_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hypermap_msgs_genpy)
add_dependencies(hypermap_msgs_genpy hypermap_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hypermap_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hypermap_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hypermap_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hypermap_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hypermap_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hypermap_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hypermap_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hypermap_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hypermap_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hypermap_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hypermap_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hypermap_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hypermap_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hypermap_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hypermap_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hypermap_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
