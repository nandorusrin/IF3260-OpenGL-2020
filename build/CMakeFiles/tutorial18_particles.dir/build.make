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
CMAKE_SOURCE_DIR = /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build

# Include any dependencies generated for this target.
include CMakeFiles/tutorial18_particles.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tutorial18_particles.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tutorial18_particles.dir/flags.make

CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o: CMakeFiles/tutorial18_particles.dir/flags.make
CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o: ../tutorial18_billboards_and_particles/tutorial18_particles.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o -c /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/tutorial18_billboards_and_particles/tutorial18_particles.cpp

CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/tutorial18_billboards_and_particles/tutorial18_particles.cpp > CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.i

CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/tutorial18_billboards_and_particles/tutorial18_particles.cpp -o CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.s

CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o.requires:

.PHONY : CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o.requires

CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o.provides: CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial18_particles.dir/build.make CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o.provides

CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o.provides.build: CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o


CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o: CMakeFiles/tutorial18_particles.dir/flags.make
CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o: ../common/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o -c /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/common/shader.cpp

CMakeFiles/tutorial18_particles.dir/common/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial18_particles.dir/common/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/common/shader.cpp > CMakeFiles/tutorial18_particles.dir/common/shader.cpp.i

CMakeFiles/tutorial18_particles.dir/common/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial18_particles.dir/common/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/common/shader.cpp -o CMakeFiles/tutorial18_particles.dir/common/shader.cpp.s

CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o.requires:

.PHONY : CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o.requires

CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o.provides: CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial18_particles.dir/build.make CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o.provides

CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o.provides.build: CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o


CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o: CMakeFiles/tutorial18_particles.dir/flags.make
CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o: ../common/texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o -c /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/common/texture.cpp

CMakeFiles/tutorial18_particles.dir/common/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial18_particles.dir/common/texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/common/texture.cpp > CMakeFiles/tutorial18_particles.dir/common/texture.cpp.i

CMakeFiles/tutorial18_particles.dir/common/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial18_particles.dir/common/texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/common/texture.cpp -o CMakeFiles/tutorial18_particles.dir/common/texture.cpp.s

CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o.requires:

.PHONY : CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o.requires

CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o.provides: CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial18_particles.dir/build.make CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o.provides

CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o.provides.build: CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o


CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o: CMakeFiles/tutorial18_particles.dir/flags.make
CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o: ../common/controls.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o -c /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/common/controls.cpp

CMakeFiles/tutorial18_particles.dir/common/controls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial18_particles.dir/common/controls.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/common/controls.cpp > CMakeFiles/tutorial18_particles.dir/common/controls.cpp.i

CMakeFiles/tutorial18_particles.dir/common/controls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial18_particles.dir/common/controls.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/common/controls.cpp -o CMakeFiles/tutorial18_particles.dir/common/controls.cpp.s

CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o.requires:

.PHONY : CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o.requires

CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o.provides: CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o.requires
	$(MAKE) -f CMakeFiles/tutorial18_particles.dir/build.make CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o.provides.build
.PHONY : CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o.provides

CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o.provides.build: CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o


# Object files for target tutorial18_particles
tutorial18_particles_OBJECTS = \
"CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o" \
"CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o" \
"CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o" \
"CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o"

# External object files for target tutorial18_particles
tutorial18_particles_EXTERNAL_OBJECTS =

tutorial18_particles: CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o
tutorial18_particles: CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o
tutorial18_particles: CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o
tutorial18_particles: CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o
tutorial18_particles: CMakeFiles/tutorial18_particles.dir/build.make
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libGL.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libGLU.so
tutorial18_particles: external/glfw-3.1.2/src/libglfw3.a
tutorial18_particles: external/libGLEW_1130.a
tutorial18_particles: /usr/lib/x86_64-linux-gnu/librt.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libm.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libX11.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libXrandr.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libXinerama.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libXi.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libXcursor.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/librt.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libm.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libX11.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libXrandr.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libXinerama.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libXi.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libXcursor.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libGL.so
tutorial18_particles: /usr/lib/x86_64-linux-gnu/libGLU.so
tutorial18_particles: CMakeFiles/tutorial18_particles.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable tutorial18_particles"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial18_particles.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -E copy /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/./tutorial18_particles /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/tutorial18_billboards_and_particles/

# Rule to build all files generated by this target.
CMakeFiles/tutorial18_particles.dir/build: tutorial18_particles

.PHONY : CMakeFiles/tutorial18_particles.dir/build

CMakeFiles/tutorial18_particles.dir/requires: CMakeFiles/tutorial18_particles.dir/tutorial18_billboards_and_particles/tutorial18_particles.cpp.o.requires
CMakeFiles/tutorial18_particles.dir/requires: CMakeFiles/tutorial18_particles.dir/common/shader.cpp.o.requires
CMakeFiles/tutorial18_particles.dir/requires: CMakeFiles/tutorial18_particles.dir/common/texture.cpp.o.requires
CMakeFiles/tutorial18_particles.dir/requires: CMakeFiles/tutorial18_particles.dir/common/controls.cpp.o.requires

.PHONY : CMakeFiles/tutorial18_particles.dir/requires

CMakeFiles/tutorial18_particles.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tutorial18_particles.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tutorial18_particles.dir/clean

CMakeFiles/tutorial18_particles.dir/depend:
	cd /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020 /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020 /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/CMakeFiles/tutorial18_particles.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tutorial18_particles.dir/depend

