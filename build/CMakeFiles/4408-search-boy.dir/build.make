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
include CMakeFiles/4408-search-boy.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/4408-search-boy.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/4408-search-boy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/4408-search-boy.dir/flags.make

CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.obj: CMakeFiles/4408-search-boy.dir/flags.make
CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.obj: D:/program/cpp/cpp-luogu/tree/4408-search-boy.cpp
CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.obj: CMakeFiles/4408-search-boy.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.obj"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.obj -MF CMakeFiles\4408-search-boy.dir\tree\4408-search-boy.cpp.obj.d -o CMakeFiles\4408-search-boy.dir\tree\4408-search-boy.cpp.obj -c D:\program\cpp\cpp-luogu\tree\4408-search-boy.cpp

CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.i"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\program\cpp\cpp-luogu\tree\4408-search-boy.cpp > CMakeFiles\4408-search-boy.dir\tree\4408-search-boy.cpp.i

CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.s"
	D:\software\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\program\cpp\cpp-luogu\tree\4408-search-boy.cpp -o CMakeFiles\4408-search-boy.dir\tree\4408-search-boy.cpp.s

# Object files for target 4408-search-boy
4408__search__boy_OBJECTS = \
"CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.obj"

# External object files for target 4408-search-boy
4408__search__boy_EXTERNAL_OBJECTS =

4408-search-boy.exe: CMakeFiles/4408-search-boy.dir/tree/4408-search-boy.cpp.obj
4408-search-boy.exe: CMakeFiles/4408-search-boy.dir/build.make
4408-search-boy.exe: CMakeFiles/4408-search-boy.dir/linklibs.rsp
4408-search-boy.exe: CMakeFiles/4408-search-boy.dir/objects1.rsp
4408-search-boy.exe: CMakeFiles/4408-search-boy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\program\cpp\cpp-luogu\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 4408-search-boy.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\4408-search-boy.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/4408-search-boy.dir/build: 4408-search-boy.exe
.PHONY : CMakeFiles/4408-search-boy.dir/build

CMakeFiles/4408-search-boy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\4408-search-boy.dir\cmake_clean.cmake
.PHONY : CMakeFiles/4408-search-boy.dir/clean

CMakeFiles/4408-search-boy.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build D:\program\cpp\cpp-luogu\build\CMakeFiles\4408-search-boy.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/4408-search-boy.dir/depend
