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
include CMakeFiles/kruskal.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kruskal.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kruskal.dir/flags.make

CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.o: CMakeFiles/kruskal.dir/flags.make
CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.o: ../graph/template/kruskal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.o -c /workspaces/cpp-luogu/graph/template/kruskal.cpp

CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cpp-luogu/graph/template/kruskal.cpp > CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.i

CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cpp-luogu/graph/template/kruskal.cpp -o CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.s

# Object files for target kruskal
kruskal_OBJECTS = \
"CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.o"

# External object files for target kruskal
kruskal_EXTERNAL_OBJECTS =

kruskal: CMakeFiles/kruskal.dir/graph/template/kruskal.cpp.o
kruskal: CMakeFiles/kruskal.dir/build.make
kruskal: CMakeFiles/kruskal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable kruskal"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kruskal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kruskal.dir/build: kruskal

.PHONY : CMakeFiles/kruskal.dir/build

CMakeFiles/kruskal.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kruskal.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kruskal.dir/clean

CMakeFiles/kruskal.dir/depend:
	cd /workspaces/cpp-luogu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/cpp-luogu /workspaces/cpp-luogu /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build/CMakeFiles/kruskal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kruskal.dir/depend

