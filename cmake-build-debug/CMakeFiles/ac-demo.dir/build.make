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
include CMakeFiles/ac-demo.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/ac-demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ac-demo.dir/flags.make

CMakeFiles/ac-demo.dir/string/ac-demo.cpp.obj: CMakeFiles/ac-demo.dir/flags.make
CMakeFiles/ac-demo.dir/string/ac-demo.cpp.obj: ../string/ac-demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ac-demo.dir/string/ac-demo.cpp.obj"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\ac-demo.dir\string\ac-demo.cpp.obj -c "D:\cpp project\luogu\string\ac-demo.cpp"

CMakeFiles/ac-demo.dir/string/ac-demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ac-demo.dir/string/ac-demo.cpp.i"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\cpp project\luogu\string\ac-demo.cpp" > CMakeFiles\ac-demo.dir\string\ac-demo.cpp.i

CMakeFiles/ac-demo.dir/string/ac-demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ac-demo.dir/string/ac-demo.cpp.s"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\cpp project\luogu\string\ac-demo.cpp" -o CMakeFiles\ac-demo.dir\string\ac-demo.cpp.s

# Object files for target ac-demo
ac__demo_OBJECTS = \
"CMakeFiles/ac-demo.dir/string/ac-demo.cpp.obj"

# External object files for target ac-demo
ac__demo_EXTERNAL_OBJECTS =

ac-demo.exe: CMakeFiles/ac-demo.dir/string/ac-demo.cpp.obj
ac-demo.exe: CMakeFiles/ac-demo.dir/build.make
ac-demo.exe: CMakeFiles/ac-demo.dir/linklibs.rsp
ac-demo.exe: CMakeFiles/ac-demo.dir/objects1.rsp
ac-demo.exe: CMakeFiles/ac-demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ac-demo.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ac-demo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ac-demo.dir/build: ac-demo.exe
.PHONY : CMakeFiles/ac-demo.dir/build

CMakeFiles/ac-demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ac-demo.dir\cmake_clean.cmake
.PHONY : CMakeFiles/ac-demo.dir/clean

CMakeFiles/ac-demo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\cpp project\luogu" "D:\cpp project\luogu" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug\CMakeFiles\ac-demo.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ac-demo.dir/depend

