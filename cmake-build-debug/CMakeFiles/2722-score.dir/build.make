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
include CMakeFiles/2722-score.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/2722-score.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/2722-score.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/2722-score.dir/flags.make

CMakeFiles/2722-score.dir/dp/2722-score.cpp.obj: CMakeFiles/2722-score.dir/flags.make
CMakeFiles/2722-score.dir/dp/2722-score.cpp.obj: ../dp/2722-score.cpp
CMakeFiles/2722-score.dir/dp/2722-score.cpp.obj: CMakeFiles/2722-score.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/2722-score.dir/dp/2722-score.cpp.obj"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/2722-score.dir/dp/2722-score.cpp.obj -MF CMakeFiles\2722-score.dir\dp\2722-score.cpp.obj.d -o CMakeFiles\2722-score.dir\dp\2722-score.cpp.obj -c D:\program\cpp\cpp-luogu\dp\2722-score.cpp

CMakeFiles/2722-score.dir/dp/2722-score.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/2722-score.dir/dp/2722-score.cpp.i"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\dp\2722-score.cpp > CMakeFiles\2722-score.dir\dp\2722-score.cpp.i

CMakeFiles/2722-score.dir/dp/2722-score.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/2722-score.dir/dp/2722-score.cpp.s"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\dp\2722-score.cpp -o CMakeFiles\2722-score.dir\dp\2722-score.cpp.s

# Object files for target 2722-score
2722__score_OBJECTS = \
"CMakeFiles/2722-score.dir/dp/2722-score.cpp.obj"

# External object files for target 2722-score
2722__score_EXTERNAL_OBJECTS =

2722-score.exe: CMakeFiles/2722-score.dir/dp/2722-score.cpp.obj
2722-score.exe: CMakeFiles/2722-score.dir/build.make
2722-score.exe: CMakeFiles/2722-score.dir/linklibs.rsp
2722-score.exe: CMakeFiles/2722-score.dir/objects1.rsp
2722-score.exe: CMakeFiles/2722-score.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 2722-score.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\2722-score.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/2722-score.dir/build: 2722-score.exe
.PHONY : CMakeFiles/2722-score.dir/build

CMakeFiles/2722-score.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\2722-score.dir\cmake_clean.cmake
.PHONY : CMakeFiles/2722-score.dir/clean

CMakeFiles/2722-score.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\cmake-build-debug D:\program\cpp\cpp-luogu\cmake-build-debug D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles\2722-score.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/2722-score.dir/depend

