#Platform specific fixes
if (WIN32)
	add_definitions(-DFOO)
elseif (UNIX)
	find_package(Threads)
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread -lpthread -lm")
endif ()