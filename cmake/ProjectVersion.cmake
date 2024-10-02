file(READ "${CMAKE_CURRENT_SOURCE_DIR}/src/cpp/version.hpp" PROJECT_VERSION_FILE)

string(REGEX MATCH "PROJECT_VERSION_MAJOR{ ([0-9]+) }" _ ${PROJECT_VERSION_FILE})
set(PROJECT_VERSION_MAJOR ${CMAKE_MATCH_1})
string(REGEX MATCH "PROJECT_VERSION_MINOR{ ([0-9]+) }" _ ${PROJECT_VERSION_FILE})
set(PROJECT_VERSION_MINOR ${CMAKE_MATCH_1})
string(REGEX MATCH "PROJECT_VERSION_PATCH{ ([0-9]+) }" _ ${PROJECT_VERSION_FILE})
set(PROJECT_VERSION_PATCH ${CMAKE_MATCH_1})

set(PROJECT_VERSION ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH})
message(STATUS "Project version is: ${PROJECT_VERSION}")
