SET PROCEDURE TO Lib_Vetores.prg
function main()

    local vetorA := Array(20)
    local vetorB := Array(20)
    local vetorC := {}
    local nIA, nIB, nIC, preA, preB, nRes
    local contA := 1, contB := 1
    local loopA := .T., loopB := .T.

    while loopA
        ACCEPT "Digite um número para preencher o vetor A: " TO preA
        if isdigit(preA)
            AFill(vetorA, Val(preA), contA, 1)
            contA ++
            if vetorA[20] != nil
                loopA := .F.
            end if
        else
            QOUT("Valor inválido, digite um número!")
            loop
        end if
    end do

    while loopB
        ACCEPT "Digite um número para preencher o vetor B: " TO preB
            
        if isdigit(preB)
            AFill(vetorB, Val(preB), contB, 1)
            contB ++
            if vetorB[20] != nil
                loopB := .F.
            end if
        else
            QOUT("Valor inválido, digite um número!")
            loop
        end if
    end do

    for nIC := 1 to len(vetorB)
        AADD(vetorC, (vetorA[nIC] - vetorB[nIC]))
    next nIC

    QOUT(" A     B     C")
    for nRes := 1 TO len(vetorC)
        QOUT(Alltrim(StrZero(vetorA[nRes], 3)) +  " - " + Alltrim(StrZero(vetorB[nRes], 3)) + " = "+ Alltrim(StrZero(vetorC[nRes], 3)))
    next nRes

RETURN nil