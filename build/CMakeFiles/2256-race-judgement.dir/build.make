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
include CMakeFiles/2256-race-judgement.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/2256-race-judgement.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/2256-race-judgement.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2256-race-judgement.dir/flags.make

CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.obj: CMakeFiles/2256-race-judgement.dir/flags.make
CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.obj: D:/program/cpp/cpp-luogu/union-find/2256-race-judgement.cpp
CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.obj: CMakeFiles/2256-race-judgement.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.obj"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.obj -MF CMakeFiles\2256-race-judgement.dir\union-find\2256-race-judgement.cpp.obj.d -o CMakeFiles\2256-race-judgement.dir\union-find\2256-race-judgement.cpp.obj -c D:\program\cpp\cpp-luogu\union-find\2256-race-judgement.cpp

CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.i"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\union-find\2256-race-judgement.cpp > CMakeFiles\2256-race-judgement.dir\union-find\2256-race-judgement.cpp.i

CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.s"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\union-find\2256-race-judgement.cpp -o CMakeFiles\2256-race-judgement.dir\union-find\2256-race-judgement.cpp.s

# Object files for target 2256-race-judgement
2256__race__judgement_OBJECTS = \
"CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.obj"

# External object files for target 2256-race-judgement
2256__race__judgement_EXTERNAL_OBJECTS =

2256-race-judgement.exe: CMakeFiles/2256-race-judgement.dir/union-find/2256-race-judgement.cpp.obj
2256-race-judgement.exe: CMakeFiles/2256-race-judgement.dir/build.make
2256-race-judgement.exe: CMakeFiles/2256-race-judgement.dir/linklibs.rsp
2256-race-judgement.exe: CMakeFiles/2256-race-judgement.dir/objects1.rsp
2256-race-judgement.exe: CMakeFiles/2256-race-judgement.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 2256-race-judgement.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\2256-race-judgement.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2256-race-judgement.dir/build: 2256-race-judgement.exe
.PHONY : CMakeFiles/2256-race-judgement.dir/build

CMakeFiles/2256-race-judgement.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\2256-race-judgement.dir\cmake_clean.cmake
.PHONY : CMakeFiles/2256-race-judgement.dir/clean

CMakeFiles/2256-race-judgement.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build\CMakeFiles\2256-race-judgement.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2256-race-judgement.dir/depend

