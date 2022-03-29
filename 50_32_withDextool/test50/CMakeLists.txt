cmake_minimum_required(VERSION 3.0)
 
project(test50)

# Locate GTest
find_package(GTest REQUIRED)
find_package(Threads)
include_directories(${GTEST_INCLUDE_DIRS})
 
include_directories(./include ./src ./test)





# Link runTests with what we want to test and the GTest and pthread library


add_executable(test50 src/main.cpp src/validage.cpp)

add_executable(runTests test/tests.cpp src/validage.cpp)


target_link_libraries(runTests ${GTEST_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT})




enable_testing()

add_test(NAME runTests COMMAND $<TARGET_FILE:runTests>)
