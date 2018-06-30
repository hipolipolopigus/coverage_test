find_package(GTest REQUIRED)

function(enable_gtest TARGET)
	target_link_libraries(${TARGET} ${GTEST_BOTH_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT})
	target_include_directories(${TARGET} PUBLIC ${GTEST_INCLUDE_DIRS})
endfunction()