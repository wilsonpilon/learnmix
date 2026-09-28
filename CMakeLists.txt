cmake_minimum_required(VERSION 4.3)
project(learnmix C CXX ASM_NASM Fortran)

set(CMAKE_CXX_STANDARD 20)

add_executable(learnmix
        main.cpp
        module_c.c
        module_cpp.cpp
        rotinas.asm
        module_fortran.f90
)
