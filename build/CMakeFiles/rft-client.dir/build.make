# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /snap/cmake/1425/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1425/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/seed/Documents/realp3/RFT-Client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/seed/Documents/realp3/RFT-Client/build

# Include any dependencies generated for this target.
include CMakeFiles/rft-client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rft-client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rft-client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rft-client.dir/flags.make

CMakeFiles/rft-client.dir/codegen:
.PHONY : CMakeFiles/rft-client.dir/codegen

CMakeFiles/rft-client.dir/unreliableTransport.cpp.o: CMakeFiles/rft-client.dir/flags.make
CMakeFiles/rft-client.dir/unreliableTransport.cpp.o: /home/seed/Documents/realp3/RFT-Client/unreliableTransport.cpp
CMakeFiles/rft-client.dir/unreliableTransport.cpp.o: CMakeFiles/rft-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/seed/Documents/realp3/RFT-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rft-client.dir/unreliableTransport.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rft-client.dir/unreliableTransport.cpp.o -MF CMakeFiles/rft-client.dir/unreliableTransport.cpp.o.d -o CMakeFiles/rft-client.dir/unreliableTransport.cpp.o -c /home/seed/Documents/realp3/RFT-Client/unreliableTransport.cpp

CMakeFiles/rft-client.dir/unreliableTransport.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rft-client.dir/unreliableTransport.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/seed/Documents/realp3/RFT-Client/unreliableTransport.cpp > CMakeFiles/rft-client.dir/unreliableTransport.cpp.i

CMakeFiles/rft-client.dir/unreliableTransport.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rft-client.dir/unreliableTransport.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/seed/Documents/realp3/RFT-Client/unreliableTransport.cpp -o CMakeFiles/rft-client.dir/unreliableTransport.cpp.s

CMakeFiles/rft-client.dir/main.cpp.o: CMakeFiles/rft-client.dir/flags.make
CMakeFiles/rft-client.dir/main.cpp.o: /home/seed/Documents/realp3/RFT-Client/main.cpp
CMakeFiles/rft-client.dir/main.cpp.o: CMakeFiles/rft-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/seed/Documents/realp3/RFT-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rft-client.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rft-client.dir/main.cpp.o -MF CMakeFiles/rft-client.dir/main.cpp.o.d -o CMakeFiles/rft-client.dir/main.cpp.o -c /home/seed/Documents/realp3/RFT-Client/main.cpp

CMakeFiles/rft-client.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rft-client.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/seed/Documents/realp3/RFT-Client/main.cpp > CMakeFiles/rft-client.dir/main.cpp.i

CMakeFiles/rft-client.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rft-client.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/seed/Documents/realp3/RFT-Client/main.cpp -o CMakeFiles/rft-client.dir/main.cpp.s

CMakeFiles/rft-client.dir/datagram.cpp.o: CMakeFiles/rft-client.dir/flags.make
CMakeFiles/rft-client.dir/datagram.cpp.o: /home/seed/Documents/realp3/RFT-Client/datagram.cpp
CMakeFiles/rft-client.dir/datagram.cpp.o: CMakeFiles/rft-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/seed/Documents/realp3/RFT-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rft-client.dir/datagram.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rft-client.dir/datagram.cpp.o -MF CMakeFiles/rft-client.dir/datagram.cpp.o.d -o CMakeFiles/rft-client.dir/datagram.cpp.o -c /home/seed/Documents/realp3/RFT-Client/datagram.cpp

CMakeFiles/rft-client.dir/datagram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rft-client.dir/datagram.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/seed/Documents/realp3/RFT-Client/datagram.cpp > CMakeFiles/rft-client.dir/datagram.cpp.i

CMakeFiles/rft-client.dir/datagram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rft-client.dir/datagram.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/seed/Documents/realp3/RFT-Client/datagram.cpp -o CMakeFiles/rft-client.dir/datagram.cpp.s

CMakeFiles/rft-client.dir/timerC.cpp.o: CMakeFiles/rft-client.dir/flags.make
CMakeFiles/rft-client.dir/timerC.cpp.o: /home/seed/Documents/realp3/RFT-Client/timerC.cpp
CMakeFiles/rft-client.dir/timerC.cpp.o: CMakeFiles/rft-client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/seed/Documents/realp3/RFT-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/rft-client.dir/timerC.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rft-client.dir/timerC.cpp.o -MF CMakeFiles/rft-client.dir/timerC.cpp.o.d -o CMakeFiles/rft-client.dir/timerC.cpp.o -c /home/seed/Documents/realp3/RFT-Client/timerC.cpp

CMakeFiles/rft-client.dir/timerC.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rft-client.dir/timerC.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/seed/Documents/realp3/RFT-Client/timerC.cpp > CMakeFiles/rft-client.dir/timerC.cpp.i

CMakeFiles/rft-client.dir/timerC.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rft-client.dir/timerC.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/seed/Documents/realp3/RFT-Client/timerC.cpp -o CMakeFiles/rft-client.dir/timerC.cpp.s

# Object files for target rft-client
rft__client_OBJECTS = \
"CMakeFiles/rft-client.dir/unreliableTransport.cpp.o" \
"CMakeFiles/rft-client.dir/main.cpp.o" \
"CMakeFiles/rft-client.dir/datagram.cpp.o" \
"CMakeFiles/rft-client.dir/timerC.cpp.o"

# External object files for target rft-client
rft__client_EXTERNAL_OBJECTS =

rft-client: CMakeFiles/rft-client.dir/unreliableTransport.cpp.o
rft-client: CMakeFiles/rft-client.dir/main.cpp.o
rft-client: CMakeFiles/rft-client.dir/datagram.cpp.o
rft-client: CMakeFiles/rft-client.dir/timerC.cpp.o
rft-client: CMakeFiles/rft-client.dir/build.make
rft-client: CMakeFiles/rft-client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/seed/Documents/realp3/RFT-Client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable rft-client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rft-client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rft-client.dir/build: rft-client
.PHONY : CMakeFiles/rft-client.dir/build

CMakeFiles/rft-client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rft-client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rft-client.dir/clean

CMakeFiles/rft-client.dir/depend:
	cd /home/seed/Documents/realp3/RFT-Client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/seed/Documents/realp3/RFT-Client /home/seed/Documents/realp3/RFT-Client /home/seed/Documents/realp3/RFT-Client/build /home/seed/Documents/realp3/RFT-Client/build /home/seed/Documents/realp3/RFT-Client/build/CMakeFiles/rft-client.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/rft-client.dir/depend
