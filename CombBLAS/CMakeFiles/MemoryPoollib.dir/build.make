# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_SOURCE_DIR = /home/allenzou/git/CombBLAS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/allenzou/git/CombBLAS

# Include any dependencies generated for this target.
include CMakeFiles/MemoryPoollib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MemoryPoollib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MemoryPoollib.dir/flags.make

CMakeFiles/MemoryPoollib.dir/MemoryPool.o: CMakeFiles/MemoryPoollib.dir/flags.make
CMakeFiles/MemoryPoollib.dir/MemoryPool.o: MemoryPool.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/allenzou/git/CombBLAS/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/MemoryPoollib.dir/MemoryPool.o"
	/usr/bin/mpicxx   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/MemoryPoollib.dir/MemoryPool.o -c /home/allenzou/git/CombBLAS/MemoryPool.cpp

CMakeFiles/MemoryPoollib.dir/MemoryPool.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MemoryPoollib.dir/MemoryPool.i"
	/usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/allenzou/git/CombBLAS/MemoryPool.cpp > CMakeFiles/MemoryPoollib.dir/MemoryPool.i

CMakeFiles/MemoryPoollib.dir/MemoryPool.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MemoryPoollib.dir/MemoryPool.s"
	/usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/allenzou/git/CombBLAS/MemoryPool.cpp -o CMakeFiles/MemoryPoollib.dir/MemoryPool.s

CMakeFiles/MemoryPoollib.dir/MemoryPool.o.requires:
.PHONY : CMakeFiles/MemoryPoollib.dir/MemoryPool.o.requires

CMakeFiles/MemoryPoollib.dir/MemoryPool.o.provides: CMakeFiles/MemoryPoollib.dir/MemoryPool.o.requires
	$(MAKE) -f CMakeFiles/MemoryPoollib.dir/build.make CMakeFiles/MemoryPoollib.dir/MemoryPool.o.provides.build
.PHONY : CMakeFiles/MemoryPoollib.dir/MemoryPool.o.provides

CMakeFiles/MemoryPoollib.dir/MemoryPool.o.provides.build: CMakeFiles/MemoryPoollib.dir/MemoryPool.o

# Object files for target MemoryPoollib
MemoryPoollib_OBJECTS = \
"CMakeFiles/MemoryPoollib.dir/MemoryPool.o"

# External object files for target MemoryPoollib
MemoryPoollib_EXTERNAL_OBJECTS =

libMemoryPoollib.a: CMakeFiles/MemoryPoollib.dir/MemoryPool.o
libMemoryPoollib.a: CMakeFiles/MemoryPoollib.dir/build.make
libMemoryPoollib.a: CMakeFiles/MemoryPoollib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libMemoryPoollib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/MemoryPoollib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MemoryPoollib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MemoryPoollib.dir/build: libMemoryPoollib.a
.PHONY : CMakeFiles/MemoryPoollib.dir/build

CMakeFiles/MemoryPoollib.dir/requires: CMakeFiles/MemoryPoollib.dir/MemoryPool.o.requires
.PHONY : CMakeFiles/MemoryPoollib.dir/requires

CMakeFiles/MemoryPoollib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MemoryPoollib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MemoryPoollib.dir/clean

CMakeFiles/MemoryPoollib.dir/depend:
	cd /home/allenzou/git/CombBLAS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/allenzou/git/CombBLAS /home/allenzou/git/CombBLAS /home/allenzou/git/CombBLAS /home/allenzou/git/CombBLAS /home/allenzou/git/CombBLAS/CMakeFiles/MemoryPoollib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MemoryPoollib.dir/depend

