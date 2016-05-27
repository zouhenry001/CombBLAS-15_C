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
include ReleaseTests/CMakeFiles/SpAsgnTest.dir/depend.make

# Include the progress variables for this target.
include ReleaseTests/CMakeFiles/SpAsgnTest.dir/progress.make

# Include the compile flags for this target's objects.
include ReleaseTests/CMakeFiles/SpAsgnTest.dir/flags.make

ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o: ReleaseTests/CMakeFiles/SpAsgnTest.dir/flags.make
ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o: ReleaseTests/SpAsgnTest.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/allenzou/git/CombBLAS/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o"
	cd /home/allenzou/git/CombBLAS/ReleaseTests && /usr/bin/mpicxx   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o -c /home/allenzou/git/CombBLAS/ReleaseTests/SpAsgnTest.cpp

ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SpAsgnTest.dir/SpAsgnTest.i"
	cd /home/allenzou/git/CombBLAS/ReleaseTests && /usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/allenzou/git/CombBLAS/ReleaseTests/SpAsgnTest.cpp > CMakeFiles/SpAsgnTest.dir/SpAsgnTest.i

ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SpAsgnTest.dir/SpAsgnTest.s"
	cd /home/allenzou/git/CombBLAS/ReleaseTests && /usr/bin/mpicxx  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/allenzou/git/CombBLAS/ReleaseTests/SpAsgnTest.cpp -o CMakeFiles/SpAsgnTest.dir/SpAsgnTest.s

ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o.requires:
.PHONY : ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o.requires

ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o.provides: ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o.requires
	$(MAKE) -f ReleaseTests/CMakeFiles/SpAsgnTest.dir/build.make ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o.provides.build
.PHONY : ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o.provides

ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o.provides.build: ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o

# Object files for target SpAsgnTest
SpAsgnTest_OBJECTS = \
"CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o"

# External object files for target SpAsgnTest
SpAsgnTest_EXTERNAL_OBJECTS =

ReleaseTests/SpAsgnTest: ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o
ReleaseTests/SpAsgnTest: ReleaseTests/CMakeFiles/SpAsgnTest.dir/build.make
ReleaseTests/SpAsgnTest: libCommGridlib.a
ReleaseTests/SpAsgnTest: libMPITypelib.a
ReleaseTests/SpAsgnTest: libMemoryPoollib.a
ReleaseTests/SpAsgnTest: libHashlib.a
ReleaseTests/SpAsgnTest: ReleaseTests/CMakeFiles/SpAsgnTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable SpAsgnTest"
	cd /home/allenzou/git/CombBLAS/ReleaseTests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SpAsgnTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ReleaseTests/CMakeFiles/SpAsgnTest.dir/build: ReleaseTests/SpAsgnTest
.PHONY : ReleaseTests/CMakeFiles/SpAsgnTest.dir/build

ReleaseTests/CMakeFiles/SpAsgnTest.dir/requires: ReleaseTests/CMakeFiles/SpAsgnTest.dir/SpAsgnTest.o.requires
.PHONY : ReleaseTests/CMakeFiles/SpAsgnTest.dir/requires

ReleaseTests/CMakeFiles/SpAsgnTest.dir/clean:
	cd /home/allenzou/git/CombBLAS/ReleaseTests && $(CMAKE_COMMAND) -P CMakeFiles/SpAsgnTest.dir/cmake_clean.cmake
.PHONY : ReleaseTests/CMakeFiles/SpAsgnTest.dir/clean

ReleaseTests/CMakeFiles/SpAsgnTest.dir/depend:
	cd /home/allenzou/git/CombBLAS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/allenzou/git/CombBLAS /home/allenzou/git/CombBLAS/ReleaseTests /home/allenzou/git/CombBLAS /home/allenzou/git/CombBLAS/ReleaseTests /home/allenzou/git/CombBLAS/ReleaseTests/CMakeFiles/SpAsgnTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ReleaseTests/CMakeFiles/SpAsgnTest.dir/depend

