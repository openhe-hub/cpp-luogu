# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\software\cmake\bin\cmake.exe

# The command to remove a file.
RM = D:\software\cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\program\cpp\cpp-luogu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\program\cpp\cpp-luogu\build

# Include any dependencies generated for this target.
include CMakeFiles/weight_segment_tree_demo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/weight_segment_tree_demo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/weight_segment_tree_demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/weight_segment_tree_demo.dir/flags.make

CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.obj: CMakeFiles/weight_segment_tree_demo.dir/flags.make
CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.obj: D:/program/cpp/cpp-luogu/segment-tree/weight_segment_tree_demo.cpp
CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.obj: CMakeFiles/weight_segment_tree_demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.obj"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.obj -MF CMakeFiles\weight_segment_tree_demo.dir\segment-tree\weight_segment_tree_demo.cpp.obj.d -o CMakeFiles\weight_segment_tree_demo.dir\segment-tree\weight_segment_tree_demo.cpp.obj -c D:\program\cpp\cpp-luogu\segment-tree\weight_segment_tree_demo.cpp

CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.i"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\segment-tree\weight_segment_tree_demo.cpp > CMakeFiles\weight_segment_tree_demo.dir\segment-tree\weight_segment_tree_demo.cpp.i

CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.s"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\segment-tree\weight_segment_tree_demo.cpp -o CMakeFiles\weight_segment_tree_demo.dir\segment-tree\weight_segment_tree_demo.cpp.s

# Object files for target weight_segment_tree_demo
weight_segment_tree_demo_OBJECTS = \
"CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.obj"

# External object files for target weight_segment_tree_demo
weight_segment_tree_demo_EXTERNAL_OBJECTS =

weight_segment_tree_demo.exe: CMakeFiles/weight_segment_tree_demo.dir/segment-tree/weight_segment_tree_demo.cpp.obj
weight_segment_tree_demo.exe: CMakeFiles/weight_segment_tree_demo.dir/build.make
weight_segment_tree_demo.exe: CMakeFiles/weight_segment_tree_demo.dir/linklibs.rsp
weight_segment_tree_demo.exe: CMakeFiles/weight_segment_tree_demo.dir/objects1.rsp
weight_segment_tree_demo.exe: CMakeFiles/weight_segment_tree_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable weight_segment_tree_demo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\weight_segment_tree_demo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/weight_segment_tree_demo.dir/build: weight_segment_tree_demo.exe
.PHONY : CMakeFiles/weight_segment_tree_demo.dir/build

CMakeFiles/weight_segment_tree_demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\weight_segment_tree_demo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/weight_segment_tree_demo.dir/clean

CMakeFiles/weight_segment_tree_demo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build\CMakeFiles\weight_segment_tree_demo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/weight_segment_tree_demo.dir/depend

