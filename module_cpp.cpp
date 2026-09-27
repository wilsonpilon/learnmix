//
// Created by barney on 27/09/2026.
//

#include "module_cpp.h"
#include <iostream>

void callback_cplusplus(int valor) {
    std::cout << "[C++] Fui invocado indiretamente pelo Assembly! Valor final: " << valor << std::endl;
}
