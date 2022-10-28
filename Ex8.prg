function main()

    local vetorA := Array(20)
    local vetorB := Array(20)
    local vetorC := Array(20)
    local nIA, nIB, nIC, cont
    local contaA := 1
    local contaB := 1
    local contaC := 1

    // Preenche cada elemento do vetor A com número aleatórios entre 1 e 100
    for nIA := 1 TO len(vetorA)
        AFill(vetorA, Random()%100 + 1, contaA, contaA)
        contaA ++
    next nIA

    // Preenche cada lemento do vetor B com número aleatórios entre 1 e 100
    for nIB := 1 TO len(vetorB)
        AFill(vetorB, Random()%100 + 1, contaB, contaB)
        contaB ++
    next nIB

    // Preenche o vetor C com a soma dos valores de cada elemento dos vetores A e B
    for nIC := 1 TO len(vetorC)
        AFill(vetorC, vetorA[nIC] + vetorB[nIC], contaC, contaC)
        contaC ++
    next nIC

    QOUT("Soma dos vetores A e B armazenada no vetor C")
    QOUT(" A     B      C")
    for cont := 1 TO len(vetorC)
        QOUT(Alltrim(StrZero(vetorA[cont], 3)) + " + " + Alltrim(StrZero(vetorB[cont], 3)) + " = " + Alltrim(StrZero(vetorC[cont], 3)))
    next cont


RETURN nil