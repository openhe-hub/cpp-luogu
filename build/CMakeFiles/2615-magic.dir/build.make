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
include CMakeFiles/2615-magic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/2615-magic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2615-magic.dir/flags.make

CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.o: CMakeFiles/2615-magic.dir/flags.make
CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.o: ../simulation/2615-magic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.o -c /workspaces/cpp-luogu/simulation/2615-magic.cpp

CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cpp-luogu/simulation/2615-magic.cpp > CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.i

CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cpp-luogu/simulation/2615-magic.cpp -o CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.s

# Object files for target 2615-magic
2615__magic_OBJECTS = \
"CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.o"

# External object files for target 2615-magic
2615__magic_EXTERNAL_OBJECTS =

2615-magic: CMakeFiles/2615-magic.dir/simulation/2615-magic.cpp.o
2615-magic: CMakeFiles/2615-magic.dir/build.make
2615-magic: CMakeFiles/2615-magic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 2615-magic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/2615-magic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2615-magic.dir/build: 2615-magic

.PHONY : CMakeFiles/2615-magic.dir/build

CMakeFiles/2615-magic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/2615-magic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/2615-magic.dir/clean

CMakeFiles/2615-magic.dir/depend:
	cd /workspaces/cpp-luogu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/cpp-luogu /workspaces/cpp-luogu /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build/CMakeFiles/2615-magic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2615-magic.dir/depend

