add_executable(apm-hello apm-hello.cpp)
target_link_libraries(apm-hello ${AP_LIBS})
v2r_scp(apm-hello)

add_executable(AP_Compass_test AP_Compass_test.cpp)
target_link_libraries(AP_Compass_test ${AP_LIBS})
v2r_scp(AP_Compass_test)
