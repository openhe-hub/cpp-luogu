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
include CMakeFiles/tree-diameter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tree-diameter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tree-diameter.dir/flags.make

CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.o: CMakeFiles/tree-diameter.dir/flags.make
CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.o: ../tree/tree-diameter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.o -c /workspaces/cpp-luogu/tree/tree-diameter.cpp

CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cpp-luogu/tree/tree-diameter.cpp > CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.i

CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cpp-luogu/tree/tree-diameter.cpp -o CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.s

# Object files for target tree-diameter
tree__diameter_OBJECTS = \
"CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.o"

# External object files for target tree-diameter
tree__diameter_EXTERNAL_OBJECTS =

tree-diameter: CMakeFiles/tree-diameter.dir/tree/tree-diameter.cpp.o
tree-diameter: CMakeFiles/tree-diameter.dir/build.make
tree-diameter: CMakeFiles/tree-diameter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tree-diameter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tree-diameter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tree-diameter.dir/build: tree-diameter

.PHONY : CMakeFiles/tree-diameter.dir/build

CMakeFiles/tree-diameter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tree-diameter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tree-diameter.dir/clean

CMakeFiles/tree-diameter.dir/depend:
	cd /workspaces/cpp-luogu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/cpp-luogu /workspaces/cpp-luogu /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build/CMakeFiles/tree-diameter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tree-diameter.dir/depend

