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
CMAKE_SOURCE_DIR = /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/build

# Include any dependencies generated for this target.
include CMakeFiles/ej5.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ej5.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ej5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ej5.dir/flags.make

CMakeFiles/ej5.dir/tests/test_templates.cpp.o: CMakeFiles/ej5.dir/flags.make
CMakeFiles/ej5.dir/tests/test_templates.cpp.o: /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/tests/test_templates.cpp
CMakeFiles/ej5.dir/tests/test_templates.cpp.o: CMakeFiles/ej5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ej5.dir/tests/test_templates.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ej5.dir/tests/test_templates.cpp.o -MF CMakeFiles/ej5.dir/tests/test_templates.cpp.o.d -o CMakeFiles/ej5.dir/tests/test_templates.cpp.o -c /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/tests/test_templates.cpp

CMakeFiles/ej5.dir/tests/test_templates.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ej5.dir/tests/test_templates.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/tests/test_templates.cpp > CMakeFiles/ej5.dir/tests/test_templates.cpp.i

CMakeFiles/ej5.dir/tests/test_templates.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ej5.dir/tests/test_templates.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/tests/test_templates.cpp -o CMakeFiles/ej5.dir/tests/test_templates.cpp.s

CMakeFiles/ej5.dir/tests/test_diccionario.cpp.o: CMakeFiles/ej5.dir/flags.make
CMakeFiles/ej5.dir/tests/test_diccionario.cpp.o: /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/tests/test_diccionario.cpp
CMakeFiles/ej5.dir/tests/test_diccionario.cpp.o: CMakeFiles/ej5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ej5.dir/tests/test_diccionario.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ej5.dir/tests/test_diccionario.cpp.o -MF CMakeFiles/ej5.dir/tests/test_diccionario.cpp.o.d -o CMakeFiles/ej5.dir/tests/test_diccionario.cpp.o -c /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/tests/test_diccionario.cpp

CMakeFiles/ej5.dir/tests/test_diccionario.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ej5.dir/tests/test_diccionario.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/tests/test_diccionario.cpp > CMakeFiles/ej5.dir/tests/test_diccionario.cpp.i

CMakeFiles/ej5.dir/tests/test_diccionario.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ej5.dir/tests/test_diccionario.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/tests/test_diccionario.cpp -o CMakeFiles/ej5.dir/tests/test_diccionario.cpp.s

# Object files for target ej5
ej5_OBJECTS = \
"CMakeFiles/ej5.dir/tests/test_templates.cpp.o" \
"CMakeFiles/ej5.dir/tests/test_diccionario.cpp.o"

# External object files for target ej5
ej5_EXTERNAL_OBJECTS =

ej5: CMakeFiles/ej5.dir/tests/test_templates.cpp.o
ej5: CMakeFiles/ej5.dir/tests/test_diccionario.cpp.o
ej5: CMakeFiles/ej5.dir/build.make
ej5: libgtest.a
ej5: libgtest_main.a
ej5: CMakeFiles/ej5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ej5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ej5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ej5.dir/build: ej5
.PHONY : CMakeFiles/ej5.dir/build

CMakeFiles/ej5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ej5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ej5.dir/clean

CMakeFiles/ej5.dir/depend:
	cd /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/build /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/build /home/joacopolo/Documents/exactas/algo2/AyED2-Labo07-Templates/build/CMakeFiles/ej5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ej5.dir/depend

