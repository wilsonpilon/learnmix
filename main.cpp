#include "module_c.h"
#include <iostream>

extern "C" {
    void operacao_fortran(int valor);
}


int main() {
    std::cout << "[MAIN] Inicializando runtime C++ e delegando execucao." << std::endl;
    iniciar_sistema_c();
    std::cout << "[MAIN] Execucao hibrida finalizada chamando legado FORTRAN." << std::endl;
    operacao_fortran(1972);
    std::cout << "[MAIN] Fim de execucao. Desligando maquina." << std::endl;
    return 0;
}