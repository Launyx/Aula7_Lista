function main()

    // ARRUMAR
    local vetor := Array(30)
    local nI, cont, conta := 1

    for nI := 1 TO 30
        AFill(vetor, nI, conta, conta)
        conta++
    next nI

    QOUT("Vetor com números entre 1 e 30")
    for cont := 1 to 10
        QOUT(Alltrim(StrZero(vetor[cont], 2)) + " | " + Alltrim(StrZero(vetor[cont + 10], 2)) + " | " + Alltrim(StrZero(vetor[cont + 20], 2)))
    next cont


RETURN nil