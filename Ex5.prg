function main()

    // ARRUMAR
    local vetor := Array(30)
    local nI, cont, conta := 1

    // Loop para preencher o vetor com números de 1 a 30
    for nI := 1 TO 30
        AFill(vetor, nI, conta, conta)
        conta++
    next nI

    QOUT("Vetor com números entre 1 e 30")
    // Loop para mostrar os números do vetor
    for cont := 1 to 10
        QOUT(Alltrim(StrZero(vetor[cont], 2)) + " | " + Alltrim(StrZero(vetor[cont + 10], 2)) + " | " + Alltrim(StrZero(vetor[cont + 20], 2)))
    next cont


RETURN nil