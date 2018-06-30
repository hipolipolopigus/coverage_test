SET(GCC_COVERAGE_COMPILE_FLAGS "-fprofile-arcs -ftest-coverage")
SET(GCC_COVERAGE_LINK_FLAGS    "-fprofile-arcs -fprofile-generate -lgcov --coverage")
add_definitions(${GCC_COVERAGE_COMPILE_FLAGS})

project(lib_tests)
add_executable(lib_tests ../main.cpp libClassTest.cpp)
enable_lib(lib_tests)
enable_gtest(lib_tests)