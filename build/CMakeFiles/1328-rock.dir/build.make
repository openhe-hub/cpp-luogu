# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/cpp-luogu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/cpp-luogu/build

# Include any dependencies generated for this target.
include CMakeFiles/1328-rock.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/1328-rock.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1328-rock.dir/flags.make

CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.o: CMakeFiles/1328-rock.dir/flags.make
CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.o: ../simulation/1328-rock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.o -c /workspaces/cpp-luogu/simulation/1328-rock.cpp

CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cpp-luogu/simulation/1328-rock.cpp > CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.i

CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cpp-luogu/simulation/1328-rock.cpp -o CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.s

CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.o: CMakeFiles/1328-rock.dir/flags.make
CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.o: ../simulation/1061-jam.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.o -c /workspaces/cpp-luogu/simulation/1061-jam.cpp

CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/cpp-luogu/simulation/1061-jam.cpp > CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.i

CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/cpp-luogu/simulation/1061-jam.cpp -o CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.s

# Object files for target 1328-rock
1328__rock_OBJECTS = \
"CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.o" \
"CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.o"

# External object files for target 1328-rock
1328__rock_EXTERNAL_OBJECTS =

1328-rock: CMakeFiles/1328-rock.dir/simulation/1328-rock.cpp.o
1328-rock: CMakeFiles/1328-rock.dir/simulation/1061-jam.cpp.o
1328-rock: CMakeFiles/1328-rock.dir/build.make
1328-rock: CMakeFiles/1328-rock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/cpp-luogu/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable 1328-rock"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/1328-rock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1328-rock.dir/build: 1328-rock

.PHONY : CMakeFiles/1328-rock.dir/build

CMakeFiles/1328-rock.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/1328-rock.dir/cmake_clean.cmake
.PHONY : CMakeFiles/1328-rock.dir/clean

CMakeFiles/1328-rock.dir/depend:
	cd /workspaces/cpp-luogu/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/cpp-luogu /workspaces/cpp-luogu /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build /workspaces/cpp-luogu/build/CMakeFiles/1328-rock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/1328-rock.dir/depend

