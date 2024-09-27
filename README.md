# ROBO-perf
## System performance can be improved by two ways:
  1) improving the hardware
  2) improving the code


## Aim:
    To create tools for automated-debugging and profiling RTOS(Currently NUTTX) and ROS2(LINUX)
## This repo contains:
* Out of tree Nuttx Build
* gdb automation using python(To add : rtos awareness)
## Features To Add:
## AIM:
  The robot software performance can be reached to maximum by considering hardware.
  So keeping up that:
  * Optimizing and open sourcing debugging (not trivial but python scripted, considering arm-none-eabi-gdb-py3)
   ,profiling and tracing specific to time critical applications(considering drones).
    (inspiration - auterion/px4)
  * ROS2 performance by considering RT-linux and profiling to see better.
  * Using fpga to keep pace for the current standards without depending on ASICS
    (looking up to litex-a migen project - https://github.com/enjoy-digital/litex)
    (inspired by orbcode project - https://orbcode.org/)
