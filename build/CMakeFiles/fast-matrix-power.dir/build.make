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
CMAKE_SOURCE_DIR = /workspaces/cpp-luogu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/cpp-luogu/build

# Include any dependencies generated for this target.
include CMakeFiles/fast-matrix-power.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fast-matrix-power.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fast-matrix-power.dir/flags.make

CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.o: CMakeFiles/fast-matrix-power.dir/flags.make
CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.o: ../high-precision/fast-matrix-power.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.o -c /workspaces/cpp-luogu/high-precision/fast-matrix-power.cpp

CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cpp-luogu/high-precision/fast-matrix-power.cpp > CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.i

CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cpp-luogu/high-precision/fast-matrix-power.cpp -o CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.s

# Object files for target fast-matrix-power
fast__matrix__power_OBJECTS = \
"CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.o"

# External object files for target fast-matrix-power
fast__matrix__power_EXTERNAL_OBJECTS =

fast-matrix-power: CMakeFiles/fast-matrix-power.dir/high-precision/fast-matrix-power.cpp.o
fast-matrix-power: CMakeFiles/fast-matrix-power.dir/build.make
fast-matrix-power: CMakeFiles/fast-matrix-power.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fast-matrix-power"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fast-matrix-power.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fast-matrix-power.dir/build: fast-matrix-power

.PHONY : CMakeFiles/fast-matrix-power.dir/build

CMakeFiles/fast-matrix-power.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fast-matrix-power.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fast-matrix-power.dir/clean

CMakeFiles/fast-matrix-power.dir/depend:
	cd /workspaces/cpp-luogu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/cpp-luogu /workspaces/cpp-luogu /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build/CMakeFiles/fast-matrix-power.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fast-matrix-power.dir/depend

