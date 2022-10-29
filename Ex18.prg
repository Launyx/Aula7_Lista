function main()

    local nDia, nMes, nAno, dData
    

    QOUT("Calculadora de dia do ano!")
    pergunta_Data(@nDia, @nMes, @nAno, @dData)
    pega_dia(dData)

    // Condição para diferenciar ano bissexto
    if bissexto(dData)
        QOUT("A data " + DMY(dData) + " Corresponde ao " + Alltrim(Str(pega_dia(dData))) + "°/366 dia do ano!")
    else
        QOUT("A data " + DMY(dData) + " Corresponde ao " + Alltrim(Str(pega_dia(dData))) + "°/365 dia do ano!")
    end if

RETURN nil

function pega_Dia(cData)

    local dia := DoY(cData)

RETURN dia

// Função para perguntar a data para o usuario
function pergunta_Data(cAno, cMes, cDia, cData)

    local bAno := .T., bMes := .T., bDia := .T.

    while bAno
        ACCEPT "Digite o ano: " TO cAno

        if Val(cAno) <= 0
            QOUT("Ano inválido, tente novamente!")
            loop
        else
            bAno := .F.
        end if
    end do
    
    while bMes
        ACCEPT "Digite número correspondente ao mês: " TO cMes

        if Val(cMes) < 1 .OR. Val(cMes) > 12
            QOUT("Mês inválido, tente novamente!")
            loop
        else
            bMes := .F.
        end if
    end do

    while bDia
        ACCEPT "Digita o dia do mês: " TO cDia

        if Val(cDia) < 1 .OR. Val(cDia) > 31
            QOUT("Dia inválido, tente novamente!")
            loop
        else
            bDia := .F.
        end if
    end do

    cData := CToD(cAno + "/" + cMes + "/" + cDia)

RETURN nil

// Função para verificar se o ano é bissexto
function bissexto(cData)

    local Bissexto := IsLeap(cData)

RETURN Bissexto