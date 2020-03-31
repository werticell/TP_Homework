cmake_minimum_required(VERSION 3.0)

set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")

set(CMAKE_CXX_COMPILER ${TOOLCHAIN}/arm-linux-gnueabihf-g++) # 

project(SimpleLibrary)
include_directories(include)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_INSTALL_PREFIX}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_INSTALL_PREFIX}/lib)


add_subdirectory(src)
add_executable(Main main.cpp)
add_executable(MainLib main_lib.cpp)

target_link_libraries(MainLib buffer)

install(TARGETS MainLib Main 
    RUNTIME ${CMAKE_INSTALL_PREFIX}/bin
    LIBRARY ${CMAKE_INSTALL_PREFIX}/lib 
    ARCHIVE ${CMAKE_INSTALL_PREFIX}/lib
)