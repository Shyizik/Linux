cmake_minimum_required(VERSION 3.10)
project(CalculatorProject)

add_library(calculator_lib STATIC calculator.cpp calculator.h)
add_executable(calculator_app main.cpp)
target_link_libraries(calculator_app calculator_lib)
