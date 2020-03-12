cmake_minimum_required(VERSION 3.5)
add_library( myLibrary SHARED 
    ${CMAKE_CURRENT_SOURCE_DIR}/lib.h 
    ${CMAKE_CURRENT_SOURCE_DIR}/lib.cpp
)
set( LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../lib )