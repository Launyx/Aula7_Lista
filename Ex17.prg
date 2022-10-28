SET PROCEDURE TO Lib_Vetores.prg
function main()

    local vetorA := Array(10)
    local vetorB := {}
    local nIA, nIB, popA
    local cont := 0

    // Laço para ler 10 valores e preencher o vetor A
    for nIA := 1 TO len(vetorA)
        ACCEPT "Digite qualquer número: " TO popA
        AFill(vetorA, popA, nIA, 1)
    next nIA

    // Laço para construir o vetor B com a somatória da primeira posição do vetorA até o correspondente.
    for nIB := 1 to len(vetorA)
        cont += Val(vetorA[nIB])
        AAdd(vetorB, cont)
    next nIB

    mostra_vetor(vetorB)

RETURN nil