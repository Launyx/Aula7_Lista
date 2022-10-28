function main()

    local MatrizM := {{}, {}, {}}
    local aMatrizN := {{}, {}, {}}
    local MatrizR := {{}, {}, {}}
    local VetorA := {}
    local VetorB := {}
    local VetorC := {}
    
    local bLoop := .T.

    le_vetores(@vetorA, @VetorB, @vetorC)

    constroi_matriz(@matrizM, vetorA, vetorB, vetorC)

    QOUT("Matriz M:")
    mostra_vetor(matrizM)
    
    carrega_matriz(@aMatrizN)

    QOUT("Matriz N:")
    mostra_vetor(aMatrizN)

    constroi_matriz_R(MatrizM, aMatrizN, @matrizR)

    QOUT("Matriz R:")
    mostra_vetor(matrizR)
    
RETURN nil

static function le_vetores(vetor1, vetor2, vetor3)

    local nL1, nL2, nL3, cLine1, cLine2, cLine3
    for nL1 := 1 TO 10
        ACCEPT "Digite alguma coisa para adicionar ao vetor A: " TO cLine1
        AAdd(vetor1, cLine1)    // Adicionar à linha de uma matriz
    next nL1

    for nL2 := 1 TO 10
        ACCEPT "Digite alguma coisa para adicionar ao vetor B: " TO cLine2
        AAdd(vetor2, cLine2)    // Adicionar à linha de uma matriz
    next nL2

    for nL3 := 1 TO 10
        ACCEPT "Digite alguma coisa para adicionar ao vetor C: " TO cLine3
        AAdd(vetor3, cLine3)    // Adicionar à linha de uma matriz
    next nL3


RETURN nil

static function constroi_matriz(matriz, vetor1, vetor2, vetor3)

    local nCont1, nCont2, nCont3, nCont4

    for nCont1 := 1 TO 10
        AAdd(matriz[1], vetor1[nCont1])
        AAdd(matriz[2], vetor2[nCont1])
        AAdd(matriz[3], vetor3[nCont1])  // Adicionar um vetor a uma coluna de uma matriz
    next nCont1

RETURN nil

static function mostra_vetor(matriz)

    local nI

    for nI := 1 TO len(matriz)
        QOUT(hb_valtoexp(matriz[nI]))
    next nI

RETURN nil

static function carrega_matriz(matriz)

    local nI1, nI2, nI3, cont

    for nI1 := 1 TO 10
        AAdd(matriz[1], nI1 + 1)  
    next nI1

    for nI2 := 1 TO 10
        AAdd(matriz[2], nI2 + 2)
    next nI2

    for nI3 := 1 TO 10
        AAdd(matriz[3], nI3 + 3)
    next nI3

RETURN nil

static function constroi_matriz_R(matriz1, matriz2, matrizR)

    local nI, nJ, soma := 0

    for nI := 1 TO 3
        for nJ := 1 TO 10
            soma := Val(matriz1[nI][nJ]) + matriz2[nI][nJ]
            AAdd(matrizR[nI], soma)
        next nJ
    next nJ

RETURN nil