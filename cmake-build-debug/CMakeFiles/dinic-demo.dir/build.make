# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\program\cpp\cpp-luogu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\program\cpp\cpp-luogu\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/dinic-demo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dinic-demo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dinic-demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dinic-demo.dir/flags.make

CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.obj: CMakeFiles/dinic-demo.dir/flags.make
CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.obj: ../graph/net-flow/dinic-demo.cpp
CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.obj: CMakeFiles/dinic-demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.obj"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.obj -MF CMakeFiles\dinic-demo.dir\graph\net-flow\dinic-demo.cpp.obj.d -o CMakeFiles\dinic-demo.dir\graph\net-flow\dinic-demo.cpp.obj -c D:\program\cpp\cpp-luogu\graph\net-flow\dinic-demo.cpp

CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.i"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\graph\net-flow\dinic-demo.cpp > CMakeFiles\dinic-demo.dir\graph\net-flow\dinic-demo.cpp.i

CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.s"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\graph\net-flow\dinic-demo.cpp -o CMakeFiles\dinic-demo.dir\graph\net-flow\dinic-demo.cpp.s

# Object files for target dinic-demo
dinic__demo_OBJECTS = \
"CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.obj"

# External object files for target dinic-demo
dinic__demo_EXTERNAL_OBJECTS =

dinic-demo.exe: CMakeFiles/dinic-demo.dir/graph/net-flow/dinic-demo.cpp.obj
dinic-demo.exe: CMakeFiles/dinic-demo.dir/build.make
dinic-demo.exe: CMakeFiles/dinic-demo.dir/linklibs.rsp
dinic-demo.exe: CMakeFiles/dinic-demo.dir/objects1.rsp
dinic-demo.exe: CMakeFiles/dinic-demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dinic-demo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\dinic-demo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dinic-demo.dir/build: dinic-demo.exe
.PHONY : CMakeFiles/dinic-demo.dir/build

CMakeFiles/dinic-demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\dinic-demo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/dinic-demo.dir/clean

CMakeFiles/dinic-demo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\cmake-build-debug D:\program\cpp\cpp-luogu\cmake-build-debug D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles\dinic-demo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dinic-demo.dir/depend

