SET PROCEDURE TO Lib_Vetores.prg
functio main()

    local vetorA := Array(5)
    local vetorB := {}
    local nIA, nIB, cont, popA

    // Laço para ler 5 valores e preencher o vetor A
    QOUT("Digite 5 números para preencher o vetor A!")
    for nIA := 1 to len(vetorA)
        ACCEPT "Digite qualquer número: " TO popA
        AFill(vetorA, popA, nIA, 1)
    next nIA

    // Laço para contruir o vetor B com os valores do vetor A com sinal trocado
    for nIB := 1 TO len(vetorA)
        AAdd(vetorB, (Val(vetorA[nIB]) * -1))
    next nIB

    mostra_vetor(vetorB)

RETURN nil