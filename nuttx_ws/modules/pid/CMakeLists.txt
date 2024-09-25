set(HEADER_FILES
		pid.h
)

set(SOURCE_FILES
		pid.c
)

link_directories(${NUTTX_PATH}/libs)


add_executable(${EXE_NAME} ${SOURCE_FILES} main.cpp)


add_custom_command(
        TARGET ${EXE_NAME}
        POST_BUILD
        COMMAND ${CMAKE_OBJCOPY} ARGS -S -O binary ${CMAKE_CURRENT_BINARY_DIR}/${EXE_NAME}.elf ${CMAKE_CURRENT_BINARY_DIR}/${EXE_NAME}.bin
)

message(${PROJECT_BINARY_DIR})
target_link_libraries(${EXE_NAME} 
    --start-group
    sched
    drivers
    boards
    c
    mm
    arch
    xx
    apps
    fs
    binfmt
    board
    gcc
    --end-group
)



