# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/andre-shap/cmakeClientServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andre-shap/cmakeClientServer

# Include any dependencies generated for this target.
include CMakeFiles/ClientServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ClientServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ClientServer.dir/flags.make

CMakeFiles/ClientServer.dir/src/server/server.cpp.o: CMakeFiles/ClientServer.dir/flags.make
CMakeFiles/ClientServer.dir/src/server/server.cpp.o: src/server/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andre-shap/cmakeClientServer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ClientServer.dir/src/server/server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClientServer.dir/src/server/server.cpp.o -c /home/andre-shap/cmakeClientServer/src/server/server.cpp

CMakeFiles/ClientServer.dir/src/server/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClientServer.dir/src/server/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andre-shap/cmakeClientServer/src/server/server.cpp > CMakeFiles/ClientServer.dir/src/server/server.cpp.i

CMakeFiles/ClientServer.dir/src/server/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClientServer.dir/src/server/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andre-shap/cmakeClientServer/src/server/server.cpp -o CMakeFiles/ClientServer.dir/src/server/server.cpp.s

CMakeFiles/ClientServer.dir/src/server/server.cpp.o.requires:

.PHONY : CMakeFiles/ClientServer.dir/src/server/server.cpp.o.requires

CMakeFiles/ClientServer.dir/src/server/server.cpp.o.provides: CMakeFiles/ClientServer.dir/src/server/server.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClientServer.dir/build.make CMakeFiles/ClientServer.dir/src/server/server.cpp.o.provides.build
.PHONY : CMakeFiles/ClientServer.dir/src/server/server.cpp.o.provides

CMakeFiles/ClientServer.dir/src/server/server.cpp.o.provides.build: CMakeFiles/ClientServer.dir/src/server/server.cpp.o


CMakeFiles/ClientServer.dir/src/client/client.cpp.o: CMakeFiles/ClientServer.dir/flags.make
CMakeFiles/ClientServer.dir/src/client/client.cpp.o: src/client/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andre-shap/cmakeClientServer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ClientServer.dir/src/client/client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClientServer.dir/src/client/client.cpp.o -c /home/andre-shap/cmakeClientServer/src/client/client.cpp

CMakeFiles/ClientServer.dir/src/client/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClientServer.dir/src/client/client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/andre-shap/cmakeClientServer/src/client/client.cpp > CMakeFiles/ClientServer.dir/src/client/client.cpp.i

CMakeFiles/ClientServer.dir/src/client/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClientServer.dir/src/client/client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/andre-shap/cmakeClientServer/src/client/client.cpp -o CMakeFiles/ClientServer.dir/src/client/client.cpp.s

CMakeFiles/ClientServer.dir/src/client/client.cpp.o.requires:

.PHONY : CMakeFiles/ClientServer.dir/src/client/client.cpp.o.requires

CMakeFiles/ClientServer.dir/src/client/client.cpp.o.provides: CMakeFiles/ClientServer.dir/src/client/client.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClientServer.dir/build.make CMakeFiles/ClientServer.dir/src/client/client.cpp.o.provides.build
.PHONY : CMakeFiles/ClientServer.dir/src/client/client.cpp.o.provides

CMakeFiles/ClientServer.dir/src/client/client.cpp.o.provides.build: CMakeFiles/ClientServer.dir/src/client/client.cpp.o


# Object files for target ClientServer
ClientServer_OBJECTS = \
"CMakeFiles/ClientServer.dir/src/server/server.cpp.o" \
"CMakeFiles/ClientServer.dir/src/client/client.cpp.o"

# External object files for target ClientServer
ClientServer_EXTERNAL_OBJECTS =

ClientServer: CMakeFiles/ClientServer.dir/src/server/server.cpp.o
ClientServer: CMakeFiles/ClientServer.dir/src/client/client.cpp.o
ClientServer: CMakeFiles/ClientServer.dir/build.make
ClientServer: CMakeFiles/ClientServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andre-shap/cmakeClientServer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ClientServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ClientServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ClientServer.dir/build: ClientServer

.PHONY : CMakeFiles/ClientServer.dir/build

CMakeFiles/ClientServer.dir/requires: CMakeFiles/ClientServer.dir/src/server/server.cpp.o.requires
CMakeFiles/ClientServer.dir/requires: CMakeFiles/ClientServer.dir/src/client/client.cpp.o.requires

.PHONY : CMakeFiles/ClientServer.dir/requires

CMakeFiles/ClientServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ClientServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ClientServer.dir/clean

CMakeFiles/ClientServer.dir/depend:
	cd /home/andre-shap/cmakeClientServer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andre-shap/cmakeClientServer /home/andre-shap/cmakeClientServer /home/andre-shap/cmakeClientServer /home/andre-shap/cmakeClientServer /home/andre-shap/cmakeClientServer/CMakeFiles/ClientServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ClientServer.dir/depend

