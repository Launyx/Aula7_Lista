function main()

    local meses := {}
    local nI, cont, nMes
    local bLoop := .T.

    for nI := 1 TO 12
        AAdd(meses, CMonth(CToD("2023/" + Alltrim(Str(nI)) + "/01")))
    next nI

    whil bLoop
        ACCEPT "Digite um número entre 1 e 12 para saber o mês correspondente: " TO nMes

        if Val(nMes) >= 1 .AND. Val(nMes) <= 12
            QOUT("O mês correspondente ao número " + nMes + " é o mês de " + meses[Val(nMes)])
            exit
        else
            QOUT("Valor inválido, digite um número entre 1 e 12.")
        end if
    end do

    for cont := 1 to len(meses)
        QOUT(meses[cont])
        
    next cont
RETURN nil