# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/mikel/workspace/NMEA_0183

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mikel/workspace/NMEA_0183/build

# Include any dependencies generated for this target.
include CMakeFiles/NMEA_0183.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NMEA_0183.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NMEA_0183.dir/flags.make

CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o: CMakeFiles/NMEA_0183.dir/flags.make
CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o: ../unit_test_NMEA_0183.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mikel/workspace/NMEA_0183/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o -c /home/mikel/workspace/NMEA_0183/unit_test_NMEA_0183.cpp

CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mikel/workspace/NMEA_0183/unit_test_NMEA_0183.cpp > CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.i

CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mikel/workspace/NMEA_0183/unit_test_NMEA_0183.cpp -o CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.s

CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o.requires:

.PHONY : CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o.requires

CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o.provides: CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o.requires
	$(MAKE) -f CMakeFiles/NMEA_0183.dir/build.make CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o.provides.build
.PHONY : CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o.provides

CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o.provides.build: CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o


# Object files for target NMEA_0183
NMEA_0183_OBJECTS = \
"CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o"

# External object files for target NMEA_0183
NMEA_0183_EXTERNAL_OBJECTS =

NMEA_0183: CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o
NMEA_0183: CMakeFiles/NMEA_0183.dir/build.make
NMEA_0183: ../lib_x64/googlemock/gtest/libgtest.a
NMEA_0183: CMakeFiles/NMEA_0183.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mikel/workspace/NMEA_0183/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable NMEA_0183"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NMEA_0183.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NMEA_0183.dir/build: NMEA_0183

.PHONY : CMakeFiles/NMEA_0183.dir/build

CMakeFiles/NMEA_0183.dir/requires: CMakeFiles/NMEA_0183.dir/unit_test_NMEA_0183.cpp.o.requires

.PHONY : CMakeFiles/NMEA_0183.dir/requires

CMakeFiles/NMEA_0183.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NMEA_0183.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NMEA_0183.dir/clean

CMakeFiles/NMEA_0183.dir/depend:
	cd /home/mikel/workspace/NMEA_0183/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mikel/workspace/NMEA_0183 /home/mikel/workspace/NMEA_0183 /home/mikel/workspace/NMEA_0183/build /home/mikel/workspace/NMEA_0183/build /home/mikel/workspace/NMEA_0183/build/CMakeFiles/NMEA_0183.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NMEA_0183.dir/depend

