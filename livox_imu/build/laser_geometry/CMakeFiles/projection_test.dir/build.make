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
CMAKE_SOURCE_DIR = /home/alexander/ros/livox_imu/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alexander/ros/livox_imu/build

# Include any dependencies generated for this target.
include laser_geometry/CMakeFiles/projection_test.dir/depend.make

# Include the progress variables for this target.
include laser_geometry/CMakeFiles/projection_test.dir/progress.make

# Include the compile flags for this target's objects.
include laser_geometry/CMakeFiles/projection_test.dir/flags.make

laser_geometry/CMakeFiles/projection_test.dir/test/projection_test.cpp.o: laser_geometry/CMakeFiles/projection_test.dir/flags.make
laser_geometry/CMakeFiles/projection_test.dir/test/projection_test.cpp.o: /home/alexander/ros/livox_imu/src/laser_geometry/test/projection_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alexander/ros/livox_imu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object laser_geometry/CMakeFiles/projection_test.dir/test/projection_test.cpp.o"
	cd /home/alexander/ros/livox_imu/build/laser_geometry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/projection_test.dir/test/projection_test.cpp.o -c /home/alexander/ros/livox_imu/src/laser_geometry/test/projection_test.cpp

laser_geometry/CMakeFiles/projection_test.dir/test/projection_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/projection_test.dir/test/projection_test.cpp.i"
	cd /home/alexander/ros/livox_imu/build/laser_geometry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alexander/ros/livox_imu/src/laser_geometry/test/projection_test.cpp > CMakeFiles/projection_test.dir/test/projection_test.cpp.i

laser_geometry/CMakeFiles/projection_test.dir/test/projection_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/projection_test.dir/test/projection_test.cpp.s"
	cd /home/alexander/ros/livox_imu/build/laser_geometry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alexander/ros/livox_imu/src/laser_geometry/test/projection_test.cpp -o CMakeFiles/projection_test.dir/test/projection_test.cpp.s

# Object files for target projection_test
projection_test_OBJECTS = \
"CMakeFiles/projection_test.dir/test/projection_test.cpp.o"

# External object files for target projection_test
projection_test_EXTERNAL_OBJECTS =

/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: laser_geometry/CMakeFiles/projection_test.dir/test/projection_test.cpp.o
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: laser_geometry/CMakeFiles/projection_test.dir/build.make
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: gtest/lib/libgtest.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /home/alexander/ros/livox_imu/devel/lib/liblaser_geometry.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/libtf.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/libtf2_ros.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/libactionlib.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/libmessage_filters.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/libroscpp.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/libtf2.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/librosconsole.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/librostime.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /opt/ros/noetic/lib/libcpp_common.so
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test: laser_geometry/CMakeFiles/projection_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alexander/ros/livox_imu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test"
	cd /home/alexander/ros/livox_imu/build/laser_geometry && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/projection_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
laser_geometry/CMakeFiles/projection_test.dir/build: /home/alexander/ros/livox_imu/devel/lib/laser_geometry/projection_test

.PHONY : laser_geometry/CMakeFiles/projection_test.dir/build

laser_geometry/CMakeFiles/projection_test.dir/clean:
	cd /home/alexander/ros/livox_imu/build/laser_geometry && $(CMAKE_COMMAND) -P CMakeFiles/projection_test.dir/cmake_clean.cmake
.PHONY : laser_geometry/CMakeFiles/projection_test.dir/clean

laser_geometry/CMakeFiles/projection_test.dir/depend:
	cd /home/alexander/ros/livox_imu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alexander/ros/livox_imu/src /home/alexander/ros/livox_imu/src/laser_geometry /home/alexander/ros/livox_imu/build /home/alexander/ros/livox_imu/build/laser_geometry /home/alexander/ros/livox_imu/build/laser_geometry/CMakeFiles/projection_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : laser_geometry/CMakeFiles/projection_test.dir/depend

