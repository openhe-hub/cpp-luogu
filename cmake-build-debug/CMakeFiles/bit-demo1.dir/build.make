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
include CMakeFiles/bit-demo1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/bit-demo1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/bit-demo1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bit-demo1.dir/flags.make

CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.obj: CMakeFiles/bit-demo1.dir/flags.make
CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.obj: ../\ binary-index-tree/bit-demo1.cpp
CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.obj: CMakeFiles/bit-demo1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.obj"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.obj -MF CMakeFiles\bit-demo1.dir\_binary-index-tree\bit-demo1.cpp.obj.d -o CMakeFiles\bit-demo1.dir\_binary-index-tree\bit-demo1.cpp.obj -c "D:\program\cpp\cpp-luogu\ binary-index-tree\bit-demo1.cpp"

CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.i"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\program\cpp\cpp-luogu\ binary-index-tree\bit-demo1.cpp" > CMakeFiles\bit-demo1.dir\_binary-index-tree\bit-demo1.cpp.i

CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.s"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\program\cpp\cpp-luogu\ binary-index-tree\bit-demo1.cpp" -o CMakeFiles\bit-demo1.dir\_binary-index-tree\bit-demo1.cpp.s

# Object files for target bit-demo1
bit__demo1_OBJECTS = \
"CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.obj"

# External object files for target bit-demo1
bit__demo1_EXTERNAL_OBJECTS =

bit-demo1.exe: CMakeFiles/bit-demo1.dir/_binary-index-tree/bit-demo1.cpp.obj
bit-demo1.exe: CMakeFiles/bit-demo1.dir/build.make
bit-demo1.exe: CMakeFiles/bit-demo1.dir/linklibs.rsp
bit-demo1.exe: CMakeFiles/bit-demo1.dir/objects1.rsp
bit-demo1.exe: CMakeFiles/bit-demo1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bit-demo1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\bit-demo1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bit-demo1.dir/build: bit-demo1.exe
.PHONY : CMakeFiles/bit-demo1.dir/build

CMakeFiles/bit-demo1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\bit-demo1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/bit-demo1.dir/clean

CMakeFiles/bit-demo1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\cmake-build-debug D:\program\cpp\cpp-luogu\cmake-build-debug D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles\bit-demo1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bit-demo1.dir/depend

