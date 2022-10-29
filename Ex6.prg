function main()

    local vetor := Array(30)
    local nI, cont
    local conta := 1

    // Loop para preencher o vetor com números de 30 a 1
    for nI := 30 TO 1 step -1
        AFill(vetor, nI, conta, conta)
            conta ++
    next nI

    QOUT("Vetor com números de 30 a 1")
    // Loop para msotrar os valores do vetor
    for cont := 1 TO 10
        QOUT(Alltrim(StrZero(vetor[cont], 2)) + " | " + Alltrim(StrZero(vetor[cont + 10], 2)) + " | " + Alltrim(StrZero(vetor[cont + 20], 2)))
    next cont

RETURN nil