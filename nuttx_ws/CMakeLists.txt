cmake_minimum_required(VERSION 3.2...3.15)
project(	gdb
		VERSION 1.0
		DESCRIPTION "project to testing gdb automation with python"
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_STANDARD 99)

set(NUTTX_PATH "${CMAKE_SOURCE_DIR}/nuttx")

include(cmake/stm32f4.cmake)

#flags required. To Do: Add short description of flags
set(AC_COMMON_FLAGS "${AC_COMMON_FLAGS} -Wall -Wshadow -Wundef -fno-strict-aliasing -Os")
set(AC_COMMON_FLAGS "${AC_COMMON_FLAGS} -D_DEBUG -D_LIBCPP_BUILD_STATIC -D_LIBCPP_NO_EXCEPTIONS ")
set(AC_COMMON_FLAGS "${AC_COMMON_FLAGS} -fno-exceptions -fcheck-new -fno-rtti -pedantic ")
set(AC_COMMON_FLAGS "${AC_COMMON_FLAGS} -nostdinc++")

set(AC_DEFINES "${AC_DEFINES} -DCONFIG_WCHAR_BUILTIN")

set(EXE_NAME nuttx)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${AC_HW_FLAGS} ${AC_DEFINES}")
set(CMAKE_CXX_FLAGS     "${AC_HW_FLAGS} ${AC_DEFINES} ${AC_COMMON_FLAGS} ${AC_CXX_EXTRA_FLAGS}")

#flags for creating debug symbols
set(CMAKE_CXX_FLAGS     "${CMAKE_CXX_FLAGS} -g")

set(CMAKE_SKIP_RPATH ON)
set(CMAKE_CXX_LINK_EXECUTABLE "${CMAKE_LINKER} ${AC_LINKER_FLAGS} -o ${EXE_NAME}.elf <OBJECTS> <LINK_LIBRARIES>")
set(BUILD_SHARED_LIBS OFF)

add_subdirectory(modules/pid)

