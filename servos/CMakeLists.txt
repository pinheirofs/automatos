    set(CMAKE_TOOLCHAIN_FILE ./cmake/ArduinoToolchain.cmake)

cmake_minimum_required(VERSION 2.8)

project(servos)

# configuracoes da lib
set(servos_lib_BOARD uno)
set(servos_lib_SRCS servosLib.cpp)
Set(servos_lib_HDRS servosLib.hpp)
set(servos_lib_ARDLIBS Servo)

generate_arduino_library(servos_lib)

# configuracoes do executavel
set(servos_BOARD uno)
set(servos_PORT /dev/ttyACM0)
set(servos_SRCS servos.cpp)
set(servos_LIBS servos_lib)
set(servos_ARDLIBS Servo)

generate_arduino_firmware(servos)

