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
include CMakeFiles/dinic-demo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dinic-demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dinic-demo.dir/flags.make

CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.o: CMakeFiles/dinic-demo.dir/flags.make
CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.o: ../graph/net-flow/dinic-demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.o -c /workspaces/cpp-luogu/graph/net-flow/dinic-demo.cpp

CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cpp-luogu/graph/net-flow/dinic-demo.cpp > CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.i

CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cpp-luogu/graph/net-flow/dinic-demo.cpp -o CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.s

# Object files for target dinic-demo
dinic__demo_OBJECTS = \
"CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.o"

# External object files for target dinic-demo
dinic__demo_EXTERNAL_OBJECTS =

dinic-demo: CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.o
dinic-demo: CMakeFiles/dinic-demo.dir/build.make
dinic-demo: CMakeFiles/dinic-demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dinic-demo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dinic-demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dinic-demo.dir/build: dinic-demo

.PHONY : CMakeFiles/dinic-demo.dir/build

CMakeFiles/dinic-demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dinic-demo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dinic-demo.dir/clean

CMakeFiles/dinic-demo.dir/depend:
	cd /workspaces/cpp-luogu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/cpp-luogu /workspaces/cpp-luogu /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build/CMakeFiles/dinic-demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dinic-demo.dir/depend

