function mostra_vetor(vetor)

    local nI

    if len(vetor) > 0
        for nI := 1 TO len(vetor)
            QOUT(Alltrim(StrZero(nI, 2)) + ". " + Alltrim(Str(vetor[nI])))
        next nI
    else
        QOUT("Vetor vazio")
    end if

return nil

function mostra_vetor_semval(vetor)
    
    local nI

    if len(vetor) > 0
        for nI := 1 TO len(vetor)
            QOUT(Alltrim(StrZero(nI, 2) + ". " + vetor[nI]))
        next nI
    else
        QOUT("Vetor vazio")
    end if
    
RETURN nil