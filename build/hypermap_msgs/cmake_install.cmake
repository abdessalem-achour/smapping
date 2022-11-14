# Install script for directory: /home/abdessalem/smapping/src/hypermap_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/abdessalem/smapping/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hypermap_msgs/msg" TYPE FILE FILES
    "/home/abdessalem/smapping/src/hypermap_msgs/msg/LayerMetaData.msg"
    "/home/abdessalem/smapping/src/hypermap_msgs/msg/HypermapMetaData.msg"
    "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticObject.msg"
    "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMap.msg"
    "/home/abdessalem/smapping/src/hypermap_msgs/msg/SemanticMapUpdate.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hypermap_msgs/srv" TYPE FILE FILES
    "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntAtPoint.srv"
    "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetIntsByArea.srv"
    "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByInt.srv"
    "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetLocationsByString.srv"
    "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByArea.srv"
    "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetSemanticByString.srv"
    "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringAtPoint.srv"
    "/home/abdessalem/smapping/src/hypermap_msgs/srv/GetStringsByArea.srv"
    "/home/abdessalem/smapping/src/hypermap_msgs/srv/LoadMap.srv"
    "/home/abdessalem/smapping/src/hypermap_msgs/srv/StoreMap.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hypermap_msgs/cmake" TYPE FILE FILES "/home/abdessalem/smapping/build/hypermap_msgs/catkin_generated/installspace/hypermap_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/abdessalem/smapping/devel/include/hypermap_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/abdessalem/smapping/devel/share/roseus/ros/hypermap_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/abdessalem/smapping/devel/share/common-lisp/ros/hypermap_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/abdessalem/smapping/devel/share/gennodejs/ros/hypermap_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/abdessalem/smapping/devel/lib/python3/dist-packages/hypermap_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/abdessalem/smapping/devel/lib/python3/dist-packages/hypermap_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/abdessalem/smapping/build/hypermap_msgs/catkin_generated/installspace/hypermap_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hypermap_msgs/cmake" TYPE FILE FILES "/home/abdessalem/smapping/build/hypermap_msgs/catkin_generated/installspace/hypermap_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hypermap_msgs/cmake" TYPE FILE FILES
    "/home/abdessalem/smapping/build/hypermap_msgs/catkin_generated/installspace/hypermap_msgsConfig.cmake"
    "/home/abdessalem/smapping/build/hypermap_msgs/catkin_generated/installspace/hypermap_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hypermap_msgs" TYPE FILE FILES "/home/abdessalem/smapping/src/hypermap_msgs/package.xml")
endif()

