functio main()

    local elementos := {}
    local nI, Cont, nValor

    // Lê 10 valores e adiciona-os a um Array
    for nI := 1 TO 10
        ACCEPT "Digite qualquer coisa: " TO nValor
        AAdd(elementos, nValor)
    next nI

    // Apresenta os valores contidos no Array em ordem inversa
    for cont := len(elementos) TO 1 step -1
        QOUT(elementos[cont])
    next cont

RETURN nil