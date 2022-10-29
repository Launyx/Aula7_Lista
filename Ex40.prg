functio main()

    local matriz := {{}, {}, {}, {}, {}}
    
    carrega_matriz(matriz)

    mostra_colunaP(matriz)

RETURN nil

// Função para carregar matriz com letras maiusculas aleatórias entre A e Z
static function carrega_matriz(matriz)

    local nI, nJ, cont

    for nI :=1 TO 5
        for nJ := 1 TO 5
            AAdd(matriz[nI], Chr(Random()%25 + 65))
        next nJ
    next nI


RETURN nil

// Função para obter a diagonal principal de uma matriz
static function mostra_colunaP(matriz)

    local nI, nJ
    local cont, cString := ""

    // Loop para somar cada elemento que faz parte da diagonal principal
    for cont := 1 TO 5
        cString += matriz[cont][cont]
    next cont

    // Loop para mostrar a matriz
    for nI := 1 TO 5
        QOUT(hb_ValToExp(matriz[nI]))
    next nI

    QOUT("A coluna principal da matriz forma a seguinte string: " + cString)


RETURN nil