global operacao_matematica_asm
extern callback_cplusplus

section .text

; ABI Win64 (Windows/MinGW):
; Arg 1 = ecx
; Arg 2 = edx
; Retorno = eax
operacao_matematica_asm:
    ; Prólogo padrão
    push rbp
    mov rbp, rsp

    ; Faz a matemática: a (ecx) + b (edx)
    mov eax, ecx
    add eax, edx

    ; Prepara para chamar C++: O argumento para callback_cplusplus vai no Arg 1 (ecx)
    mov ecx, eax

    ; Salva o EAX (resultado) na pilha, pois a call vai destruí-lo (EAX é volátil)
    push rax

    ; ALINHAMENTO E SHADOW SPACE WIN64:
    ; A ABI Win64 exige 32 bytes de "shadow space" e que a pilha esteja alinhada em 16 bytes.
    ; Subtraímos 40 bytes da pilha: 32 (shadow) + 8 (padding para alinhamento após o push rax)
    sub rsp, 40

    call callback_cplusplus

    ; Limpa o shadow space e o padding
    add rsp, 40

    ; Restaura o nosso valor de retorno final
    pop rax

    ; Epílogo
    mov rsp, rbp
    pop rbp
    ret