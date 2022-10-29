
function main()

    local MatrizM := {{}, {}, {}}
    local aMatrizN := {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}}
    local MatrizR := {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}}
    local VetorA := {}
    local VetorB := {}
    local VetorC := {}
    
    local bLoop := .T.

    le_vetores(@vetorA, @VetorB, @vetorC)

    constroi_matrizR(@matrizM, vetorA, vetorB, vetorC)

    QOUT("Matriz M:")
    mostra_matriz(matrizM)
    
    carrega_matrizN(@aMatrizN)

    QOUT("Matriz N:")
    mostra_matriz(aMatrizN)

    constroi_matriz_R(MatrizM, aMatrizN, @matrizR)

    QOUT("Matriz R:")
    mostra_matriz(matrizR)
    
RETURN nil

static function le_vetores(vetor1, vetor2, vetor3)

    local nL1, nL2, nL3, cLine1, cLine2, cLine3

    // Loop para preencher o vetor A
    for nL1 := 1 TO 10
        ACCEPT "Digite alguma coisa para adicionar ao vetor A: " TO cLine1
        AAdd(vetor1, cLine1)    // Adicionar à linha de uma matriz
    next nL1

    // Loop para preencher o vetor B
    for nL2 := 1 TO 10
        ACCEPT "Digite alguma coisa para adicionar ao vetor B: " TO cLine2
        AAdd(vetor2, cLine2)    // Adicionar à linha de uma matriz
    next nL2

    // Loop para preencher o vetor C
    for nL3 := 1 TO 10
        ACCEPT "Digite alguma coisa para adicionar ao vetor C: " TO cLine3
        AAdd(vetor3, cLine3)    // Adicionar à linha de uma matriz
    next nL3


RETURN nil

static function constroi_matrizR(matriz, vetor1, vetor2, vetor3)

    local nCont1, nCont2, nCont3, nCont4

    // Loop para construir a matriz baseada nos vetores A, B e C
    for nCont1 := 1 TO 10
        AAdd(matriz[1], vetor1[nCont1])
        AAdd(matriz[2], vetor2[nCont1])
        AAdd(matriz[3], vetor3[nCont1])  // Adicionar um vetor a uma coluna de uma matriz
    next nCont1

RETURN nil

// Função para mostrar a matriz
static function mostra_matriz(matriz)

    local nI

    // Loop para mostrar cada linha da matriz
    for nI := 1 TO len(matriz)
        QOUT(hb_valtoexp(matriz[nI]))
    next nI

RETURN nil

// Função para carregar a matriz
static function carrega_matrizN(matriz)

    local nI1, nI2, nI3, nJ

    for nI1 := 1 TO 10
        for nJ := 1 TO 3
            AAdd(matriz[nI1], nI1 + nJ)  
        next nJ
    next nI1

RETURN nil

static function constroi_matriz_R(matriz1, matriz2, matrizR)

    local nI, nJ, soma := 0
    local nCont1, nCont2, nContJ1, nContJ2

    // Loop para construir a matriz R nos elementos em que a matriz N e a M possuem índice
    for nI := 1 TO 3
        for nJ := 1 TO 3
            soma := Val(matriz1[nI][nJ]) + matriz2[nI][nJ]  // Soma os valores dos elementos das matrizes A e B
            AAdd(matrizR[nI], soma)
        next nJ
    next nJ

    // Loop para adicionar os elementos restantes da matriz N
    for nCont1 := 4 TO 10
        for nContJ1 := 1 TO 3
            AAdd(matrizR[nCont1], matriz2[nCont1][nContJ1])
        next nContJ1
    next nCont1

    // Loop para adicionar os elementos restantes da matriz M
    for nCont2 := 1 TO 3
        for nContJ2 := 4 TO 10
            AAdd(matrizR[nCont2], Val(matriz1[nCont2][nContJ2]))
        next nContJ2
    next nCont2

RETURN nil