add_executable(simple-hello hello.cpp)
v2r_scp(simple-hello)

add_executable(simple-minimal-segfault minimal-segfault.c)
v2r_scp(simple-minimal-segfault)