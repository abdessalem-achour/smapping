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
include navigation/navfn/test/CMakeFiles/path_calc_test.dir/depend.make

# Include the progress variables for this target.
include navigation/navfn/test/CMakeFiles/path_calc_test.dir/progress.make

# Include the compile flags for this target's objects.
include navigation/navfn/test/CMakeFiles/path_calc_test.dir/flags.make

navigation/navfn/test/CMakeFiles/path_calc_test.dir/path_calc_test.cpp.o: navigation/navfn/test/CMakeFiles/path_calc_test.dir/flags.make
navigation/navfn/test/CMakeFiles/path_calc_test.dir/path_calc_test.cpp.o: /home/abdessalem/smapping/src/navigation/navfn/test/path_calc_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object navigation/navfn/test/CMakeFiles/path_calc_test.dir/path_calc_test.cpp.o"
	cd /home/abdessalem/smapping/build/navigation/navfn/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/path_calc_test.dir/path_calc_test.cpp.o -c /home/abdessalem/smapping/src/navigation/navfn/test/path_calc_test.cpp

navigation/navfn/test/CMakeFiles/path_calc_test.dir/path_calc_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/path_calc_test.dir/path_calc_test.cpp.i"
	cd /home/abdessalem/smapping/build/navigation/navfn/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/navigation/navfn/test/path_calc_test.cpp > CMakeFiles/path_calc_test.dir/path_calc_test.cpp.i

navigation/navfn/test/CMakeFiles/path_calc_test.dir/path_calc_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/path_calc_test.dir/path_calc_test.cpp.s"
	cd /home/abdessalem/smapping/build/navigation/navfn/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/navigation/navfn/test/path_calc_test.cpp -o CMakeFiles/path_calc_test.dir/path_calc_test.cpp.s

navigation/navfn/test/CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.o: navigation/navfn/test/CMakeFiles/path_calc_test.dir/flags.make
navigation/navfn/test/CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.o: /home/abdessalem/smapping/src/navigation/navfn/src/read_pgm_costmap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object navigation/navfn/test/CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.o"
	cd /home/abdessalem/smapping/build/navigation/navfn/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.o -c /home/abdessalem/smapping/src/navigation/navfn/src/read_pgm_costmap.cpp

navigation/navfn/test/CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.i"
	cd /home/abdessalem/smapping/build/navigation/navfn/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abdessalem/smapping/src/navigation/navfn/src/read_pgm_costmap.cpp > CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.i

navigation/navfn/test/CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.s"
	cd /home/abdessalem/smapping/build/navigation/navfn/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abdessalem/smapping/src/navigation/navfn/src/read_pgm_costmap.cpp -o CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.s

# Object files for target path_calc_test
path_calc_test_OBJECTS = \
"CMakeFiles/path_calc_test.dir/path_calc_test.cpp.o" \
"CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.o"

# External object files for target path_calc_test
path_calc_test_EXTERNAL_OBJECTS =

/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: navigation/navfn/test/CMakeFiles/path_calc_test.dir/path_calc_test.cpp.o
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: navigation/navfn/test/CMakeFiles/path_calc_test.dir/__/src/read_pgm_costmap.cpp.o
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: navigation/navfn/test/CMakeFiles/path_calc_test.dir/build.make
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: gtest/lib/libgtest.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /home/abdessalem/smapping/devel/lib/libnavfn.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /home/abdessalem/smapping/devel/lib/liblayers.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /home/abdessalem/smapping/devel/lib/libcostmap_2d.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/liborocos-kdl.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/liblaser_geometry.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libtf.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /home/abdessalem/smapping/devel/lib/libvoxel_grid.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libclass_loader.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libdl.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libroslib.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/librospack.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libtf2_ros.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libactionlib.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libmessage_filters.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libroscpp.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/librosconsole.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libtf2.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/librostime.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /opt/ros/noetic/lib/libcpp_common.so
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/abdessalem/smapping/devel/lib/navfn/path_calc_test: navigation/navfn/test/CMakeFiles/path_calc_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/abdessalem/smapping/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/abdessalem/smapping/devel/lib/navfn/path_calc_test"
	cd /home/abdessalem/smapping/build/navigation/navfn/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/path_calc_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
navigation/navfn/test/CMakeFiles/path_calc_test.dir/build: /home/abdessalem/smapping/devel/lib/navfn/path_calc_test

.PHONY : navigation/navfn/test/CMakeFiles/path_calc_test.dir/build

navigation/navfn/test/CMakeFiles/path_calc_test.dir/clean:
	cd /home/abdessalem/smapping/build/navigation/navfn/test && $(CMAKE_COMMAND) -P CMakeFiles/path_calc_test.dir/cmake_clean.cmake
.PHONY : navigation/navfn/test/CMakeFiles/path_calc_test.dir/clean

navigation/navfn/test/CMakeFiles/path_calc_test.dir/depend:
	cd /home/abdessalem/smapping/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abdessalem/smapping/src /home/abdessalem/smapping/src/navigation/navfn/test /home/abdessalem/smapping/build /home/abdessalem/smapping/build/navigation/navfn/test /home/abdessalem/smapping/build/navigation/navfn/test/CMakeFiles/path_calc_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : navigation/navfn/test/CMakeFiles/path_calc_test.dir/depend

