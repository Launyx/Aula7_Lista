// REQUEST HB_GT_WIN_DEFAULT
SET PROCEDURE TO  Lib_Vetores.prg
function main()

    local vetorA := Array(10)
    local vetorB := Array(15)
    local vetorC := {}
    local nIA, nIB, nIC, nID, popA, popB, cont

    // Laço para ler 10 valores para o vetor A
    for nIA := 1 TO len(vetorA)
        ACCEPT "Digite qualquer coisa para preencher o vetor A: " TO popA
        AFill(vetorA, popA, nIA, 1)
    next nIA

    // Laço para ler 15 valores para o vetor B
    for nIB := 1 TO len(vetorB)
        ACCEPT "Digite quaquer coisa para preencher o vetor B: " TO popB
        AFill(vetorB, popB, nIB, 1)
    next nIB

    // Laço para construir os 10 primeiro elementos para o vetor C
    for nIC := 1 TO len(vetorA)
            AAdd(vetorC, vetorA[nIC])
    next nIC

    // Laço para contruir mais 15 elementos para o vetor C
    for nID := 1 TO len(VetorB)
        AAdd(vetorC, vetorB[nID])
    next nID

    // Laço para ler 10 valores para o vetor A
    for cont := 1 TO len(vetorC)
        QOUT(vetorC[cont])
    next cont

    mostra_vetor_semval(vetorC)
    // wait
RETURN nil