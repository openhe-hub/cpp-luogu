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
include CMakeFiles/bellman-ford.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/bellman-ford.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bellman-ford.dir/flags.make

CMakeFiles/bellman-ford.dir/graph/template/bellman-ford.cpp.obj: CMakeFiles/bellman-ford.dir/flags.make
CMakeFiles/bellman-ford.dir/graph/template/bellman-ford.cpp.obj: ../graph/template/bellman-ford.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bellman-ford.dir/graph/template/bellman-ford.cpp.obj"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\bellman-ford.dir\graph\template\bellman-ford.cpp.obj -c "D:\cpp project\luogu\graph\template\bellman-ford.cpp"

CMakeFiles/bellman-ford.dir/graph/template/bellman-ford.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bellman-ford.dir/graph/template/bellman-ford.cpp.i"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\cpp project\luogu\graph\template\bellman-ford.cpp" > CMakeFiles\bellman-ford.dir\graph\template\bellman-ford.cpp.i

CMakeFiles/bellman-ford.dir/graph/template/bellman-ford.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bellman-ford.dir/graph/template/bellman-ford.cpp.s"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\cpp project\luogu\graph\template\bellman-ford.cpp" -o CMakeFiles\bellman-ford.dir\graph\template\bellman-ford.cpp.s

# Object files for target bellman-ford
bellman__ford_OBJECTS = \
"CMakeFiles/bellman-ford.dir/graph/template/bellman-ford.cpp.obj"

# External object files for target bellman-ford
bellman__ford_EXTERNAL_OBJECTS =

bellman-ford.exe: CMakeFiles/bellman-ford.dir/graph/template/bellman-ford.cpp.obj
bellman-ford.exe: CMakeFiles/bellman-ford.dir/build.make
bellman-ford.exe: CMakeFiles/bellman-ford.dir/linklibs.rsp
bellman-ford.exe: CMakeFiles/bellman-ford.dir/objects1.rsp
bellman-ford.exe: CMakeFiles/bellman-ford.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bellman-ford.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\bellman-ford.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bellman-ford.dir/build: bellman-ford.exe
.PHONY : CMakeFiles/bellman-ford.dir/build

CMakeFiles/bellman-ford.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\bellman-ford.dir\cmake_clean.cmake
.PHONY : CMakeFiles/bellman-ford.dir/clean

CMakeFiles/bellman-ford.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\cpp project\luogu" "D:\cpp project\luogu" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug\CMakeFiles\bellman-ford.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/bellman-ford.dir/depend
