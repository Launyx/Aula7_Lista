REQUEST HB_GT_WIN_DEFAULT
SET PROCEDURE TO Lib_Vetores.prg
function main()

    local vetor := Array(8)
    local nI
    local nChoice, nProc
    local bLoop := .T.

    while bLoop

        SET MESSAGE TO 24 CENTER
        @  1, 2 PROMPT "Carregar o vetor" MESSAGE ""
        @  2, 2 PROMPT "Mostrar conteudo do vetor" MESSAGE ""
        @  3, 2 PROMPT "Colocar vetor em ordem crescente" MESSAGE ""
        @  4, 2 PROMPT "Colocar vetor em ordem decrescente" MESSAGE ""
        @  5, 2 PROMPT "Pesquisar existencia de um valor no vetor" MESSAGE ""
        @  6, 2 PROMPT "Informar somatoria de todos valores do vetor" MESSAGE ""
        @  7, 2 PROMPT "Informar media de todos valores do vetor" MESSAGE ""
        @  8, 2 PROMPT "nformar maior e menor valor do vetor" MESSAGE ""
        @  9, 2 PROMPT "Embaralhar conteudo do vetor" MESSAGE ""
        @ 10, 2 PROMPT "Informar valores que se repetem e quantas vezes se repetem" MESSAGE ""
        MENU TO nChoice

        DO CASE
            CASE nChoice == 0           
                QUIT
            CASE nChoice == 1           
                QOUT(Chr(10) + "")
                Carrega_vetor(@vetor)
                wait "Pressione qualquer tecla para sair..."
            CASE nChoice == 2       
                QOUT(Chr(10) + "Conteudo do vetor: ")
                mostra_vetor(vetor)    
                wait "Pressione qualquer tecla para sair..."
            CASE nChoice == 3
                mostra_vetor(vetor_cresc(vetor))
                wait "Pressione qualquer tecla para sair..."
            CASE nChoice == 4
                mostra_vetor(vetor_decres(vetor))
                wait "Pressione qualquer tecla para sair..."
            CASE nChoice == 5
                wait "Pressione qualquer tecla para sair..."
            CASE nChoice == 6
                wait "Pressione qualquer tecla para sair..."
            CASE nChoice == 7
                wait "Pressione qualquer tecla para sair..."
            CASE nChoice == 8
                wait "Pressione qualquer tecla para sair..."
            CASE nChoice == 9
                wait "Pressione qualquer tecla para sair..."
            CASE nChoice == 10
                wait "Pressione qualquer tecla para sair..."
        ENDCASE
    end do

RETURN nil

static function Carrega_vetor(vetor)

    local nI, nNum

    for nI := 1 TO 8
        ACCEPT "Digite um numero: " TO nNum
        AFill(vetor, Val(nNum), nI, 1)
    next nI

RETURN nil

static function vetor_cresc(vetor)

    local aArray

    aArray := ASort(vetor)

RETURN aArray

static function vetor_decres(vetor)

    local nI1, aux, tamanho

    tamanho := len(vetor) + 1

    for nI1 := 1 TO len(vetor) / 2
        aux := vetor[nI1]
        vetor[nI1] := vetor[tamanho - 1]
        vetor[tamanho - 1] := aux
    next nI1


RETURN vetor