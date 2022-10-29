// REQUEST HB_GT_WIN_DEFAULT
function main()

    local aNotas := {{}, {}, {}, {}, {}}
    local bLoop := .T.
    local nChoice, nProc

    //ordem alfabetica, jogar valores para asc, dar sort, dps voltar para chr
    while bLoop

        SET MESSAGE TO 24 CENTER
        @ 1, 2 PROMPT "Inserir nome dos alunos" MESSAGE ""
        @ 2, 2 PROMPT "Inserir notas dos alunos" MESSAGE "1 - 10"
        @ 3, 2 PROMPT "Calcular media de cada aluno" MESSAGE ""
        @ 4, 2 PROMPT "Ordenar por ordem alfabetica" MESSAGE ""
        @ 5, 2 PROMPT "Ordenar por ordem decrescente de notas" MESSAGE ""
        MENU TO nChoice

        DO CASE
            CASE nChoice == 0           
                QUIT
            CASE nChoice == 1   
                le_nomes(@aNotas)        
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 2   
                le_notas(@aNotas)      
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 3
                calcula_media(aNotas)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 4
                ordem_alfa(aNotas)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 5
                
                wait "Pressione qualquer tecla para continuar..."
        ENDCASE
    end do

RETURN nil

static function le_nomes(matriz)

    local nI, cNome

    QOUT("")
    for nI := 1 TO 5
        ACCEPT "Digite os nomes dos alunos: " TO cNome
        AAdd(matriz[nI], cNome)
    next nI

RETURN nil

static function le_notas(matriz)

    local nI1, nNota

    QOUT("")
    for nI1 := 2 TO 4
        ACCEPT "Digite as notas do primeiro aluno: " TO nNota

        if IsDigit(nNota)
            AAdd(matriz[1], Val(nNota))
        else
            QOUT("Nota invalida, tente novamente")
            nI1 --
        end if
    next nI1

    for nI1 := 2 TO 4
        ACCEPT "Digite as notas do segundo aluno: " TO nNota

        if IsDigit(nNota)
            AAdd(matriz[2], Val(nNota))
        else
            QOUT("Nota invalida, tente novamente")
            nI1 --
        end if
    next nI1

    for nI1 := 2 TO 4
        ACCEPT "Digite as notas do terceiro aluno: " TO nNota

        if IsDigit(nNota)
            AAdd(matriz[3], Val(nNota))
        else
            QOUT("Nota invalida, tente novamente")
            nI1 --
        end if
    next nI1

    for nI1 := 2 TO 4
        ACCEPT "Digite as notas do quarto aluno: " TO nNota

        if IsDigit(nNota)
            AAdd(matriz[4], Val(nNota))
        else
            QOUT("Nota invalida, tente novamente")
            nI1 --
        end if
    next nI1

    for nI1 := 2 TO 4
        ACCEPT "Digite as notas do quinto aluno: " TO nNota

        if IsDigit(nNota)
            AAdd(matriz[5], Val(nNota))
        else
            QOUT("Nota invalida, tente novamente")
            nI1 --
        end if
    next nI1

RETURN nil

static function calcula_media(matriz)

    local nI, nJ, cont, nCont, nMedias := 0
    local aMedias := {{}, {}, {}, {}, {}}

    for nI := 1 TO 5
        AAdd(aMedias[nI], matriz[nI][1])
    next nI

    for cont := 1 TO 5
        for nJ := 2 TO 4
            nMedias += matriz[cont][nJ]
            
        next nJ
        nMedias := (nMedias / 3)
        AAdd(aMedias[cont], nMedias)
        nMedias := 0
    next cont

    QOUT("")
    for nCont := 1 TO 5
        QOUT(hb_ValToExp(aMedias[nCont]))
    next nCont

RETURN nil

static function ordem_alfa(matriz)
    // asc ou chr
    local nI, nJ, cCaracter, aArray := {}

    for nI := 1 TO len(matriz)
        cCaracter := matriz[nI][1]
        cCaracter := SubStr(cCaracter, 1, 1)
        QOUT(cCaracter)

        // AAdd(aArray, Left(matriz[nI], 1))
    next nI
    
    Asort(matriz)


    QOUT(hb_ValToExp(aArray))

RETURN nil