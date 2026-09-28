module meu_modulo_fortran
    use iso_c_binding, only: c_int
    implicit none

contains

    ! O bind(c) desativa o name mangling do Fortran e adota a ABI do C
    subroutine operacao_fortran(valor) bind(c, name="operacao_fortran")
        ! A diretiva 'value' diz ao Fortran para não esperar um ponteiro, como era no passado
        integer(c_int), value :: valor

        print *, "[FORTRAN] Saudacoes de 1957! O MSX manda lembrancas."
        print *, "[FORTRAN] Valor recebido pelo C++:", valor
    end subroutine operacao_fortran

end module meu_modulo_fortran