# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Qt\Tools\CMake_64\bin\cmake.exe

# The command to remove a file.
RM = C:\Qt\Tools\CMake_64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\Esercizio_2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\build-Esercizio_2-Desktop-Profile"

# Include any dependencies generated for this target.
include CMakeFiles/sorting.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sorting.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sorting.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sorting.dir/flags.make

CMakeFiles/sorting.dir/main.cpp.obj: CMakeFiles/sorting.dir/flags.make
CMakeFiles/sorting.dir/main.cpp.obj: CMakeFiles/sorting.dir/includes_CXX.rsp
CMakeFiles/sorting.dir/main.cpp.obj: C:/Users/UTENTE/Desktop/secondi\ es\ PCS/Esercitazione_6_Sorting/Esercizio_2/main.cpp
CMakeFiles/sorting.dir/main.cpp.obj: CMakeFiles/sorting.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\build-Esercizio_2-Desktop-Profile\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sorting.dir/main.cpp.obj"
	C:\Qt\Tools\mingw1120_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sorting.dir/main.cpp.obj -MF CMakeFiles\sorting.dir\main.cpp.obj.d -o CMakeFiles\sorting.dir\main.cpp.obj -c "C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\Esercizio_2\main.cpp"

CMakeFiles/sorting.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sorting.dir/main.cpp.i"
	C:\Qt\Tools\mingw1120_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\Esercizio_2\main.cpp" > CMakeFiles\sorting.dir\main.cpp.i

CMakeFiles/sorting.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sorting.dir/main.cpp.s"
	C:\Qt\Tools\mingw1120_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\Esercizio_2\main.cpp" -o CMakeFiles\sorting.dir\main.cpp.s

# Object files for target sorting
sorting_OBJECTS = \
"CMakeFiles/sorting.dir/main.cpp.obj"

# External object files for target sorting
sorting_EXTERNAL_OBJECTS =

sorting.exe: CMakeFiles/sorting.dir/main.cpp.obj
sorting.exe: CMakeFiles/sorting.dir/build.make
sorting.exe: C:/Users/UTENTE/Desktop/secondi\ es\ PCS/Esercitazione_6_Sorting/externals/Main_Install/googletest/lib/libgtest.a
sorting.exe: C:/Users/UTENTE/Desktop/secondi\ es\ PCS/Esercitazione_6_Sorting/externals/Main_Install/googletest/lib/libgtest_main.a
sorting.exe: C:/Users/UTENTE/Desktop/secondi\ es\ PCS/Esercitazione_6_Sorting/externals/Main_Install/googletest/lib/libgmock.a
sorting.exe: C:/Users/UTENTE/Desktop/secondi\ es\ PCS/Esercitazione_6_Sorting/externals/Main_Install/googletest/lib/libgmock_main.a
sorting.exe: C:/Users/UTENTE/Desktop/secondi\ es\ PCS/Esercitazione_6_Sorting/externals/Main_Install/googletest/lib/libgmock.a
sorting.exe: C:/Users/UTENTE/Desktop/secondi\ es\ PCS/Esercitazione_6_Sorting/externals/Main_Install/googletest/lib/libgtest.a
sorting.exe: CMakeFiles/sorting.dir/linklibs.rsp
sorting.exe: CMakeFiles/sorting.dir/objects1.rsp
sorting.exe: CMakeFiles/sorting.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\build-Esercizio_2-Desktop-Profile\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sorting.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\sorting.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sorting.dir/build: sorting.exe
.PHONY : CMakeFiles/sorting.dir/build

CMakeFiles/sorting.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\sorting.dir\cmake_clean.cmake
.PHONY : CMakeFiles/sorting.dir/clean

CMakeFiles/sorting.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\Esercizio_2" "C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\Esercizio_2" "C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\build-Esercizio_2-Desktop-Profile" "C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\build-Esercizio_2-Desktop-Profile" "C:\Users\UTENTE\Desktop\secondi es PCS\Esercitazione_6_Sorting\build-Esercizio_2-Desktop-Profile\CMakeFiles\sorting.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/sorting.dir/depend

