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
include Applications/CMakeFiles/fbfs.dir/depend.make

# Include the progress variables for this target.
include Applications/CMakeFiles/fbfs.dir/progress.make

# Include the compile flags for this target's objects.
include Applications/CMakeFiles/fbfs.dir/flags.make

Applications/CMakeFiles/fbfs.dir/FilteredBFS.o: Applications/CMakeFiles/fbfs.dir/flags.make
Applications/CMakeFiles/fbfs.dir/FilteredBFS.o: Applications/FilteredBFS.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/allenzou/git/CombBLAS/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Applications/CMakeFiles/fbfs.dir/FilteredBFS.o"
	cd /home/allenzou/git/CombBLAS/Applications && /usr/bin/mpicxx   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/fbfs.dir/FilteredBFS.o -c /home/allenzou/git/CombBLAS/Applications/FilteredBFS.cpp

Applications/CMakeFiles/fbfs.dir/FilteredBFS.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fbfs.dir/FilteredBFS.i"
	cd /home/allenzou/git/CombBLAS/Applications && /usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/allenzou/git/CombBLAS/Applications/FilteredBFS.cpp > CMakeFiles/fbfs.dir/FilteredBFS.i

Applications/CMakeFiles/fbfs.dir/FilteredBFS.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fbfs.dir/FilteredBFS.s"
	cd /home/allenzou/git/CombBLAS/Applications && /usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/allenzou/git/CombBLAS/Applications/FilteredBFS.cpp -o CMakeFiles/fbfs.dir/FilteredBFS.s

Applications/CMakeFiles/fbfs.dir/FilteredBFS.o.requires:
.PHONY : Applications/CMakeFiles/fbfs.dir/FilteredBFS.o.requires

Applications/CMakeFiles/fbfs.dir/FilteredBFS.o.provides: Applications/CMakeFiles/fbfs.dir/FilteredBFS.o.requires
	$(MAKE) -f Applications/CMakeFiles/fbfs.dir/build.make Applications/CMakeFiles/fbfs.dir/FilteredBFS.o.provides.build
.PHONY : Applications/CMakeFiles/fbfs.dir/FilteredBFS.o.provides

Applications/CMakeFiles/fbfs.dir/FilteredBFS.o.provides.build: Applications/CMakeFiles/fbfs.dir/FilteredBFS.o

# Object files for target fbfs
fbfs_OBJECTS = \
"CMakeFiles/fbfs.dir/FilteredBFS.o"

# External object files for target fbfs
fbfs_EXTERNAL_OBJECTS =

Applications/fbfs: Applications/CMakeFiles/fbfs.dir/FilteredBFS.o
Applications/fbfs: Applications/CMakeFiles/fbfs.dir/build.make
Applications/fbfs: libCommGridlib.a
Applications/fbfs: libMPITypelib.a
Applications/fbfs: libMemoryPoollib.a
Applications/fbfs: graph500-1.2/generator/libGraphGenlib.a
Applications/fbfs: libHashlib.a
Applications/fbfs: Applications/CMakeFiles/fbfs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable fbfs"
	cd /home/allenzou/git/CombBLAS/Applications && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fbfs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Applications/CMakeFiles/fbfs.dir/build: Applications/fbfs
.PHONY : Applications/CMakeFiles/fbfs.dir/build

Applications/CMakeFiles/fbfs.dir/requires: Applications/CMakeFiles/fbfs.dir/FilteredBFS.o.requires
.PHONY : Applications/CMakeFiles/fbfs.dir/requires

Applications/CMakeFiles/fbfs.dir/clean:
	cd /home/allenzou/git/CombBLAS/Applications && $(CMAKE_COMMAND) -P CMakeFiles/fbfs.dir/cmake_clean.cmake
.PHONY : Applications/CMakeFiles/fbfs.dir/clean

Applications/CMakeFiles/fbfs.dir/depend:
	cd /home/allenzou/git/CombBLAS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/allenzou/git/CombBLAS /home/allenzou/git/CombBLAS/Applications /home/allenzou/git/CombBLAS /home/allenzou/git/CombBLAS/Applications /home/allenzou/git/CombBLAS/Applications/CMakeFiles/fbfs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Applications/CMakeFiles/fbfs.dir/depend

