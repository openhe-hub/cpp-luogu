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
include CMakeFiles/1064-tree-budget.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/1064-tree-budget.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/1064-tree-budget.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1064-tree-budget.dir/flags.make

CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.obj: CMakeFiles/1064-tree-budget.dir/flags.make
CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.obj: ../dp/bag/exercise/1064-tree-budget.cpp
CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.obj: CMakeFiles/1064-tree-budget.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.obj"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.obj -MF CMakeFiles\1064-tree-budget.dir\dp\bag\exercise\1064-tree-budget.cpp.obj.d -o CMakeFiles\1064-tree-budget.dir\dp\bag\exercise\1064-tree-budget.cpp.obj -c D:\program\cpp\cpp-luogu\dp\bag\exercise\1064-tree-budget.cpp

CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.i"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\dp\bag\exercise\1064-tree-budget.cpp > CMakeFiles\1064-tree-budget.dir\dp\bag\exercise\1064-tree-budget.cpp.i

CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.s"
	D:\software\jetbrains-app\apps\CLion\ch-0\222.3739.54\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\dp\bag\exercise\1064-tree-budget.cpp -o CMakeFiles\1064-tree-budget.dir\dp\bag\exercise\1064-tree-budget.cpp.s

# Object files for target 1064-tree-budget
1064__tree__budget_OBJECTS = \
"CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.obj"

# External object files for target 1064-tree-budget
1064__tree__budget_EXTERNAL_OBJECTS =

1064-tree-budget.exe: CMakeFiles/1064-tree-budget.dir/dp/bag/exercise/1064-tree-budget.cpp.obj
1064-tree-budget.exe: CMakeFiles/1064-tree-budget.dir/build.make
1064-tree-budget.exe: CMakeFiles/1064-tree-budget.dir/linklibs.rsp
1064-tree-budget.exe: CMakeFiles/1064-tree-budget.dir/objects1.rsp
1064-tree-budget.exe: CMakeFiles/1064-tree-budget.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 1064-tree-budget.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\1064-tree-budget.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1064-tree-budget.dir/build: 1064-tree-budget.exe
.PHONY : CMakeFiles/1064-tree-budget.dir/build

CMakeFiles/1064-tree-budget.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\1064-tree-budget.dir\cmake_clean.cmake
.PHONY : CMakeFiles/1064-tree-budget.dir/clean

CMakeFiles/1064-tree-budget.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\cmake-build-debug D:\program\cpp\cpp-luogu\cmake-build-debug D:\program\cpp\cpp-luogu\cmake-build-debug\CMakeFiles\1064-tree-budget.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/1064-tree-budget.dir/depend

