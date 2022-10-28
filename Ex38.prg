function main()

    local matrizA := {{}, {}, {}}
    local matrizB := {{}, {}, {}}
    local bLoop := .T.
    
    

    preenche_matriz(@matrizA)

    QOUT("Matriz A:")
    mostra_matriz(matrizA)
    inverte_matriz(matrizA, @matrizB)
    
    QOUT("Matriz B:")
    mostra_matriz(matrizB)

RETURN nil

static function inverte_matriz(matriz, matrizalvo)

    local nI

    for nI := 1 TO 3
        AAdd(matrizalvo[1], matriz[nI][1])
        AAdd(matrizalvo[2], matriz[nI][2])
        AAdd(matrizalvo[3], matriz[nI][3])
    next nI

RETURN nil

static function mostra_matriz(matriz)

    local nI, nJ
    local cString := ""

    for nI := 1 TO 3
            QOUT(hb_ValToExp(matriz[nI]))
    next nI

RETURN nil

static function preenche_matriz(matriz)

    local nI1, nI2, nI3
    local linha1, linha2, linha3
    for nI1 := 1 TO 3
        ACCEPT "Digite algo para preencher a primeira linha da matriz A: " TO linha1
        AAdd(matriz[1], linha1)
    next nI1

    for nI2 := 1 TO 3
        ACCEPT "Digite algo para preencher a segunda linha da matriz A: " TO linha2
        AAdd(matriz[2], linha2)
    next nI2

    for nI3 := 1 TO 3
        ACCEPT "Digite algo para preencher a terceira linha da matriz A: " TO linha3
        AAdd(matriz[3], linha3)
    next nI3

RETURN nil