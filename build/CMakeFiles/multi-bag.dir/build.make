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
include CMakeFiles/multi-bag.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/multi-bag.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/multi-bag.dir/flags.make

CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.o: CMakeFiles/multi-bag.dir/flags.make
CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.o: ../dp/bag/template/multi-bag.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.o -c /workspaces/cpp-luogu/dp/bag/template/multi-bag.cpp

CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cpp-luogu/dp/bag/template/multi-bag.cpp > CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.i

CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cpp-luogu/dp/bag/template/multi-bag.cpp -o CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.s

# Object files for target multi-bag
multi__bag_OBJECTS = \
"CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.o"

# External object files for target multi-bag
multi__bag_EXTERNAL_OBJECTS =

multi-bag: CMakeFiles/multi-bag.dir/dp/bag/template/multi-bag.cpp.o
multi-bag: CMakeFiles/multi-bag.dir/build.make
multi-bag: CMakeFiles/multi-bag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable multi-bag"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multi-bag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/multi-bag.dir/build: multi-bag

.PHONY : CMakeFiles/multi-bag.dir/build

CMakeFiles/multi-bag.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/multi-bag.dir/cmake_clean.cmake
.PHONY : CMakeFiles/multi-bag.dir/clean

CMakeFiles/multi-bag.dir/depend:
	cd /workspaces/cpp-luogu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/cpp-luogu /workspaces/cpp-luogu /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build/CMakeFiles/multi-bag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/multi-bag.dir/depend

