#include "module_c.h"
#include <iostream>


int main() {
    std::cout << "[MAIN] Inicializando runtime C++ e delegando execucao." << std::endl;
    iniciar_sistema_c();
    std::cout << "[MAIN] Execucao hibrida finalizada com sucesso." << std::endl;
    return 0;
}