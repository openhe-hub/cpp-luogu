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
include CMakeFiles/4776-dijkstra.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/4776-dijkstra.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/4776-dijkstra.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/4776-dijkstra.dir/flags.make

CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.obj: CMakeFiles/4776-dijkstra.dir/flags.make
CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.obj: ../graph/4776-dijkstra.cpp
CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.obj: CMakeFiles/4776-dijkstra.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.obj"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.obj -MF CMakeFiles\4776-dijkstra.dir\graph\4776-dijkstra.cpp.obj.d -o CMakeFiles\4776-dijkstra.dir\graph\4776-dijkstra.cpp.obj -c D:\program\cpp\cpp-luogu\graph\4776-dijkstra.cpp

CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.i"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\graph\4776-dijkstra.cpp > CMakeFiles\4776-dijkstra.dir\graph\4776-dijkstra.cpp.i

CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.s"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\graph\4776-dijkstra.cpp -o CMakeFiles\4776-dijkstra.dir\graph\4776-dijkstra.cpp.s

# Object files for target 4776-dijkstra
4776__dijkstra_OBJECTS = \
"CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.obj"

# External object files for target 4776-dijkstra
4776__dijkstra_EXTERNAL_OBJECTS =

4776-dijkstra.exe: CMakeFiles/4776-dijkstra.dir/graph/4776-dijkstra.cpp.obj
4776-dijkstra.exe: CMakeFiles/4776-dijkstra.dir/build.make
4776-dijkstra.exe: CMakeFiles/4776-dijkstra.dir/linklibs.rsp
4776-dijkstra.exe: CMakeFiles/4776-dijkstra.dir/objects1.rsp
4776-dijkstra.exe: CMakeFiles/4776-dijkstra.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 4776-dijkstra.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\4776-dijkstra.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/4776-dijkstra.dir/build: 4776-dijkstra.exe
.PHONY : CMakeFiles/4776-dijkstra.dir/build

CMakeFiles/4776-dijkstra.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\4776-dijkstra.dir\cmake_clean.cmake
.PHONY : CMakeFiles/4776-dijkstra.dir/clean

CMakeFiles/4776-dijkstra.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\cmake-build-debug D:\program\cpp\cpp-luogu\cmake-build-debug D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles\4776-dijkstra.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/4776-dijkstra.dir/depend

