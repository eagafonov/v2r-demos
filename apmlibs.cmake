set(apm_libs_sources
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Common/c++.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Common/AP_Common.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Common/AP_Test.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Common/Arduino.h


    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/AnalogIn.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/AP_HAL_Boards.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/AP_HAL_Macros.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/AP_HAL_Namespace.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/AP_HAL.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/GPIO.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/HAL.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/I2CDriver.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/RCInput.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/RCOutput.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/Scheduler.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/Semaphores.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/SPIDriver.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/Storage.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/UARTDriver.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/UARTDriver.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/Util.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/Util.h

    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/ftoa_engine.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/print_vprintf.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/Print.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/utoa_invert.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/BetterStream.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/FastDelegate.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/ftoa_engine.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/print_vprintf.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/Print.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/Stream.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL/utility/xtoa_fast.h



    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/AnalogIn.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/GPIO.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/HAL_Linux_Class.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/I2CDriver.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/RCInput.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/RCOutput.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/Scheduler.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/Semaphores.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/SPIDriver.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/Storage.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/UARTDriver.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/AnalogIn.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/AP_HAL_Linux_Main.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/AP_HAL_Linux_Namespace.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/AP_HAL_Linux_Private.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/AP_HAL_Linux.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/GPIO.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/HAL_Linux_Class.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/I2CDriver.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/RCInput.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/RCOutput.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/Scheduler.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/Semaphores.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/SPIDriver.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/Storage.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/UARTDriver.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux/Util.h

    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Compass/AP_Compass_HIL.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Compass/AP_Compass_HMC5843.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Compass/AP_Compass_PX4.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Compass/Compass.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Compass/AP_Compass_HIL.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Compass/AP_Compass_HMC5843.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Compass/AP_Compass_PX4.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Compass/AP_Compass.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Compass/Compass.h

    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Declination/AP_Declination.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Declination/AP_Declination.h

    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Param/AP_Param.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Param/AP_Param.h

    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/AP_Math.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/location.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/matrix3.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/polygon.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/quaternion.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/vector2.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/vector3.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/AP_Math_AVR_Compat.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/AP_Math.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/matrix3.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/polygon.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/quaternion.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/rotations.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/vector2.h
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math/vector3.h



)

add_definitions(-DCONFIG_HAL_BOARD=HAL_BOARD_LINUX)
add_definitions(-DSKETCHNAME="apmdemo")

set(AP_LIBS
    ardupilot
    pthread
    rt
)

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Progmem
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_HAL_Linux
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Common
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Math
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Param
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Declination
    ${CMAKE_CURRENT_SOURCE_DIR}/ardupilot/libraries/AP_Compass
    )

add_library(ardupilot
    ${apm_libs_sources}
)