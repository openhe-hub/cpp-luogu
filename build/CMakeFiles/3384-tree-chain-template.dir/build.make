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
include CMakeFiles/3384-tree-chain-template.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/3384-tree-chain-template.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/3384-tree-chain-template.dir/flags.make

CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.o: CMakeFiles/3384-tree-chain-template.dir/flags.make
CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.o: ../tree/chain/3384-tree-chain-template.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.o -c /workspaces/cpp-luogu/tree/chain/3384-tree-chain-template.cpp

CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cpp-luogu/tree/chain/3384-tree-chain-template.cpp > CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.i

CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cpp-luogu/tree/chain/3384-tree-chain-template.cpp -o CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.s

# Object files for target 3384-tree-chain-template
3384__tree__chain__template_OBJECTS = \
"CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.o"

# External object files for target 3384-tree-chain-template
3384__tree__chain__template_EXTERNAL_OBJECTS =

3384-tree-chain-template: CMakeFiles/3384-tree-chain-template.dir/tree/chain/3384-tree-chain-template.cpp.o
3384-tree-chain-template: CMakeFiles/3384-tree-chain-template.dir/build.make
3384-tree-chain-template: CMakeFiles/3384-tree-chain-template.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 3384-tree-chain-template"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/3384-tree-chain-template.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/3384-tree-chain-template.dir/build: 3384-tree-chain-template

.PHONY : CMakeFiles/3384-tree-chain-template.dir/build

CMakeFiles/3384-tree-chain-template.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/3384-tree-chain-template.dir/cmake_clean.cmake
.PHONY : CMakeFiles/3384-tree-chain-template.dir/clean

CMakeFiles/3384-tree-chain-template.dir/depend:
	cd /workspaces/cpp-luogu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/cpp-luogu /workspaces/cpp-luogu /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build/CMakeFiles/3384-tree-chain-template.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/3384-tree-chain-template.dir/depend

