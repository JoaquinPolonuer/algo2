# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/1186/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1186/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joacopolo/Documents/exactas/algo2/taller_trie

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joacopolo/Documents/exactas/algo2/taller_trie/build

# Utility rule file for correrValgrind.

# Include any custom commands dependencies for this target.
include CMakeFiles/correrValgrind.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/correrValgrind.dir/progress.make

CMakeFiles/correrValgrind: correrTests
	valgrind --leak-check=full -v ./correrTests 2>&1

correrValgrind: CMakeFiles/correrValgrind
correrValgrind: CMakeFiles/correrValgrind.dir/build.make
.PHONY : correrValgrind

# Rule to build all files generated by this target.
CMakeFiles/correrValgrind.dir/build: correrValgrind
.PHONY : CMakeFiles/correrValgrind.dir/build

CMakeFiles/correrValgrind.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/correrValgrind.dir/cmake_clean.cmake
.PHONY : CMakeFiles/correrValgrind.dir/clean

CMakeFiles/correrValgrind.dir/depend:
	cd /home/joacopolo/Documents/exactas/algo2/taller_trie/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joacopolo/Documents/exactas/algo2/taller_trie /home/joacopolo/Documents/exactas/algo2/taller_trie /home/joacopolo/Documents/exactas/algo2/taller_trie/build /home/joacopolo/Documents/exactas/algo2/taller_trie/build /home/joacopolo/Documents/exactas/algo2/taller_trie/build/CMakeFiles/correrValgrind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/correrValgrind.dir/depend

