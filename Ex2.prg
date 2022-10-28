function main()

    local valores := {}
    local nI, cont, nValor

    // Lê 10 valores e adiciona-os a um Array
    for nI := 1 TO 10
        ACCEPT "Digite qualquer coisa: " TO nValor
        AAdd(valores, nValor)
    next nI

    //Mostra os valores contidos no Array
    QOUT("")
    for cont := 1 TO len(valores)
        QOUT(valores[cont])
    next cont

RETURN nil