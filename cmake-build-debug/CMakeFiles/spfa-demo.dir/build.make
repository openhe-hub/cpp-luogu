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
include CMakeFiles/spfa-demo.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/spfa-demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/spfa-demo.dir/flags.make

CMakeFiles/spfa-demo.dir/graph/template/spfa-demo.cpp.obj: CMakeFiles/spfa-demo.dir/flags.make
CMakeFiles/spfa-demo.dir/graph/template/spfa-demo.cpp.obj: ../graph/template/spfa-demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/spfa-demo.dir/graph/template/spfa-demo.cpp.obj"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\spfa-demo.dir\graph\template\spfa-demo.cpp.obj -c "D:\cpp project\luogu\graph\template\spfa-demo.cpp"

CMakeFiles/spfa-demo.dir/graph/template/spfa-demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spfa-demo.dir/graph/template/spfa-demo.cpp.i"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\cpp project\luogu\graph\template\spfa-demo.cpp" > CMakeFiles\spfa-demo.dir\graph\template\spfa-demo.cpp.i

CMakeFiles/spfa-demo.dir/graph/template/spfa-demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spfa-demo.dir/graph/template/spfa-demo.cpp.s"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\cpp project\luogu\graph\template\spfa-demo.cpp" -o CMakeFiles\spfa-demo.dir\graph\template\spfa-demo.cpp.s

# Object files for target spfa-demo
spfa__demo_OBJECTS = \
"CMakeFiles/spfa-demo.dir/graph/template/spfa-demo.cpp.obj"

# External object files for target spfa-demo
spfa__demo_EXTERNAL_OBJECTS =

spfa-demo.exe: CMakeFiles/spfa-demo.dir/graph/template/spfa-demo.cpp.obj
spfa-demo.exe: CMakeFiles/spfa-demo.dir/build.make
spfa-demo.exe: CMakeFiles/spfa-demo.dir/linklibs.rsp
spfa-demo.exe: CMakeFiles/spfa-demo.dir/objects1.rsp
spfa-demo.exe: CMakeFiles/spfa-demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable spfa-demo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\spfa-demo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/spfa-demo.dir/build: spfa-demo.exe
.PHONY : CMakeFiles/spfa-demo.dir/build

CMakeFiles/spfa-demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\spfa-demo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/spfa-demo.dir/clean

CMakeFiles/spfa-demo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\cpp project\luogu" "D:\cpp project\luogu" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug\CMakeFiles\spfa-demo.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/spfa-demo.dir/depend
