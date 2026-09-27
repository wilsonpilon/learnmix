//
// Created by barney on 27/09/2026.
//

#include "module_c.h"
#include <stdio.h>

extern int operacao_matematica_asm(int a, int b);

void iniciar_sistema_c() {
    printf("[C] Modulo C carregado. Chamando a rotina em Assembly (5 + 7)...\n");
    int resultado = operacao_matematica_asm(5, 7);
    printf("[C] O assembly retornou o controle para o C.\n");
}