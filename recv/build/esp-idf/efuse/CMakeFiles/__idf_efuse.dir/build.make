# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kkz/6_sotsuken/recv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kkz/6_sotsuken/recv/build

# Include any dependencies generated for this target.
include esp-idf/efuse/CMakeFiles/__idf_efuse.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/efuse/CMakeFiles/__idf_efuse.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/efuse/CMakeFiles/__idf_efuse.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/efuse/CMakeFiles/__idf_efuse.dir/flags.make

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/flags.make
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.obj: /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_table.c
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kkz/6_sotsuken/recv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.obj"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.obj -MF CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.obj.d -o CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.obj -c /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_table.c

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.i"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_table.c > CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.i

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.s"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_table.c -o CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.s

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/flags.make
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.obj: /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_fields.c
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kkz/6_sotsuken/recv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.obj"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.obj -MF CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.obj.d -o CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.obj -c /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_fields.c

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.i"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_fields.c > CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.i

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.s"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_fields.c -o CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.s

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/flags.make
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.obj: /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_rtc_calib.c
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kkz/6_sotsuken/recv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.obj"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.obj -MF CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.obj.d -o CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.obj -c /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_rtc_calib.c

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.i"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_rtc_calib.c > CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.i

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.s"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_rtc_calib.c -o CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.s

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/flags.make
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.obj: /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_utility.c
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kkz/6_sotsuken/recv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.obj"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.obj -MF CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.obj.d -o CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.obj -c /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_utility.c

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.i"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_utility.c > CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.i

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.s"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kkz/esp-idf/components/efuse/esp32c3/esp_efuse_utility.c -o CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.s

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/flags.make
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.obj: /Users/kkz/esp-idf/components/efuse/src/esp_efuse_api.c
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kkz/6_sotsuken/recv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.obj"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.obj -MF CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.obj.d -o CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.obj -c /Users/kkz/esp-idf/components/efuse/src/esp_efuse_api.c

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.i"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kkz/esp-idf/components/efuse/src/esp_efuse_api.c > CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.i

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.s"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kkz/esp-idf/components/efuse/src/esp_efuse_api.c -o CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.s

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/flags.make
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.obj: /Users/kkz/esp-idf/components/efuse/src/esp_efuse_fields.c
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kkz/6_sotsuken/recv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.obj"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.obj -MF CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.obj.d -o CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.obj -c /Users/kkz/esp-idf/components/efuse/src/esp_efuse_fields.c

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.i"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kkz/esp-idf/components/efuse/src/esp_efuse_fields.c > CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.i

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.s"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kkz/esp-idf/components/efuse/src/esp_efuse_fields.c -o CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.s

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/flags.make
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.obj: /Users/kkz/esp-idf/components/efuse/src/esp_efuse_utility.c
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kkz/6_sotsuken/recv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.obj"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.obj -MF CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.obj.d -o CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.obj -c /Users/kkz/esp-idf/components/efuse/src/esp_efuse_utility.c

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.i"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kkz/esp-idf/components/efuse/src/esp_efuse_utility.c > CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.i

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.s"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kkz/esp-idf/components/efuse/src/esp_efuse_utility.c -o CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.s

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/flags.make
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.obj: /Users/kkz/esp-idf/components/efuse/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kkz/6_sotsuken/recv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.obj"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.obj -MF CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.obj.d -o CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.obj -c /Users/kkz/esp-idf/components/efuse/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.i"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kkz/esp-idf/components/efuse/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c > CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.i

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.s"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kkz/esp-idf/components/efuse/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c -o CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.s

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/flags.make
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.obj: /Users/kkz/esp-idf/components/efuse/src/esp_efuse_startup.c
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.obj: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kkz/6_sotsuken/recv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.obj"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.obj -MF CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.obj.d -o CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.obj -c /Users/kkz/esp-idf/components/efuse/src/esp_efuse_startup.c

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.i"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/kkz/esp-idf/components/efuse/src/esp_efuse_startup.c > CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.i

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.s"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && /Users/kkz/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20240530/riscv32-esp-elf/bin/riscv32-esp-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/kkz/esp-idf/components/efuse/src/esp_efuse_startup.c -o CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.s

# Object files for target __idf_efuse
__idf_efuse_OBJECTS = \
"CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.obj" \
"CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.obj" \
"CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.obj" \
"CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.obj" \
"CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.obj" \
"CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.obj" \
"CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.obj" \
"CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.obj" \
"CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.obj"

# External object files for target __idf_efuse
__idf_efuse_EXTERNAL_OBJECTS =

esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_table.c.obj
esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_fields.c.obj
esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_rtc_calib.c.obj
esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/esp32c3/esp_efuse_utility.c.obj
esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_api.c.obj
esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_fields.c.obj
esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_utility.c.obj
esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/efuse_controller/keys/with_key_purposes/esp_efuse_api_key.c.obj
esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/src/esp_efuse_startup.c.obj
esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/build.make
esp-idf/efuse/libefuse.a: esp-idf/efuse/CMakeFiles/__idf_efuse.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/kkz/6_sotsuken/recv/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C static library libefuse.a"
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && $(CMAKE_COMMAND) -P CMakeFiles/__idf_efuse.dir/cmake_clean_target.cmake
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_efuse.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/efuse/CMakeFiles/__idf_efuse.dir/build: esp-idf/efuse/libefuse.a
.PHONY : esp-idf/efuse/CMakeFiles/__idf_efuse.dir/build

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/clean:
	cd /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse && $(CMAKE_COMMAND) -P CMakeFiles/__idf_efuse.dir/cmake_clean.cmake
.PHONY : esp-idf/efuse/CMakeFiles/__idf_efuse.dir/clean

esp-idf/efuse/CMakeFiles/__idf_efuse.dir/depend:
	cd /Users/kkz/6_sotsuken/recv/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kkz/6_sotsuken/recv /Users/kkz/esp-idf/components/efuse /Users/kkz/6_sotsuken/recv/build /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse /Users/kkz/6_sotsuken/recv/build/esp-idf/efuse/CMakeFiles/__idf_efuse.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : esp-idf/efuse/CMakeFiles/__idf_efuse.dir/depend
