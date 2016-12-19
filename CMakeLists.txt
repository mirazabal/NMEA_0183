cmake_minimum_required (VERSION 2.6)
project (NMEA_0183)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_EXE_LINKER_FLAGS "-Wl,--no-as-needed -ldl")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -ldl")



include_directories(${NMEA_0183_SOURCE_DIR})
include_directories(${NMEA_0183_SOURCE_DIR}/include)
include_directories(${NMEA_0183_SOURCE_DIR}/include/src)
include_directories(${NMEA_0183_SOURCE_DIR}/include/gtest)


file(GLOB NMEA_0183_SRC
    "*.h"
	"*.hpp"
	"*.c"
    "*.cpp"
)

add_executable(NMEA_0183 ${NMEA_0183_SRC})

#find_library(NMEA_LIBRARY nmea HINTS /home/mikel/workspace/NMEA_0183/libnmea/examples/include)

#find_library(GPGLL_LIBRARY gpgll HINTS /home/mikel/workspace/NMEA_0183/libnmea/examples/include/nmea)

#find_library(GPGGA_LIBRARY gpgga HINTS /home/mikel/workspace/NMEA_0183/libnmea/examples/include/nmea)

#find_library(GPRMC_LIBRARY gprmc HINTS /home/mikel/workspace/NMEA_0183/libnmea/examples/include/nmea)

#TARGET_LINK_LIBRARIES(Minimum PUBLIC ${NMEA_LIBRARY} ${GPGGA_LIBRARY}   ${GPGLL_LIBRARY}  ${GPRMC_LIBRARY}  pthread )

find_library(GTEST_LIBRARY gtest ~/workspace/NMEA_0183/lib_x86/googlemock/gtest) 

TARGET_LINK_LIBRARIES(NMEA_0183 PUBLIC ${GTEST_LIBRARY} pthread)


