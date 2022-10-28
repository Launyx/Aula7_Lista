function main()

    local vetor := Array(10)
    local nI, num, cont
    local conta := 1

    for nI := 2 TO 20
        num := nI % 2
        if num == 0
            AFill(vetor, nI, conta, conta)
            conta ++
        end if
    next nI

    QOUT("Vetor com números pares entre 1 e 20")
    for cont := 1 TO len(vetor)
        QOUT(Alltrim(StrZero(vetor[cont], 2)))
    next cont


RETURN nil