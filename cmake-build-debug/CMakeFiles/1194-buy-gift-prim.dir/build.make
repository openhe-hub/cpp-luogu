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
include CMakeFiles/1194-buy-gift-prim.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/1194-buy-gift-prim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1194-buy-gift-prim.dir/flags.make

CMakeFiles/1194-buy-gift-prim.dir/graph/1194-buy-gift-prim.cpp.obj: CMakeFiles/1194-buy-gift-prim.dir/flags.make
CMakeFiles/1194-buy-gift-prim.dir/graph/1194-buy-gift-prim.cpp.obj: ../graph/1194-buy-gift-prim.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1194-buy-gift-prim.dir/graph/1194-buy-gift-prim.cpp.obj"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\1194-buy-gift-prim.dir\graph\1194-buy-gift-prim.cpp.obj -c "D:\cpp project\luogu\graph\1194-buy-gift-prim.cpp"

CMakeFiles/1194-buy-gift-prim.dir/graph/1194-buy-gift-prim.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1194-buy-gift-prim.dir/graph/1194-buy-gift-prim.cpp.i"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\cpp project\luogu\graph\1194-buy-gift-prim.cpp" > CMakeFiles\1194-buy-gift-prim.dir\graph\1194-buy-gift-prim.cpp.i

CMakeFiles/1194-buy-gift-prim.dir/graph/1194-buy-gift-prim.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1194-buy-gift-prim.dir/graph/1194-buy-gift-prim.cpp.s"
	D:\MinGw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\cpp project\luogu\graph\1194-buy-gift-prim.cpp" -o CMakeFiles\1194-buy-gift-prim.dir\graph\1194-buy-gift-prim.cpp.s

# Object files for target 1194-buy-gift-prim
1194__buy__gift__prim_OBJECTS = \
"CMakeFiles/1194-buy-gift-prim.dir/graph/1194-buy-gift-prim.cpp.obj"

# External object files for target 1194-buy-gift-prim
1194__buy__gift__prim_EXTERNAL_OBJECTS =

1194-buy-gift-prim.exe: CMakeFiles/1194-buy-gift-prim.dir/graph/1194-buy-gift-prim.cpp.obj
1194-buy-gift-prim.exe: CMakeFiles/1194-buy-gift-prim.dir/build.make
1194-buy-gift-prim.exe: CMakeFiles/1194-buy-gift-prim.dir/linklibs.rsp
1194-buy-gift-prim.exe: CMakeFiles/1194-buy-gift-prim.dir/objects1.rsp
1194-buy-gift-prim.exe: CMakeFiles/1194-buy-gift-prim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\cpp project\luogu\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 1194-buy-gift-prim.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\1194-buy-gift-prim.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1194-buy-gift-prim.dir/build: 1194-buy-gift-prim.exe
.PHONY : CMakeFiles/1194-buy-gift-prim.dir/build

CMakeFiles/1194-buy-gift-prim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\1194-buy-gift-prim.dir\cmake_clean.cmake
.PHONY : CMakeFiles/1194-buy-gift-prim.dir/clean

CMakeFiles/1194-buy-gift-prim.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\cpp project\luogu" "D:\cpp project\luogu" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug" "D:\cpp project\luogu\cmake-build-debug\CMakeFiles\1194-buy-gift-prim.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/1194-buy-gift-prim.dir/depend
