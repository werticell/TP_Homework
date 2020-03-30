add_library(buffer SHARED buffer.cpp)
install(TARGETS buffer 
    LIBRARY CMAKE_INSTALL_PREFIX lib 
    ARCHIVE CMAKE_INSTALL_PREFIX lib
)