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
include CMakeFiles/1020-missile-intercept.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/1020-missile-intercept.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/1020-missile-intercept.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1020-missile-intercept.dir/flags.make

CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.obj: CMakeFiles/1020-missile-intercept.dir/flags.make
CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.obj: D:/program/cpp/cpp-luogu/dp/1020-missile-intercept.cpp
CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.obj: CMakeFiles/1020-missile-intercept.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.obj"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.obj -MF CMakeFiles\1020-missile-intercept.dir\dp\1020-missile-intercept.cpp.obj.d -o CMakeFiles\1020-missile-intercept.dir\dp\1020-missile-intercept.cpp.obj -c D:\program\cpp\cpp-luogu\dp\1020-missile-intercept.cpp

CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.i"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\dp\1020-missile-intercept.cpp > CMakeFiles\1020-missile-intercept.dir\dp\1020-missile-intercept.cpp.i

CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.s"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\dp\1020-missile-intercept.cpp -o CMakeFiles\1020-missile-intercept.dir\dp\1020-missile-intercept.cpp.s

# Object files for target 1020-missile-intercept
1020__missile__intercept_OBJECTS = \
"CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.obj"

# External object files for target 1020-missile-intercept
1020__missile__intercept_EXTERNAL_OBJECTS =

1020-missile-intercept.exe: CMakeFiles/1020-missile-intercept.dir/dp/1020-missile-intercept.cpp.obj
1020-missile-intercept.exe: CMakeFiles/1020-missile-intercept.dir/build.make
1020-missile-intercept.exe: CMakeFiles/1020-missile-intercept.dir/linklibs.rsp
1020-missile-intercept.exe: CMakeFiles/1020-missile-intercept.dir/objects1.rsp
1020-missile-intercept.exe: CMakeFiles/1020-missile-intercept.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 1020-missile-intercept.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\1020-missile-intercept.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1020-missile-intercept.dir/build: 1020-missile-intercept.exe
.PHONY : CMakeFiles/1020-missile-intercept.dir/build

CMakeFiles/1020-missile-intercept.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\1020-missile-intercept.dir\cmake_clean.cmake
.PHONY : CMakeFiles/1020-missile-intercept.dir/clean

CMakeFiles/1020-missile-intercept.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build\CMakeFiles\1020-missile-intercept.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/1020-missile-intercept.dir/depend

