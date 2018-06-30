cmake_minimum_required(VERSION 3.11)
project(coverage_test)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_SKIP_RULE_DEPENDENCY TRUE)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/.bin/${CMAKE_BUILD_TYPE})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/.lib/${CMAKE_BUILD_TYPE})
message(STATUS "Bin Directory: ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")

include(cmake/coverage.cmake)
include(cmake/gtest.cmake)
include(cmake/qt5.cmake)

add_subdirectory(src/lib)
add_subdirectory(src/app)

include(CTest)
enable_testing()
add_subdirectory(test/lib)