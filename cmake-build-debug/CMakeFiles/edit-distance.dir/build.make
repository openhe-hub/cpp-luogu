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
include CMakeFiles/edit-distance.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/edit-distance.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/edit-distance.dir/flags.make

CMakeFiles/edit-distance.dir/dp/edit-distance.cpp.obj: CMakeFiles/edit-distance.dir/flags.make
CMakeFiles/edit-distance.dir/dp/edit-distance.cpp.obj: ../dp/edit-distance.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/edit-distance.dir/dp/edit-distance.cpp.obj"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\edit-distance.dir\dp\edit-distance.cpp.obj -c "D:\cpp project\luogu\dp\edit-distance.cpp"

CMakeFiles/edit-distance.dir/dp/edit-distance.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/edit-distance.dir/dp/edit-distance.cpp.i"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\cpp project\luogu\dp\edit-distance.cpp" > CMakeFiles\edit-distance.dir\dp\edit-distance.cpp.i

CMakeFiles/edit-distance.dir/dp/edit-distance.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/edit-distance.dir/dp/edit-distance.cpp.s"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\cpp project\luogu\dp\edit-distance.cpp" -o CMakeFiles\edit-distance.dir\dp\edit-distance.cpp.s

# Object files for target edit-distance
edit__distance_OBJECTS = \
"CMakeFiles/edit-distance.dir/dp/edit-distance.cpp.obj"

# External object files for target edit-distance
edit__distance_EXTERNAL_OBJECTS =

edit-distance.exe: CMakeFiles/edit-distance.dir/dp/edit-distance.cpp.obj
edit-distance.exe: CMakeFiles/edit-distance.dir/build.make
edit-distance.exe: CMakeFiles/edit-distance.dir/linklibs.rsp
edit-distance.exe: CMakeFiles/edit-distance.dir/objects1.rsp
edit-distance.exe: CMakeFiles/edit-distance.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable edit-distance.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\edit-distance.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/edit-distance.dir/build: edit-distance.exe
.PHONY : CMakeFiles/edit-distance.dir/build

CMakeFiles/edit-distance.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\edit-distance.dir\cmake_clean.cmake
.PHONY : CMakeFiles/edit-distance.dir/clean

CMakeFiles/edit-distance.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\cpp project\luogu" "D:\cpp project\luogu" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug\CMakeFiles\edit-distance.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/edit-distance.dir/depend
