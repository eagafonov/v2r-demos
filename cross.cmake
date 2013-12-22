set(V2R_CS_PATH
    ${V2R_SDK_ROOT}/codesourcery/arm-2013.05
)

set(CROSS_COMPILE
    ${V2R_CS_PATH}/bin/arm-none-linux-gnueabi-
)

set (CMAKE_C_COMPILER ${CROSS_COMPILE}gcc)
set (CMAKE_CXX_COMPILER ${CROSS_COMPILE}g++)

include_directories(${V2R_SDK_ROOT}/kernel/include)
