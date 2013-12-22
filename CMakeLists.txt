cmake_minimum_required (VERSION 2.8) 
project (v2r-adc-demo)

include(${CMAKE_SOURCE_DIR}/settings.cmake)
include(${CMAKE_SOURCE_DIR}/cross.cmake)

include(${CMAKE_SOURCE_DIR}/v2r.cmake) # DO	NOT	COMMIT

add_subdirectory(adc)
add_subdirectory(simple)

