# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/abdessalem/smapping/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/abdessalem/smapping/build

# Include any dependencies generated for this target.
include openni_camera/openni_camera/CMakeFiles/openni_driver.dir/depend.make

# Include the progress variables for this target.
include openni_camera/openni_camera/CMakeFiles/openni_driver.dir/progress.make

# Include the compile flags for this target's objects.
include openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_driver.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_driver.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_driver.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_driver.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_driver.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_driver.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_driver.cpp > CMakeFiles/openni_driver.dir/src/openni_driver.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_driver.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_driver.cpp -o CMakeFiles/openni_driver.dir/src/openni_driver.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_device.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_device.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device.cpp > CMakeFiles/openni_driver.dir/src/openni_device.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_device.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device.cpp -o CMakeFiles/openni_driver.dir/src/openni_device.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_exception.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_exception.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_exception.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_exception.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_exception.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_exception.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_exception.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_exception.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_exception.cpp > CMakeFiles/openni_driver.dir/src/openni_exception.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_exception.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_exception.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_exception.cpp -o CMakeFiles/openni_driver.dir/src/openni_exception.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_primesense.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_primesense.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_primesense.cpp > CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_primesense.cpp -o CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_kinect.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_kinect.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_kinect.cpp > CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_kinect.cpp -o CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_xtion.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_xtion.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_xtion.cpp > CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_xtion.cpp -o CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_oni.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_oni.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_oni.cpp > CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_device_oni.cpp -o CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_yuv_422.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_yuv_422.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_yuv_422.cpp > CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_yuv_422.cpp -o CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_bayer_grbg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_bayer_grbg.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_bayer_grbg.cpp > CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_bayer_grbg.cpp -o CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_rgb24.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_rgb24.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_rgb24.cpp > CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_image_rgb24.cpp -o CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_ir_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_ir_image.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_ir_image.cpp > CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_ir_image.cpp -o CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.s

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.o: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/flags.make
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.o: /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_depth_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.o"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.o -c /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_depth_image.cpp

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.i"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_depth_image.cpp > CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.i

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.s"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/openni_camera/openni_camera/src/openni_depth_image.cpp -o CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.s

# Object files for target openni_driver
openni_driver_OBJECTS = \
"CMakeFiles/openni_driver.dir/src/openni_driver.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_device.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_exception.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.o" \
"CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.o"

# External object files for target openni_driver
openni_driver_EXTERNAL_OBJECTS =

/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_driver.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_exception.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_primesense.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_kinect.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_xtion.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_device_oni.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_yuv_422.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_bayer_grbg.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_image_rgb24.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_ir_image.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/src/openni_depth_image.cpp.o
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/build.make
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libcamera_info_manager.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libcamera_calibration_parsers.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libimage_transport.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libmessage_filters.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libnodeletlib.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libbondcpp.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libclass_loader.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libdl.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libroslib.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/librospack.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libroscpp.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/librosconsole.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/librostime.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libcpp_common.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/librostime.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /opt/ros/noetic/lib/libcpp_common.so
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
/home/abdessalem/smapping/devel/lib/libopenni_driver.so: openni_camera/openni_camera/CMakeFiles/openni_driver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX shared library /home/abdessalem/smapping/devel/lib/libopenni_driver.so"
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openni_driver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openni_camera/openni_camera/CMakeFiles/openni_driver.dir/build: /home/abdessalem/smapping/devel/lib/libopenni_driver.so

.PHONY : openni_camera/openni_camera/CMakeFiles/openni_driver.dir/build

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/clean:
	cd /home/abdessalem/smapping/build/openni_camera/openni_camera && $(CMAKE_COMMAND) -P CMakeFiles/openni_driver.dir/cmake_clean.cmake
.PHONY : openni_camera/openni_camera/CMakeFiles/openni_driver.dir/clean

openni_camera/openni_camera/CMakeFiles/openni_driver.dir/depend:
	cd /home/abdessalem/smapping/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abdessalem/smapping/src /home/abdessalem/smapping/src/openni_camera/openni_camera /home/abdessalem/smapping/build /home/abdessalem/smapping/build/openni_camera/openni_camera /home/abdessalem/smapping/build/openni_camera/openni_camera/CMakeFiles/openni_driver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : openni_camera/openni_camera/CMakeFiles/openni_driver.dir/depend

