function main()

    local nI, cont
    local nNum
    local dias := {}
    local bLoop := .T.

    
    for nI := 1 TO 7
        AAdd(dias, CDoW(CToD("2023/01/" + Alltrim(Str(nI)))))   // Adiciona a uma Array os dias de uma semana, começando pelo domingo
    next nI

    while bLoop
        ACCEPT "Digite um número entre 1 e 7: " TO nNum 

        if isdigit(nNum)
            if Val(nNUm) >= 1 .AND. Val(nNum) <= 7  // Verifica se o número digitado está entre 1 e 7
                QOUT(dias[Val(nNum)])   // Apresenta o dia da semana baseado no número que a pessoa digitou
                exit
            else
                QOUT("Valor inválido, digite um número entre 1 e 7!")
            end if
        else
            QOUT("Valor inválido, digite um número entre 1 e 7!")
        end if
    end do

RETURN nil