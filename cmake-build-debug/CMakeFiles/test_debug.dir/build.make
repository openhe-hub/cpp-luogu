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
include CMakeFiles/test_debug.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/test_debug.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_debug.dir/flags.make

CMakeFiles/test_debug.dir/test/test_debug.cpp.obj: CMakeFiles/test_debug.dir/flags.make
CMakeFiles/test_debug.dir/test/test_debug.cpp.obj: ../test/test_debug.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_debug.dir/test/test_debug.cpp.obj"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\test_debug.dir\test\test_debug.cpp.obj -c "D:\cpp project\luogu\test\test_debug.cpp"

CMakeFiles/test_debug.dir/test/test_debug.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_debug.dir/test/test_debug.cpp.i"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\cpp project\luogu\test\test_debug.cpp" > CMakeFiles\test_debug.dir\test\test_debug.cpp.i

CMakeFiles/test_debug.dir/test/test_debug.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_debug.dir/test/test_debug.cpp.s"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\cpp project\luogu\test\test_debug.cpp" -o CMakeFiles\test_debug.dir\test\test_debug.cpp.s

# Object files for target test_debug
test_debug_OBJECTS = \
"CMakeFiles/test_debug.dir/test/test_debug.cpp.obj"

# External object files for target test_debug
test_debug_EXTERNAL_OBJECTS =

test_debug.exe: CMakeFiles/test_debug.dir/test/test_debug.cpp.obj
test_debug.exe: CMakeFiles/test_debug.dir/build.make
test_debug.exe: CMakeFiles/test_debug.dir/linklibs.rsp
test_debug.exe: CMakeFiles/test_debug.dir/objects1.rsp
test_debug.exe: CMakeFiles/test_debug.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_debug.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\test_debug.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_debug.dir/build: test_debug.exe
.PHONY : CMakeFiles/test_debug.dir/build

CMakeFiles/test_debug.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\test_debug.dir\cmake_clean.cmake
.PHONY : CMakeFiles/test_debug.dir/clean

CMakeFiles/test_debug.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\cpp project\luogu" "D:\cpp project\luogu" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug\CMakeFiles\test_debug.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/test_debug.dir/depend

