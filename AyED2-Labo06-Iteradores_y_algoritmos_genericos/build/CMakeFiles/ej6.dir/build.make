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
CMAKE_COMMAND = /snap/cmake/1156/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1156/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/build

# Include any dependencies generated for this target.
include CMakeFiles/ej6.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ej6.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ej6.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ej6.dir/flags.make

CMakeFiles/ej6.dir/tests/algo_tests.cpp.o: CMakeFiles/ej6.dir/flags.make
CMakeFiles/ej6.dir/tests/algo_tests.cpp.o: /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/tests/algo_tests.cpp
CMakeFiles/ej6.dir/tests/algo_tests.cpp.o: CMakeFiles/ej6.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ej6.dir/tests/algo_tests.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ej6.dir/tests/algo_tests.cpp.o -MF CMakeFiles/ej6.dir/tests/algo_tests.cpp.o.d -o CMakeFiles/ej6.dir/tests/algo_tests.cpp.o -c /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/tests/algo_tests.cpp

CMakeFiles/ej6.dir/tests/algo_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ej6.dir/tests/algo_tests.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/tests/algo_tests.cpp > CMakeFiles/ej6.dir/tests/algo_tests.cpp.i

CMakeFiles/ej6.dir/tests/algo_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ej6.dir/tests/algo_tests.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/tests/algo_tests.cpp -o CMakeFiles/ej6.dir/tests/algo_tests.cpp.s

# Object files for target ej6
ej6_OBJECTS = \
"CMakeFiles/ej6.dir/tests/algo_tests.cpp.o"

# External object files for target ej6
ej6_EXTERNAL_OBJECTS =

ej6: CMakeFiles/ej6.dir/tests/algo_tests.cpp.o
ej6: CMakeFiles/ej6.dir/build.make
ej6: libgtest.a
ej6: libgtest_main.a
ej6: CMakeFiles/ej6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ej6"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ej6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ej6.dir/build: ej6
.PHONY : CMakeFiles/ej6.dir/build

CMakeFiles/ej6.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ej6.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ej6.dir/clean

CMakeFiles/ej6.dir/depend:
	cd /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/build /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/build /home/joacopolo/Documents/exactas/algo2/AyED2-Labo06-Iteradores_y_algoritmos_genericos/build/CMakeFiles/ej6.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ej6.dir/depend

