// REQUEST HB_GT_WIN_DEFAULT
SET PROCEDURE TO Lib_vetores.prg
function main()

    local vArray := Array(8)
    local conta := 8
    local nI, cont, aux1, aux2

    // Laço para popular o vetor
    for nI := 1 TO len(vArray)
        AFill(vArray, Random()%99 + 1, nI, 1)
    next nI
    QOUT("Vetor normal:")
    mostra_vetor(vArray)

    // Laço para inverter a ordem do vetor
    for cont := 1 TO (len(vArray) / 2)
        aux1 := vArray[cont]    // Um número auxiliar recebe o conetúdo do primeiro elemento do vetor
        vArray[cont] := vArray[conta]   // O primeiro elemento do vetor recebe o conteúdo do último elemento
        vArray[conta] :=  aux1  // O último elemento recebe o número armazenado do primeiro elemento do vetor
        conta -= 1
    next cont

    QOUT(Chr(10) + "Vetor invertido: ")
    mostra_vetor(vArray)

    wait
RETURN nil