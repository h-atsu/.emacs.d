# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.17.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.17.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build

# Include any dependencies generated for this target.
include src/CMakeFiles/irony-server.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/irony-server.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/irony-server.dir/flags.make

src/CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.o: src/CMakeFiles/irony-server.dir/flags.make
src/CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.o: ../src/support/CommandLineParser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.o"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.o -c /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/support/CommandLineParser.cpp

src/CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.i"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/support/CommandLineParser.cpp > CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.i

src/CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.s"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/support/CommandLineParser.cpp -o CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.s

src/CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.o: src/CMakeFiles/irony-server.dir/flags.make
src/CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.o: ../src/support/TemporaryFile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.o"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.o -c /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/support/TemporaryFile.cpp

src/CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.i"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/support/TemporaryFile.cpp > CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.i

src/CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.s"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/support/TemporaryFile.cpp -o CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.s

src/CMakeFiles/irony-server.dir/Command.cpp.o: src/CMakeFiles/irony-server.dir/flags.make
src/CMakeFiles/irony-server.dir/Command.cpp.o: ../src/Command.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/irony-server.dir/Command.cpp.o"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/irony-server.dir/Command.cpp.o -c /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/Command.cpp

src/CMakeFiles/irony-server.dir/Command.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/irony-server.dir/Command.cpp.i"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/Command.cpp > CMakeFiles/irony-server.dir/Command.cpp.i

src/CMakeFiles/irony-server.dir/Command.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/irony-server.dir/Command.cpp.s"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/Command.cpp -o CMakeFiles/irony-server.dir/Command.cpp.s

src/CMakeFiles/irony-server.dir/CompDBCache.cpp.o: src/CMakeFiles/irony-server.dir/flags.make
src/CMakeFiles/irony-server.dir/CompDBCache.cpp.o: ../src/CompDBCache.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/irony-server.dir/CompDBCache.cpp.o"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/irony-server.dir/CompDBCache.cpp.o -c /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/CompDBCache.cpp

src/CMakeFiles/irony-server.dir/CompDBCache.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/irony-server.dir/CompDBCache.cpp.i"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/CompDBCache.cpp > CMakeFiles/irony-server.dir/CompDBCache.cpp.i

src/CMakeFiles/irony-server.dir/CompDBCache.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/irony-server.dir/CompDBCache.cpp.s"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/CompDBCache.cpp -o CMakeFiles/irony-server.dir/CompDBCache.cpp.s

src/CMakeFiles/irony-server.dir/Irony.cpp.o: src/CMakeFiles/irony-server.dir/flags.make
src/CMakeFiles/irony-server.dir/Irony.cpp.o: ../src/Irony.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/irony-server.dir/Irony.cpp.o"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/irony-server.dir/Irony.cpp.o -c /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/Irony.cpp

src/CMakeFiles/irony-server.dir/Irony.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/irony-server.dir/Irony.cpp.i"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/Irony.cpp > CMakeFiles/irony-server.dir/Irony.cpp.i

src/CMakeFiles/irony-server.dir/Irony.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/irony-server.dir/Irony.cpp.s"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/Irony.cpp -o CMakeFiles/irony-server.dir/Irony.cpp.s

src/CMakeFiles/irony-server.dir/TUManager.cpp.o: src/CMakeFiles/irony-server.dir/flags.make
src/CMakeFiles/irony-server.dir/TUManager.cpp.o: ../src/TUManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/irony-server.dir/TUManager.cpp.o"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/irony-server.dir/TUManager.cpp.o -c /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/TUManager.cpp

src/CMakeFiles/irony-server.dir/TUManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/irony-server.dir/TUManager.cpp.i"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/TUManager.cpp > CMakeFiles/irony-server.dir/TUManager.cpp.i

src/CMakeFiles/irony-server.dir/TUManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/irony-server.dir/TUManager.cpp.s"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/TUManager.cpp -o CMakeFiles/irony-server.dir/TUManager.cpp.s

src/CMakeFiles/irony-server.dir/main.cpp.o: src/CMakeFiles/irony-server.dir/flags.make
src/CMakeFiles/irony-server.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/irony-server.dir/main.cpp.o"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) -DIRONY_PACKAGE_VERSION=\"1.4.0\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/irony-server.dir/main.cpp.o -c /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/main.cpp

src/CMakeFiles/irony-server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/irony-server.dir/main.cpp.i"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) -DIRONY_PACKAGE_VERSION=\"1.4.0\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/main.cpp > CMakeFiles/irony-server.dir/main.cpp.i

src/CMakeFiles/irony-server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/irony-server.dir/main.cpp.s"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) -DIRONY_PACKAGE_VERSION=\"1.4.0\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src/main.cpp -o CMakeFiles/irony-server.dir/main.cpp.s

# Object files for target irony-server
irony__server_OBJECTS = \
"CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.o" \
"CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.o" \
"CMakeFiles/irony-server.dir/Command.cpp.o" \
"CMakeFiles/irony-server.dir/CompDBCache.cpp.o" \
"CMakeFiles/irony-server.dir/Irony.cpp.o" \
"CMakeFiles/irony-server.dir/TUManager.cpp.o" \
"CMakeFiles/irony-server.dir/main.cpp.o"

# External object files for target irony-server
irony__server_EXTERNAL_OBJECTS =

bin/irony-server: src/CMakeFiles/irony-server.dir/support/CommandLineParser.cpp.o
bin/irony-server: src/CMakeFiles/irony-server.dir/support/TemporaryFile.cpp.o
bin/irony-server: src/CMakeFiles/irony-server.dir/Command.cpp.o
bin/irony-server: src/CMakeFiles/irony-server.dir/CompDBCache.cpp.o
bin/irony-server: src/CMakeFiles/irony-server.dir/Irony.cpp.o
bin/irony-server: src/CMakeFiles/irony-server.dir/TUManager.cpp.o
bin/irony-server: src/CMakeFiles/irony-server.dir/main.cpp.o
bin/irony-server: src/CMakeFiles/irony-server.dir/build.make
bin/irony-server: /usr/local/opt/llvm/lib/libclang.dylib
bin/irony-server: src/CMakeFiles/irony-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable ../bin/irony-server"
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/irony-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/irony-server.dir/build: bin/irony-server

.PHONY : src/CMakeFiles/irony-server.dir/build

src/CMakeFiles/irony-server.dir/clean:
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src && $(CMAKE_COMMAND) -P CMakeFiles/irony-server.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/irony-server.dir/clean

src/CMakeFiles/irony-server.dir/depend:
	cd /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/src /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src /Users/atsuhirohada/.emacs.d/elpa/irony-20200130.849/server/build/src/CMakeFiles/irony-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/irony-server.dir/depend

