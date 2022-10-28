// REQUEST HB_GT_WIN_DEFAULT
SET PROCEDURE TO Lib_vetores.prg
function main()

    local vetorA := Array(10)
    local vetorB := Array(10)
    local vetorC := Array(20)
    local nIA, nIB, nIC, nID, popA, popB, nCont
    local contadorA := 1, contadorB := 2    // contadorB começa em 2 pois o vetor B começa populando o 2º elemento do vetor C
    local contA := 1, contB := 1, contC := 1

    // Laço para popular 10 elementos do array A com qualquer coisa que o usuário digitar
    for nIA := 1 TO len(vetorA)
        ACCEPT "Digite qualquer coisa para popular o vetor A: " TO popA
        AFill(vetorA, popA, contA, contA)
        contA ++
    next nIA

    // Laço para popular 10 elementos do array B com qualquer coisa que o usuário digitar
    for nIB := 1 TO len(vetorB)
        ACCEPT "Digite qualquer coisa para popular o vetor B: " TO popB
        AFill(vetorB, popB, contB, contB)
        contB ++
    next nIB

    // Laço para popular o vetor C com elementos do vetor A a cada dois elementos, começando pelo primeiro
    for nIC := 1 to len(vetorA)
        AFill(vetorC, vetorA[nIC], contadorA, 1)
        contadorA += 2
    next nIC

    // Laço para popular o vetor C com elementos do vetor B a cada dois elementos, começando pelo segundo
    for nID := 1 to len(vetorB)
        AFill(vetorC, vetorB[nID], contadorB, 1)
        contadorB += 2
    next nID

    // função que mostra um vetor na tela, biblioteca lib_vetores
    mostra_vetor(vetorC)

    wait
RETURN nil