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
include CMakeFiles/discretion_demo.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/discretion_demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/discretion_demo.dir/flags.make

CMakeFiles/discretion_demo.dir/discretion/discretion_demo.cpp.obj: CMakeFiles/discretion_demo.dir/flags.make
CMakeFiles/discretion_demo.dir/discretion/discretion_demo.cpp.obj: ../discretion/discretion_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/discretion_demo.dir/discretion/discretion_demo.cpp.obj"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\discretion_demo.dir\discretion\discretion_demo.cpp.obj -c "D:\cpp project\luogu\discretion\discretion_demo.cpp"

CMakeFiles/discretion_demo.dir/discretion/discretion_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/discretion_demo.dir/discretion/discretion_demo.cpp.i"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\cpp project\luogu\discretion\discretion_demo.cpp" > CMakeFiles\discretion_demo.dir\discretion\discretion_demo.cpp.i

CMakeFiles/discretion_demo.dir/discretion/discretion_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/discretion_demo.dir/discretion/discretion_demo.cpp.s"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\cpp project\luogu\discretion\discretion_demo.cpp" -o CMakeFiles\discretion_demo.dir\discretion\discretion_demo.cpp.s

# Object files for target discretion_demo
discretion_demo_OBJECTS = \
"CMakeFiles/discretion_demo.dir/discretion/discretion_demo.cpp.obj"

# External object files for target discretion_demo
discretion_demo_EXTERNAL_OBJECTS =

discretion_demo.exe: CMakeFiles/discretion_demo.dir/discretion/discretion_demo.cpp.obj
discretion_demo.exe: CMakeFiles/discretion_demo.dir/build.make
discretion_demo.exe: CMakeFiles/discretion_demo.dir/linklibs.rsp
discretion_demo.exe: CMakeFiles/discretion_demo.dir/objects1.rsp
discretion_demo.exe: CMakeFiles/discretion_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable discretion_demo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\discretion_demo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/discretion_demo.dir/build: discretion_demo.exe
.PHONY : CMakeFiles/discretion_demo.dir/build

CMakeFiles/discretion_demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\discretion_demo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/discretion_demo.dir/clean

CMakeFiles/discretion_demo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\cpp project\luogu" "D:\cpp project\luogu" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug\CMakeFiles\discretion_demo.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/discretion_demo.dir/depend
