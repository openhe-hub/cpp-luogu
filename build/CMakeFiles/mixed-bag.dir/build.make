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
include CMakeFiles/mixed-bag.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mixed-bag.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mixed-bag.dir/flags.make

CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.o: CMakeFiles/mixed-bag.dir/flags.make
CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.o: ../dp/bag/template/mixed-bag.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.o -c /workspaces/cpp-luogu/dp/bag/template/mixed-bag.cpp

CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cpp-luogu/dp/bag/template/mixed-bag.cpp > CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.i

CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cpp-luogu/dp/bag/template/mixed-bag.cpp -o CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.s

# Object files for target mixed-bag
mixed__bag_OBJECTS = \
"CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.o"

# External object files for target mixed-bag
mixed__bag_EXTERNAL_OBJECTS =

mixed-bag: CMakeFiles/mixed-bag.dir/dp/bag/template/mixed-bag.cpp.o
mixed-bag: CMakeFiles/mixed-bag.dir/build.make
mixed-bag: CMakeFiles/mixed-bag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mixed-bag"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mixed-bag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mixed-bag.dir/build: mixed-bag

.PHONY : CMakeFiles/mixed-bag.dir/build

CMakeFiles/mixed-bag.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mixed-bag.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mixed-bag.dir/clean

CMakeFiles/mixed-bag.dir/depend:
	cd /workspaces/cpp-luogu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/cpp-luogu /workspaces/cpp-luogu /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build/CMakeFiles/mixed-bag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mixed-bag.dir/depend

