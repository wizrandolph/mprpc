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
CMAKE_SOURCE_DIR = /home/elowiz/mprpc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/elowiz/mprpc/build

# Include any dependencies generated for this target.
include examples/callee/CMakeFiles/provider.dir/depend.make

# Include the progress variables for this target.
include examples/callee/CMakeFiles/provider.dir/progress.make

# Include the compile flags for this target's objects.
include examples/callee/CMakeFiles/provider.dir/flags.make

examples/callee/CMakeFiles/provider.dir/userservice.cc.o: examples/callee/CMakeFiles/provider.dir/flags.make
examples/callee/CMakeFiles/provider.dir/userservice.cc.o: ../examples/callee/userservice.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elowiz/mprpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/callee/CMakeFiles/provider.dir/userservice.cc.o"
	cd /home/elowiz/mprpc/build/examples/callee && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/provider.dir/userservice.cc.o -c /home/elowiz/mprpc/examples/callee/userservice.cc

examples/callee/CMakeFiles/provider.dir/userservice.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/provider.dir/userservice.cc.i"
	cd /home/elowiz/mprpc/build/examples/callee && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elowiz/mprpc/examples/callee/userservice.cc > CMakeFiles/provider.dir/userservice.cc.i

examples/callee/CMakeFiles/provider.dir/userservice.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/provider.dir/userservice.cc.s"
	cd /home/elowiz/mprpc/build/examples/callee && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elowiz/mprpc/examples/callee/userservice.cc -o CMakeFiles/provider.dir/userservice.cc.s

examples/callee/CMakeFiles/provider.dir/__/user.pb.cc.o: examples/callee/CMakeFiles/provider.dir/flags.make
examples/callee/CMakeFiles/provider.dir/__/user.pb.cc.o: ../examples/user.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elowiz/mprpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/callee/CMakeFiles/provider.dir/__/user.pb.cc.o"
	cd /home/elowiz/mprpc/build/examples/callee && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/provider.dir/__/user.pb.cc.o -c /home/elowiz/mprpc/examples/user.pb.cc

examples/callee/CMakeFiles/provider.dir/__/user.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/provider.dir/__/user.pb.cc.i"
	cd /home/elowiz/mprpc/build/examples/callee && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elowiz/mprpc/examples/user.pb.cc > CMakeFiles/provider.dir/__/user.pb.cc.i

examples/callee/CMakeFiles/provider.dir/__/user.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/provider.dir/__/user.pb.cc.s"
	cd /home/elowiz/mprpc/build/examples/callee && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elowiz/mprpc/examples/user.pb.cc -o CMakeFiles/provider.dir/__/user.pb.cc.s

# Object files for target provider
provider_OBJECTS = \
"CMakeFiles/provider.dir/userservice.cc.o" \
"CMakeFiles/provider.dir/__/user.pb.cc.o"

# External object files for target provider
provider_EXTERNAL_OBJECTS =

../bin/provider: examples/callee/CMakeFiles/provider.dir/userservice.cc.o
../bin/provider: examples/callee/CMakeFiles/provider.dir/__/user.pb.cc.o
../bin/provider: examples/callee/CMakeFiles/provider.dir/build.make
../bin/provider: examples/callee/CMakeFiles/provider.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/elowiz/mprpc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../bin/provider"
	cd /home/elowiz/mprpc/build/examples/callee && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/provider.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/callee/CMakeFiles/provider.dir/build: ../bin/provider

.PHONY : examples/callee/CMakeFiles/provider.dir/build

examples/callee/CMakeFiles/provider.dir/clean:
	cd /home/elowiz/mprpc/build/examples/callee && $(CMAKE_COMMAND) -P CMakeFiles/provider.dir/cmake_clean.cmake
.PHONY : examples/callee/CMakeFiles/provider.dir/clean

examples/callee/CMakeFiles/provider.dir/depend:
	cd /home/elowiz/mprpc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elowiz/mprpc /home/elowiz/mprpc/examples/callee /home/elowiz/mprpc/build /home/elowiz/mprpc/build/examples/callee /home/elowiz/mprpc/build/examples/callee/CMakeFiles/provider.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/callee/CMakeFiles/provider.dir/depend

