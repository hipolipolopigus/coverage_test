#Platform specific fixes
if (WIN32)
	add_definitions(-DFOO)
elseif (UNIX)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")
	find_package (Threads)
endif ()