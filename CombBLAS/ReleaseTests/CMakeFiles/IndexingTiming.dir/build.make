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
include ReleaseTests/CMakeFiles/IndexingTiming.dir/depend.make

# Include the progress variables for this target.
include ReleaseTests/CMakeFiles/IndexingTiming.dir/progress.make

# Include the compile flags for this target's objects.
include ReleaseTests/CMakeFiles/IndexingTiming.dir/flags.make

ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o: ReleaseTests/CMakeFiles/IndexingTiming.dir/flags.make
ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o: ReleaseTests/IndexingTiming.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/allenzou/git/CombBLAS/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o"
	cd /home/allenzou/git/CombBLAS/ReleaseTests && /usr/bin/mpicxx   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/IndexingTiming.dir/IndexingTiming.o -c /home/allenzou/git/CombBLAS/ReleaseTests/IndexingTiming.cpp

ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/IndexingTiming.dir/IndexingTiming.i"
	cd /home/allenzou/git/CombBLAS/ReleaseTests && /usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/allenzou/git/CombBLAS/ReleaseTests/IndexingTiming.cpp > CMakeFiles/IndexingTiming.dir/IndexingTiming.i

ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/IndexingTiming.dir/IndexingTiming.s"
	cd /home/allenzou/git/CombBLAS/ReleaseTests && /usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/allenzou/git/CombBLAS/ReleaseTests/IndexingTiming.cpp -o CMakeFiles/IndexingTiming.dir/IndexingTiming.s

ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o.requires:
.PHONY : ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o.requires

ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o.provides: ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o.requires
	$(MAKE) -f ReleaseTests/CMakeFiles/IndexingTiming.dir/build.make ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o.provides.build
.PHONY : ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o.provides

ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o.provides.build: ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o

# Object files for target IndexingTiming
IndexingTiming_OBJECTS = \
"CMakeFiles/IndexingTiming.dir/IndexingTiming.o"

# External object files for target IndexingTiming
IndexingTiming_EXTERNAL_OBJECTS =

ReleaseTests/IndexingTiming: ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o
ReleaseTests/IndexingTiming: ReleaseTests/CMakeFiles/IndexingTiming.dir/build.make
ReleaseTests/IndexingTiming: libCommGridlib.a
ReleaseTests/IndexingTiming: libMPITypelib.a
ReleaseTests/IndexingTiming: libMemoryPoollib.a
ReleaseTests/IndexingTiming: graph500-1.2/generator/libGraphGenlib.a
ReleaseTests/IndexingTiming: libHashlib.a
ReleaseTests/IndexingTiming: ReleaseTests/CMakeFiles/IndexingTiming.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable IndexingTiming"
	cd /home/allenzou/git/CombBLAS/ReleaseTests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IndexingTiming.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ReleaseTests/CMakeFiles/IndexingTiming.dir/build: ReleaseTests/IndexingTiming
.PHONY : ReleaseTests/CMakeFiles/IndexingTiming.dir/build

ReleaseTests/CMakeFiles/IndexingTiming.dir/requires: ReleaseTests/CMakeFiles/IndexingTiming.dir/IndexingTiming.o.requires
.PHONY : ReleaseTests/CMakeFiles/IndexingTiming.dir/requires

ReleaseTests/CMakeFiles/IndexingTiming.dir/clean:
	cd /home/allenzou/git/CombBLAS/ReleaseTests && $(CMAKE_COMMAND) -P CMakeFiles/IndexingTiming.dir/cmake_clean.cmake
.PHONY : ReleaseTests/CMakeFiles/IndexingTiming.dir/clean

ReleaseTests/CMakeFiles/IndexingTiming.dir/depend:
	cd /home/allenzou/git/CombBLAS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/allenzou/git/CombBLAS /home/allenzou/git/CombBLAS/ReleaseTests /home/allenzou/git/CombBLAS /home/allenzou/git/CombBLAS/ReleaseTests /home/allenzou/git/CombBLAS/ReleaseTests/CMakeFiles/IndexingTiming.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ReleaseTests/CMakeFiles/IndexingTiming.dir/depend

