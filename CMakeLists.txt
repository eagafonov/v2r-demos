cmake_minimum_required (VERSION 2.8)
project (v2r-adc-demo)

set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0 -g")
set (CMAKE_C_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0 -g")


include(${CMAKE_SOURCE_DIR}/settings.cmake)
# include(${CMAKE_SOURCE_DIR}/cross.cmake)

include(${CMAKE_SOURCE_DIR}/v2r.cmake)

include(apmlibs.cmake)


# add_subdirectory(adc)
# add_subdirectory(simple)

add_subdirectory(apm)