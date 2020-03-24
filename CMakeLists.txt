cmake_minimum_required (VERSION 2.8.11)
project (calculator)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmakemodules/")

find_package(libadd_cpp REQUIRED)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include
                    ${LIBADD_CPP_INCLUDE_DIRS})

# set header files
set(headers include/calculator.h)

# set source files
set(sources 
  src/calculator.cpp
  src/main.cpp)

add_executable(calculator_cpp 
  ${sources}
  ${headers}
)
target_link_libraries(calculator_cpp
                      ${LIBADD_CPP_LIBRARIES} )

install(TARGETS calculator_cpp DESTINATION lib/calculator_cpp)

