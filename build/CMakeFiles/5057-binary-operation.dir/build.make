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
include CMakeFiles/5057-binary-operation.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/5057-binary-operation.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/5057-binary-operation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/5057-binary-operation.dir/flags.make

CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.obj: CMakeFiles/5057-binary-operation.dir/flags.make
CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.obj: D:/program/cpp/cpp-luogu/\ binary-index-tree/5057-binary-operation.cpp
CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.obj: CMakeFiles/5057-binary-operation.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.obj"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.obj -MF CMakeFiles\5057-binary-operation.dir\_binary-index-tree\5057-binary-operation.cpp.obj.d -o CMakeFiles\5057-binary-operation.dir\_binary-index-tree\5057-binary-operation.cpp.obj -c "D:\program\cpp\cpp-luogu\ binary-index-tree\5057-binary-operation.cpp"

CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.i"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\program\cpp\cpp-luogu\ binary-index-tree\5057-binary-operation.cpp" > CMakeFiles\5057-binary-operation.dir\_binary-index-tree\5057-binary-operation.cpp.i

CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.s"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\program\cpp\cpp-luogu\ binary-index-tree\5057-binary-operation.cpp" -o CMakeFiles\5057-binary-operation.dir\_binary-index-tree\5057-binary-operation.cpp.s

# Object files for target 5057-binary-operation
5057__binary__operation_OBJECTS = \
"CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.obj"

# External object files for target 5057-binary-operation
5057__binary__operation_EXTERNAL_OBJECTS =

5057-binary-operation.exe: CMakeFiles/5057-binary-operation.dir/_binary-index-tree/5057-binary-operation.cpp.obj
5057-binary-operation.exe: CMakeFiles/5057-binary-operation.dir/build.make
5057-binary-operation.exe: CMakeFiles/5057-binary-operation.dir/linklibs.rsp
5057-binary-operation.exe: CMakeFiles/5057-binary-operation.dir/objects1.rsp
5057-binary-operation.exe: CMakeFiles/5057-binary-operation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 5057-binary-operation.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\5057-binary-operation.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/5057-binary-operation.dir/build: 5057-binary-operation.exe
.PHONY : CMakeFiles/5057-binary-operation.dir/build

CMakeFiles/5057-binary-operation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\5057-binary-operation.dir\cmake_clean.cmake
.PHONY : CMakeFiles/5057-binary-operation.dir/clean

CMakeFiles/5057-binary-operation.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build\CMakeFiles\5057-binary-operation.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/5057-binary-operation.dir/depend

