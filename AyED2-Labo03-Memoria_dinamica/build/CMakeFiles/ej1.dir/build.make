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

# Include any dependencies generated for this target.
include CMakeFiles/ej1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ej1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ej1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ej1.dir/flags.make

CMakeFiles/ej1.dir/tests/sdm_tests.cpp.o: CMakeFiles/ej1.dir/flags.make
CMakeFiles/ej1.dir/tests/sdm_tests.cpp.o: /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/tests/sdm_tests.cpp
CMakeFiles/ej1.dir/tests/sdm_tests.cpp.o: CMakeFiles/ej1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ej1.dir/tests/sdm_tests.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ej1.dir/tests/sdm_tests.cpp.o -MF CMakeFiles/ej1.dir/tests/sdm_tests.cpp.o.d -o CMakeFiles/ej1.dir/tests/sdm_tests.cpp.o -c /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/tests/sdm_tests.cpp

CMakeFiles/ej1.dir/tests/sdm_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ej1.dir/tests/sdm_tests.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/tests/sdm_tests.cpp > CMakeFiles/ej1.dir/tests/sdm_tests.cpp.i

CMakeFiles/ej1.dir/tests/sdm_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ej1.dir/tests/sdm_tests.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/tests/sdm_tests.cpp -o CMakeFiles/ej1.dir/tests/sdm_tests.cpp.s

CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.o: CMakeFiles/ej1.dir/flags.make
CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.o: /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/SistemaDeMensajes.cpp
CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.o: CMakeFiles/ej1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.o -MF CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.o.d -o CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.o -c /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/SistemaDeMensajes.cpp

CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/SistemaDeMensajes.cpp > CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.i

CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/SistemaDeMensajes.cpp -o CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.s

CMakeFiles/ej1.dir/src/Internet.cpp.o: CMakeFiles/ej1.dir/flags.make
CMakeFiles/ej1.dir/src/Internet.cpp.o: /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/Internet.cpp
CMakeFiles/ej1.dir/src/Internet.cpp.o: CMakeFiles/ej1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ej1.dir/src/Internet.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ej1.dir/src/Internet.cpp.o -MF CMakeFiles/ej1.dir/src/Internet.cpp.o.d -o CMakeFiles/ej1.dir/src/Internet.cpp.o -c /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/Internet.cpp

CMakeFiles/ej1.dir/src/Internet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ej1.dir/src/Internet.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/Internet.cpp > CMakeFiles/ej1.dir/src/Internet.cpp.i

CMakeFiles/ej1.dir/src/Internet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ej1.dir/src/Internet.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/Internet.cpp -o CMakeFiles/ej1.dir/src/Internet.cpp.s

CMakeFiles/ej1.dir/src/ConexionJugador.cpp.o: CMakeFiles/ej1.dir/flags.make
CMakeFiles/ej1.dir/src/ConexionJugador.cpp.o: /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/ConexionJugador.cpp
CMakeFiles/ej1.dir/src/ConexionJugador.cpp.o: CMakeFiles/ej1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ej1.dir/src/ConexionJugador.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ej1.dir/src/ConexionJugador.cpp.o -MF CMakeFiles/ej1.dir/src/ConexionJugador.cpp.o.d -o CMakeFiles/ej1.dir/src/ConexionJugador.cpp.o -c /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/ConexionJugador.cpp

CMakeFiles/ej1.dir/src/ConexionJugador.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ej1.dir/src/ConexionJugador.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/ConexionJugador.cpp > CMakeFiles/ej1.dir/src/ConexionJugador.cpp.i

CMakeFiles/ej1.dir/src/ConexionJugador.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ej1.dir/src/ConexionJugador.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/src/ConexionJugador.cpp -o CMakeFiles/ej1.dir/src/ConexionJugador.cpp.s

# Object files for target ej1
ej1_OBJECTS = \
"CMakeFiles/ej1.dir/tests/sdm_tests.cpp.o" \
"CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.o" \
"CMakeFiles/ej1.dir/src/Internet.cpp.o" \
"CMakeFiles/ej1.dir/src/ConexionJugador.cpp.o"

# External object files for target ej1
ej1_EXTERNAL_OBJECTS =

ej1: CMakeFiles/ej1.dir/tests/sdm_tests.cpp.o
ej1: CMakeFiles/ej1.dir/src/SistemaDeMensajes.cpp.o
ej1: CMakeFiles/ej1.dir/src/Internet.cpp.o
ej1: CMakeFiles/ej1.dir/src/ConexionJugador.cpp.o
ej1: CMakeFiles/ej1.dir/build.make
ej1: libgtest.a
ej1: libgtest_main.a
ej1: CMakeFiles/ej1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ej1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ej1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ej1.dir/build: ej1
.PHONY : CMakeFiles/ej1.dir/build

CMakeFiles/ej1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ej1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ej1.dir/clean

CMakeFiles/ej1.dir/depend:
	cd /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build /home/joacopolo/Documents/exactas/algo2/AyED2-Labo03-Memoria_dinamica/build/CMakeFiles/ej1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ej1.dir/depend

