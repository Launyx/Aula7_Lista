SET PROCEDURE TO Lib_Vetores.prg

function main()

    local vetorA := Array(15)
    local vetorB := {}
    local nIA, nIB, cPop
    local contA := 1

    // Loop para receber valores do usuário e popular o vetor A com esses valores
    for nIA := 1 TO len(vetorA)
        ACCEPT "Digite qualquer coisa para popular o vetor A: " TO cPop
        AFill(vetorA, cPop, contA, 1)
        contA ++
    next nIA

    // Loop para preencher o vetorB com os elementos em ordem inversa ao vetorA
    for nIB := len(vetorA) TO 1 step -1
        AAdd(vetorB, vetorA[nIB])
    next nIB

    mostra_vetor(vetorB)

RETURN nil