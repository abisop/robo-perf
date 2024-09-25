set(ARCHCFLAGS          "-Wstrict-prototypes -Wno-attributes -Wno-unknown-pragmas -Wno-psabi")
set(ARCHCPUFLAGS        "-mlittle-endian -march=armv7e-m -mtune=cortex-m4 -mfloat-abi=soft -mthumb -Wa,-mthumb -Wa,-mimplicit-it=always")
set(ARCHCXXFLAGS        "-Wno-attributes -Wno-unknown-pragmas -nostdinc++ -Wno-psabi -std=gnu++17 -fno-exceptions -fcheck-new -fno-rtti")
set(ARCHPICFLAGS        "-fpic -msingle-pic-base -mpic-register=r10")
set(ARCHWARNINGS        "")
set(ARCHWARNINGSXX      "")
set(ARCHOPTIMIZATION    "-Os -fno-strict-aliasing -fomit-frame-pointer -fno-common -Wall -Wshadow -Wundef -ffunction-sections -fdata-sections -g")
set(CROSSDEV            "arm-none-eabi-")
set(CMAKE_C_COMPILER    "arm-none-eabi-gcc")
set(CMAKE_CXX_COMPILER  "arm-none-eabi-g++")
set(CMAKE_LINKER        "arm-none-eabi-ld")
set(CMAKE_OBJCOPY       "arm-none-eabi-objcopy")
set(CMAKE_OBJDUMP       "arm-none-eabi-objdump")
set(NXFLATLDFLAGS1      "-r -d -warn-common")
set(NXFLATLDFLAGS2      "-r -d -warn-common -T/home/abisop-nvme/nuttxspace/nuttx/binfmt/libnxflat/gnu-nxflat-pcrel.ld -no-check-sections")
set(OBJEXT              ".o")
set(LIBEXT              ".a")
set(EXEEXT              "")
set(HOSTCC              "cc")
set(HOSTINCLUDES        "")
set(HOSTCFLAGS          "-O2 -Wall -Wstrict-prototypes -Wshadow -DHAVE_STRTOK_C=1")
set(HOSTLDFLAGS         "")
set(HOSTEXEEXT          "")
set(LDNAME              "f401re.ld")
set(LDELFFLAGS          "")
set(NUTTX_ARCH          "arm")
set(NUTTX_ARCH_CHIP     "stm32")
set(NUTTX_BOARD         "nucleo-f4x1re")
set(NUTTX_BUILD         "flat")
set(NUTTX_CXX           "cxx")
set(EXTRA_LIBS       "/opt/gcc-arm-none-eabi-10-2020-q4-major/bin/../lib/gcc/arm-none-eabi/10.2.1/thumb/v7e-m/nofp/libgcc.a /opt/gcc-arm-none-eabi-10-2020-q4-major/bin/../lib/gcc/arm-none-eabi/10.2.1/../../../../arm-none-eabi/lib/thumb/v7e-m/nofp/libm.a")
set(EXTRA_OBJS       "")
set(HEAD_OBJ         "")
set(LDENDGROUP       "")
set(LDFLAGS          "-nostdlib --gc-sections --cref -Map=/home/abisop-nvme/nuttxspace/nuttx/nuttx.map")
set(LDSTARTGROUP     "")
set(LDLIBS     "-lsched -ldrivers -lboards -lc -lmm -larch -lxx -lapps -lfs -lbinfmt -lboard ")
