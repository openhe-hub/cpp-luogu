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
include CMakeFiles/test_input.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_input.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_input.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_input.dir/flags.make

CMakeFiles/test_input.dir/test/test_input.cpp.obj: CMakeFiles/test_input.dir/flags.make
CMakeFiles/test_input.dir/test/test_input.cpp.obj: D:/program/cpp/cpp-luogu/test/test_input.cpp
CMakeFiles/test_input.dir/test/test_input.cpp.obj: CMakeFiles/test_input.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_input.dir/test/test_input.cpp.obj"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_input.dir/test/test_input.cpp.obj -MF CMakeFiles\test_input.dir\test\test_input.cpp.obj.d -o CMakeFiles\test_input.dir\test\test_input.cpp.obj -c D:\program\cpp\cpp-luogu\test\test_input.cpp

CMakeFiles/test_input.dir/test/test_input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_input.dir/test/test_input.cpp.i"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\test\test_input.cpp > CMakeFiles\test_input.dir\test\test_input.cpp.i

CMakeFiles/test_input.dir/test/test_input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_input.dir/test/test_input.cpp.s"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\test\test_input.cpp -o CMakeFiles\test_input.dir\test\test_input.cpp.s

# Object files for target test_input
test_input_OBJECTS = \
"CMakeFiles/test_input.dir/test/test_input.cpp.obj"

# External object files for target test_input
test_input_EXTERNAL_OBJECTS =

test_input.exe: CMakeFiles/test_input.dir/test/test_input.cpp.obj
test_input.exe: CMakeFiles/test_input.dir/build.make
test_input.exe: CMakeFiles/test_input.dir/linklibs.rsp
test_input.exe: CMakeFiles/test_input.dir/objects1.rsp
test_input.exe: CMakeFiles/test_input.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_input.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\test_input.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_input.dir/build: test_input.exe
.PHONY : CMakeFiles/test_input.dir/build

CMakeFiles/test_input.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\test_input.dir\cmake_clean.cmake
.PHONY : CMakeFiles/test_input.dir/clean

CMakeFiles/test_input.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build\CMakeFiles\test_input.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_input.dir/depend
