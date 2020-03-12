cmake_minimum_required( VERSION 3.5 )

project( myName VERSION 0.0.1 )

execute_process(COMMAND python3 preparing.py WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/A)

add_subdirectory( B )
add_executable( C ${CMAKE_CURRENT_SOURCE_DIR}/C/main.cpp )

make_directory( ${CMAKE_CURRENT_SOURCE_DIR}/bin )
make_directory( ${CMAKE_CURRENT_SOURCE_DIR}/lib )
set( EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin )

include_directories(
    C
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/B
    ${CMAKE_CURRENT_BINARY_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/A
    ${CMAKE_CURRENT_SOURCE_DIR}/C
    ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries( C myLibrary )
