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
include CMakeFiles/fast-power.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/fast-power.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fast-power.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fast-power.dir/flags.make

CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.obj: CMakeFiles/fast-power.dir/flags.make
CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.obj: D:/program/cpp/cpp-luogu/high-precision/fast-power.cpp
CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.obj: CMakeFiles/fast-power.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.obj"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.obj -MF CMakeFiles\fast-power.dir\high-precision\fast-power.cpp.obj.d -o CMakeFiles\fast-power.dir\high-precision\fast-power.cpp.obj -c D:\program\cpp\cpp-luogu\high-precision\fast-power.cpp

CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.i"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\high-precision\fast-power.cpp > CMakeFiles\fast-power.dir\high-precision\fast-power.cpp.i

CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.s"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\high-precision\fast-power.cpp -o CMakeFiles\fast-power.dir\high-precision\fast-power.cpp.s

# Object files for target fast-power
fast__power_OBJECTS = \
"CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.obj"

# External object files for target fast-power
fast__power_EXTERNAL_OBJECTS =

fast-power.exe: CMakeFiles/fast-power.dir/high-precision/fast-power.cpp.obj
fast-power.exe: CMakeFiles/fast-power.dir/build.make
fast-power.exe: CMakeFiles/fast-power.dir/linklibs.rsp
fast-power.exe: CMakeFiles/fast-power.dir/objects1.rsp
fast-power.exe: CMakeFiles/fast-power.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fast-power.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\fast-power.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fast-power.dir/build: fast-power.exe
.PHONY : CMakeFiles/fast-power.dir/build

CMakeFiles/fast-power.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\fast-power.dir\cmake_clean.cmake
.PHONY : CMakeFiles/fast-power.dir/clean

CMakeFiles/fast-power.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build\CMakeFiles\fast-power.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fast-power.dir/depend

