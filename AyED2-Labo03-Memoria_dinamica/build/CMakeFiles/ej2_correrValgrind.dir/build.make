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
CMAKE_COMMAND = /snap/cmake/1153/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1153/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build

# Utility rule file for ej2_correrValgrind.

# Include any custom commands dependencies for this target.
include CMakeFiles/ej2_correrValgrind.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ej2_correrValgrind.dir/progress.make

CMakeFiles/ej2_correrValgrind: ej1
	valgrind --leak-check=full -v ./ej1 2>&1

ej2_correrValgrind: CMakeFiles/ej2_correrValgrind
ej2_correrValgrind: CMakeFiles/ej2_correrValgrind.dir/build.make
.PHONY : ej2_correrValgrind

# Rule to build all files generated by this target.
CMakeFiles/ej2_correrValgrind.dir/build: ej2_correrValgrind
.PHONY : CMakeFiles/ej2_correrValgrind.dir/build

CMakeFiles/ej2_correrValgrind.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ej2_correrValgrind.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ej2_correrValgrind.dir/clean

CMakeFiles/ej2_correrValgrind.dir/depend:
	cd /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build/CMakeFiles/ej2_correrValgrind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ej2_correrValgrind.dir/depend

