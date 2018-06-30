project(lib)
add_library(lib libClass.cpp libClassTest.h)
enable_qt5(lib)

function(enable_lib TARGET)
	target_link_libraries(${TARGET} lib)
	target_include_directories(${TARGET} PUBLIC ${lib_SOURCE_DIR})
	enable_qt5(${TARGET})
endfunction()