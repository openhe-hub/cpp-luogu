# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = D:\software\apps\CLion\ch-0\212.5284.51\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\software\apps\CLion\ch-0\212.5284.51\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\cpp project\luogu"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\cpp project\luogu\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/segment_tree_demo2.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/segment_tree_demo2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/segment_tree_demo2.dir/flags.make

CMakeFiles/segment_tree_demo2.dir/segment-tree/segment_tree_demo2.cpp.obj: CMakeFiles/segment_tree_demo2.dir/flags.make
CMakeFiles/segment_tree_demo2.dir/segment-tree/segment_tree_demo2.cpp.obj: ../segment-tree/segment_tree_demo2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/segment_tree_demo2.dir/segment-tree/segment_tree_demo2.cpp.obj"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\segment_tree_demo2.dir\segment-tree\segment_tree_demo2.cpp.obj -c "D:\cpp project\luogu\segment-tree\segment_tree_demo2.cpp"

CMakeFiles/segment_tree_demo2.dir/segment-tree/segment_tree_demo2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/segment_tree_demo2.dir/segment-tree/segment_tree_demo2.cpp.i"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\cpp project\luogu\segment-tree\segment_tree_demo2.cpp" > CMakeFiles\segment_tree_demo2.dir\segment-tree\segment_tree_demo2.cpp.i

CMakeFiles/segment_tree_demo2.dir/segment-tree/segment_tree_demo2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/segment_tree_demo2.dir/segment-tree/segment_tree_demo2.cpp.s"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\cpp project\luogu\segment-tree\segment_tree_demo2.cpp" -o CMakeFiles\segment_tree_demo2.dir\segment-tree\segment_tree_demo2.cpp.s

# Object files for target segment_tree_demo2
segment_tree_demo2_OBJECTS = \
"CMakeFiles/segment_tree_demo2.dir/segment-tree/segment_tree_demo2.cpp.obj"

# External object files for target segment_tree_demo2
segment_tree_demo2_EXTERNAL_OBJECTS =

segment_tree_demo2.exe: CMakeFiles/segment_tree_demo2.dir/segment-tree/segment_tree_demo2.cpp.obj
segment_tree_demo2.exe: CMakeFiles/segment_tree_demo2.dir/build.make
segment_tree_demo2.exe: CMakeFiles/segment_tree_demo2.dir/linklibs.rsp
segment_tree_demo2.exe: CMakeFiles/segment_tree_demo2.dir/objects1.rsp
segment_tree_demo2.exe: CMakeFiles/segment_tree_demo2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable segment_tree_demo2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\segment_tree_demo2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/segment_tree_demo2.dir/build: segment_tree_demo2.exe
.PHONY : CMakeFiles/segment_tree_demo2.dir/build

CMakeFiles/segment_tree_demo2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\segment_tree_demo2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/segment_tree_demo2.dir/clean

CMakeFiles/segment_tree_demo2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\cpp project\luogu" "D:\cpp project\luogu" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug\CMakeFiles\segment_tree_demo2.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/segment_tree_demo2.dir/depend

