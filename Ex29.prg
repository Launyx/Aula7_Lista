function main()

    local nCPF
    local bLoop := .T.

    // Laço para certificar que o usuário digite o CPF corretamente
    while bLoop
        ACCEPT "Digite seu CPF: " TO nCPF
        verifica_cpf(nCPF, @bLoop)

    end do

RETURN nil

static function verifica_cpf(cpf, bLoop)

    // Variáveis para verificar o cpf
    local nI1, nI2, cont, nTotal1 := 0, mult1 := 10, mult2 := 11
    local verifica1 := .F.
    local verifica2 := .F.

    // Laço para calcular a somatória dos produtos dos 9 primeiros números
    for nI1 := 1 TO 9
        nTotal1 += Val(SubStr(cpf, nI1, 1)) * mult1
        mult1 --
    next nI1

    // Cálculo para verificar se o 10º dígito está correto
    nTotal1 := nTotal1 % 11
    nTotal1 := 11 - nTotal1

    // Condição de cálculo do CPF, se o resultado for maior ou igual a 10, o 10º dígito é 0
    if nTotal1 >= 10
        nTotal1 := 0

    // Condição que verifica se o cálculo resulta o 10º número do CPF
    if nTotal1 == Val(SubStr(cpf, 10, 1))
        verifica1 := .T.
        nTotal1 := 0

        // Laço para calcular a somatória dos produtos dos 10 primeiros números
        for nI2 := 1 TO 10
            nTotal1 += Val(SubStr(cpf, nI2, 1)) * mult2
            mult2 --
        next nI2
    
        // Cálculo para verificar se o 11º dígito está correto
        nTotal1 := nTotal1 % 11
        nTotal1 := 11 - nTotal1
    
        // Condição de cálculo do CPF, se o resultado for maior ou igual a 10, o 11º dígito é 0
        if nTotal1 >= 10
            nTotal1 := 0
        end if

        // Condição que verifica se o cálculo resulta o 11º número do CPF
        if nTotal1 == Val(SubStr(cpf, 11, 1))
            verifica2 := .T.
        else
            QOUT("CPF inválido, tente novamente!")
        end if
    else
        QOUT("CPF inválido, tente novamente!")
    end if

    // Condição caso os 2 últimos dígitos estejam corretos
    if verifica1 == .T. .AND. verifica2 == .T.
        QOUT("CPF válido!")
        bLoop := .F.
    end if

RETURN nil