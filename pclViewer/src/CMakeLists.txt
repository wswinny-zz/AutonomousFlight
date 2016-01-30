project(ExploringSfMWithOpenCV)
cmake_minimum_required(VERSION 2.8)

find_package(PCL REQUIRED)
if(EIGEN_INCLUDE_DIRS) # if compiling with PCL, it will bring Eigen with it
	message(STATUS "will use Eigen")
	include_directories(${EIGEN_INCLUDE_DIRS})
	add_definitions( -DUSE_EIGEN )
endif()

set(SSBA_LIBRARY_DIR "${CMAKE_SOURCE_DIR}/3rdparty/SSBA-3.0/build" CACHE PATH "Directory to find SSBA libs")

find_package(OpenCV REQUIRED)
find_package(OpenMP REQUIRED)
link_directories(
	${SSBA_LIBRARY_DIR}
	)

IF(APPLE)
	set( COCOA_LIBS ${CMAKE_OSX_SYSROOT}/System/Library/Frameworks/Cocoa.framework )
	set( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -F/usr/local/lib -L/opt/local/lib")
ENDIF(APPLE)

include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

link_directories(${SSBA_LIBRARY_DIR})
include_directories(${SSBA_LIBRARY_DIR}/../)

set( CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -D__SFM__DEBUG__" )

# UI part
add_executable(PclViewer 
	main.cpp
	)


target_link_libraries(PclViewer 
			${OpenCV_LIBS}
			${PCL_LIBRARIES}
			)

