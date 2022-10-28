SET PROCEDURE TO Lib_Vetores.prg
function main()

    local vetorA := Array(8)
    local vetorB := Array(8)
    local nIA, nIB, cont := 1, nI

    // Laço para carregar o vetor A com valores aleatórios
    for nIA := 1 to len(vetorA)
        AFill(vetorA, Random()%99 + 1, nIA, 1)
    next nIA


    for nIB := 1 to len(vetorB)
        AFill(vetorB, vetorA[nIB] * 3, nIB, 1)
    next nIB

    QOUT("Elementos do vetor A: ")
    mostra_vetor(vetorA)
    QOUT(Chr(10) + "Elementos do vetor B: ")
    mostra_vetor(vetorB)

RETURN nil