REQUEST HB_GT_WIN_DEFAULT
SET PROCEDURE TO Lib_Vetores.prg


function main()

    local vetorA := Array(50)
    local nI
    local nChoice, nProc
    local bLoop := .T.

    carrega_vetor_AZ(@vetorA)

    //Loop para o menu
    while bLoop

        SET MESSAGE TO 24 CENTER
        @ 10, 2 PROMPT "Mostrar conteudo do vetor" MESSAGE ""
        @ 11, 2 PROMPT "Verificar se um caractere exite" MESSAGE "A - Z"
        @ 12, 2 PROMPT "Localizar ultima occorencia de um caractere" MESSAGE "A - Z"
        @ 13, 2 PROMPT "Localizar primeira ocorrencia de um caractere" MESSAGE "A - Z"
        MENU TO nChoice

        DO CASE
            CASE nChoice == 0           // user press <Esc> key
                QUIT
            CASE nChoice == 1           // user select 1st menu item
                mostra_vetor_semval(vetorA)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 2           // user select 2nd menu item
                ACCEPT "Digite o caractere que deseja verificar: " TO nProc
                procura_vetor(nProc, vetorA)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 3
                ACCEPT "Digite o caractere que deseja verificar: " TO nProc
                procura_vetor_last(nProc, vetorA)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 4
                ACCEPT "DIGITE O Caractere que deseja verificar: " TO nProc
                procura_vetor_first(nProc, vetorA)
                wait "Pressione qualquer tecla para continuar..."
        ENDCASE
    end do

RETURN nil

// Função para carregar o vetor com letras aleatórias
static function carrega_vetor_AZ(vetor)

    local nI, cont

    for nI := 1 to len(vetor)
        AFill(vetor, Chr(Random()%25 + 65), nI, 1)
    next nI

return nil

// Função para procurar um caractere no vetor
static function procura_vetor(caractere, vetor)
    local nI, cont, bTem := .F., nCont, cArray := ""
    local nCount
    local indices := {}

    for nI := 1 TO len(vetor)
        bTem := AScan(vetor, upper(caractere), nI, 1)
        if bTem != 0
            AAdd(indices, bTem)
        end if

    next nI

    for nCont := 1 to len(indices)
        cArray += Alltrim(Str(indices[nCont])) + " "

    next nCont

    QOUT("Posições:")
    QOUT(cArray)

RETURN nil

// Função para procurar a primeira ocorrencia de um caractere no vetor
static function procura_vetor_first(caractere, vetor)

    local nI, cont, bTem := .F., nCont
    local nCount
    local cArray := {}
    local indices := {}

    for nI := 1 TO len(vetor)
        bTem := AScan(vetor, upper(caractere), nI, 1)
        if bTem != 0
            AAdd(indices, bTem)
        end if

    next nI

    for nCont := 1 to len(indices)
        AAdd(cArray, Alltrim(Str(indices[nCont])))

    next nCont

    QOUT("Primeira posição que o caracter se encontra: ")
    QOUT(cArray[1])

RETURN nil

// Função para procurar a ultima ocorrencia de um caractere no vetor
static function procura_vetor_last(caractere, vetor)

    local nI, cont, bTem := .F., nCont
    local nCount
    local cArray := {}
    local indices := {}

    for nI := 1 TO len(vetor)
        bTem := AScan(vetor, upper(caractere), nI, 1)
        if bTem != 0
            AAdd(indices, bTem)
        end if

    next nI

    for nCont := 1 to len(indices)
        AAdd(cArray, Alltrim(Str(indices[nCont])))

    next nCont

    QOUT("Última posição que o caracter se encontra: ")
    QOUT(ATail(cArray))

RETURN nil