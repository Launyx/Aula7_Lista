function main()

    local vetor := {}
    local cPalavra
    local nI, cont, cContra := ""

    ACCEPT "Digite uma palavra: " TO cPalavra

    for nI := len(cPalavra) TO 1 step -1
        AAdd(vetor, SubStr(cPalavra, nI, 1))
    next nI

    // Laço para inverter a palavra do usuário
    for cont := 1 TO len(vetor)
        cContra += vetor[cont]
    next cont

    // Condição para verificar se a palavra digitada é palíndroma
    if upper(cPalavra) == upper(cContra)
        QOUT("Você digitou uma palavra palíndroma")
        QOUT(cPalavra + " = " + cContra)
    else
        QOUT(cContra)
    end if

RETURN nil