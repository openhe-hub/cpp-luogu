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
include CMakeFiles/2021_test.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/2021_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2021_test.dir/flags.make

CMakeFiles/2021_test.dir/test/2021_test.cpp.obj: CMakeFiles/2021_test.dir/flags.make
CMakeFiles/2021_test.dir/test/2021_test.cpp.obj: ../test/2021_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2021_test.dir/test/2021_test.cpp.obj"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\2021_test.dir\test\2021_test.cpp.obj -c "D:\cpp project\luogu\test\2021_test.cpp"

CMakeFiles/2021_test.dir/test/2021_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2021_test.dir/test/2021_test.cpp.i"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\cpp project\luogu\test\2021_test.cpp" > CMakeFiles\2021_test.dir\test\2021_test.cpp.i

CMakeFiles/2021_test.dir/test/2021_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2021_test.dir/test/2021_test.cpp.s"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\cpp project\luogu\test\2021_test.cpp" -o CMakeFiles\2021_test.dir\test\2021_test.cpp.s

# Object files for target 2021_test
2021_test_OBJECTS = \
"CMakeFiles/2021_test.dir/test/2021_test.cpp.obj"

# External object files for target 2021_test
2021_test_EXTERNAL_OBJECTS =

2021_test.exe: CMakeFiles/2021_test.dir/test/2021_test.cpp.obj
2021_test.exe: CMakeFiles/2021_test.dir/build.make
2021_test.exe: CMakeFiles/2021_test.dir/linklibs.rsp
2021_test.exe: CMakeFiles/2021_test.dir/objects1.rsp
2021_test.exe: CMakeFiles/2021_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 2021_test.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\2021_test.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2021_test.dir/build: 2021_test.exe
.PHONY : CMakeFiles/2021_test.dir/build

CMakeFiles/2021_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\2021_test.dir\cmake_clean.cmake
.PHONY : CMakeFiles/2021_test.dir/clean

CMakeFiles/2021_test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\cpp project\luogu" "D:\cpp project\luogu" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug\CMakeFiles\2021_test.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/2021_test.dir/depend

