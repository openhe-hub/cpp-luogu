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
include CMakeFiles/segment_tree_demo1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/segment_tree_demo1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/segment_tree_demo1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/segment_tree_demo1.dir/flags.make

CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.obj: CMakeFiles/segment_tree_demo1.dir/flags.make
CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.obj: D:/program/cpp/cpp-luogu/segment-tree/segment_tree_demo1.cpp
CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.obj: CMakeFiles/segment_tree_demo1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.obj"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.obj -MF CMakeFiles\segment_tree_demo1.dir\segment-tree\segment_tree_demo1.cpp.obj.d -o CMakeFiles\segment_tree_demo1.dir\segment-tree\segment_tree_demo1.cpp.obj -c D:\program\cpp\cpp-luogu\segment-tree\segment_tree_demo1.cpp

CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.i"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\segment-tree\segment_tree_demo1.cpp > CMakeFiles\segment_tree_demo1.dir\segment-tree\segment_tree_demo1.cpp.i

CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.s"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\segment-tree\segment_tree_demo1.cpp -o CMakeFiles\segment_tree_demo1.dir\segment-tree\segment_tree_demo1.cpp.s

# Object files for target segment_tree_demo1
segment_tree_demo1_OBJECTS = \
"CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.obj"

# External object files for target segment_tree_demo1
segment_tree_demo1_EXTERNAL_OBJECTS =

segment_tree_demo1.exe: CMakeFiles/segment_tree_demo1.dir/segment-tree/segment_tree_demo1.cpp.obj
segment_tree_demo1.exe: CMakeFiles/segment_tree_demo1.dir/build.make
segment_tree_demo1.exe: CMakeFiles/segment_tree_demo1.dir/linklibs.rsp
segment_tree_demo1.exe: CMakeFiles/segment_tree_demo1.dir/objects1.rsp
segment_tree_demo1.exe: CMakeFiles/segment_tree_demo1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable segment_tree_demo1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\segment_tree_demo1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/segment_tree_demo1.dir/build: segment_tree_demo1.exe
.PHONY : CMakeFiles/segment_tree_demo1.dir/build

CMakeFiles/segment_tree_demo1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\segment_tree_demo1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/segment_tree_demo1.dir/clean

CMakeFiles/segment_tree_demo1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build\CMakeFiles\segment_tree_demo1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/segment_tree_demo1.dir/depend
