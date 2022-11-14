# Install script for directory: /home/abdessalem/smapping/src/sem_mapping/Src/mapping_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mapping_msgs/msg" TYPE FILE FILES
    "/home/abdessalem/smapping/src/sem_mapping/Src/mapping_msgs/msg/BoundingBox.msg"
    "/home/abdessalem/smapping/src/sem_mapping/Src/mapping_msgs/msg/BoundingBoxes.msg"
    "/home/abdessalem/smapping/src/sem_mapping/Src/mapping_msgs/msg/ObjectCount.msg"
    "/home/abdessalem/smapping/src/sem_mapping/Src/mapping_msgs/msg/BoxesAndClouds.msg"
    "/home/abdessalem/smapping/src/sem_mapping/Src/mapping_msgs/msg/ObjectPositions.msg"
    "/home/abdessalem/smapping/src/sem_mapping/Src/mapping_msgs/msg/FindObjects.msg"
    "/home/abdessalem/smapping/src/sem_mapping/Src/mapping_msgs/msg/SemanticMap.msg"
    "/home/abdessalem/smapping/src/sem_mapping/Src/mapping_msgs/msg/SemanticObject.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mapping_msgs/cmake" TYPE FILE FILES "/home/abdessalem/smapping/build/sem_mapping/Src/mapping_msgs/catkin_generated/installspace/mapping_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/abdessalem/smapping/devel/include/mapping_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/abdessalem/smapping/devel/share/roseus/ros/mapping_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/abdessalem/smapping/devel/share/common-lisp/ros/mapping_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/abdessalem/smapping/devel/share/gennodejs/ros/mapping_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/abdessalem/smapping/devel/lib/python3/dist-packages/mapping_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/abdessalem/smapping/devel/lib/python3/dist-packages/mapping_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/abdessalem/smapping/build/sem_mapping/Src/mapping_msgs/catkin_generated/installspace/mapping_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mapping_msgs/cmake" TYPE FILE FILES "/home/abdessalem/smapping/build/sem_mapping/Src/mapping_msgs/catkin_generated/installspace/mapping_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mapping_msgs/cmake" TYPE FILE FILES
    "/home/abdessalem/smapping/build/sem_mapping/Src/mapping_msgs/catkin_generated/installspace/mapping_msgsConfig.cmake"
    "/home/abdessalem/smapping/build/sem_mapping/Src/mapping_msgs/catkin_generated/installspace/mapping_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mapping_msgs" TYPE FILE FILES "/home/abdessalem/smapping/src/sem_mapping/Src/mapping_msgs/package.xml")
endif()

