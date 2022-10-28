SET PROCEDURE TO Lib_Vetores.prg

function main()

    local vetor := Array(12)
    local nI, popV
    local contador := 0

    for nI := 1 TO len(vetor)
        ACCEPT "Digite um número para por no vetor: " TO popV

        if isdigit(popV)
            AFill(vetor, Val(popV), nI, 1)
        end if
    next nI

    Asort(vetor)
    
    mostra_vetor(vetor)

RETURN nil