add_library(buffer SHARED buffer.cpp)
install(TARGETS MainLib Main 
    RUNTIME DESTINATION/bin
    LIBRARY DESTINATION/lib 
    ARCHIVE DESTINATION/lib
)