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
include CMakeFiles/01bag.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/01bag.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/01bag.dir/flags.make

CMakeFiles/01bag.dir/dp/bag/template/01bag.cpp.obj: CMakeFiles/01bag.dir/flags.make
CMakeFiles/01bag.dir/dp/bag/template/01bag.cpp.obj: ../dp/bag/template/01bag.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/01bag.dir/dp/bag/template/01bag.cpp.obj"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\01bag.dir\dp\bag\template\01bag.cpp.obj -c "D:\cpp project\luogu\dp\bag\template\01bag.cpp"

CMakeFiles/01bag.dir/dp/bag/template/01bag.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/01bag.dir/dp/bag/template/01bag.cpp.i"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\cpp project\luogu\dp\bag\template\01bag.cpp" > CMakeFiles\01bag.dir\dp\bag\template\01bag.cpp.i

CMakeFiles/01bag.dir/dp/bag/template/01bag.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/01bag.dir/dp/bag/template/01bag.cpp.s"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\cpp project\luogu\dp\bag\template\01bag.cpp" -o CMakeFiles\01bag.dir\dp\bag\template\01bag.cpp.s

# Object files for target 01bag
01bag_OBJECTS = \
"CMakeFiles/01bag.dir/dp/bag/template/01bag.cpp.obj"

# External object files for target 01bag
01bag_EXTERNAL_OBJECTS =

01bag.exe: CMakeFiles/01bag.dir/dp/bag/template/01bag.cpp.obj
01bag.exe: CMakeFiles/01bag.dir/build.make
01bag.exe: CMakeFiles/01bag.dir/linklibs.rsp
01bag.exe: CMakeFiles/01bag.dir/objects1.rsp
01bag.exe: CMakeFiles/01bag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 01bag.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\01bag.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/01bag.dir/build: 01bag.exe
.PHONY : CMakeFiles/01bag.dir/build

CMakeFiles/01bag.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\01bag.dir\cmake_clean.cmake
.PHONY : CMakeFiles/01bag.dir/clean

CMakeFiles/01bag.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\cpp project\luogu" "D:\cpp project\luogu" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug\CMakeFiles\01bag.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/01bag.dir/depend

