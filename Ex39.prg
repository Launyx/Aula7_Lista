function main()

    local matriz := {{}, {}, {}}
    local nI, nJ, cont := 0
    local teste

    for nI := 1 TO 3
        for nJ := 1 TO 3
            AAdd(matriz[nI], cont)
            cont ++
        next nJ
    next nI

    QOUT("A diferença entre a diagonal principal e a secundária é de " + Alltrim(Str(pega_diferenca(matriz))))


RETURN nil

// Função para calcular diferenca da diagonal princial pela secundaria e uma matriz
static function pega_diferenca(matriz)

    local cont, nI
    local nMain := 0, nSecond := 0, nRes, soma := 1

    // Laço para somar os valores da diagonal principal
    for cont := 1 TO 3
        nMain+= matriz[cont][cont]
    next cont

    // Laço para somar os valores da diagonal secundária
    for nI := 3 TO 1 step -1
        nSecond += matriz[soma][nI]
        soma ++
    next nI
    
    nRes := nMain - nSecond

RETURN nRes