cmake_minimum_required( VERSION 3.5 )

project( myName VERSION 0.0.1 )

execute_process(COMMAND python3 preparing.py WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/A)

find_package(GTest REQUIRED)
find_package(Threads REQUIRED)

add_subdirectory( B )

add_executable( C ${CMAKE_CURRENT_SOURCE_DIR}/C/main.cpp )
add_executable( CTest 
                    ${CMAKE_CURRENT_SOURCE_DIR}/C/main_test.cpp 
                    ${CMAKE_CURRENT_SOURCE_DIR}/C/test.cpp
                    ${CMAKE_CURRENT_SOURCE_DIR}/C/test.h 
)
set( EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin )

include_directories(
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${GTEST_INCLUDE_DIRS}
)

target_link_libraries( C myLibrary )
target_link_libraries( CTest ${GTEST_LIBRARIES} Threads::Threads myLibrary)
