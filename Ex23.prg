// REQUEST HB_GT_WIN_DEFAULT
SET PROCEDURE TO Lib_Vetores.prg
function main()

    local vetor := Array(8)
    local nI
    local nChoice, nProc
    local bLoop := .T.

    // Loop para manter o menu ativo
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
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 2       
                QOUT(Chr(10) + "")
                mostra_vetor(vetor)    
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 3
                QOUT(Chr(10) + "")
                vetor_cresc(@vetor)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 4
                QOUT(Chr(10) + "")
                vetor_decres(vetor)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 5
                QOUT(Chr(10) + "")
                existe_vetor(vetor)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 6
                QOUT(Chr(10) + "")
                soma_vetor(vetor)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 7
                QOUT(Chr(10) + "")
                media_vetor(vetor)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 8
                QOUT(Chr(10) + "")
                maior_menor(vetor)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 9
                QOUT(Chr(10) + "")
                embaralha_vetor(@vetor)
                wait "Pressione qualquer tecla para continuar..."
            CASE nChoice == 10
                QOUT(Chr(10) + "")
                repete_vetor(vetor)
                wait "Pressione qualquer tecla para continuar..."
        ENDCASE
    end do

RETURN nil

static function Carrega_vetor(vetor)

    local nI, nNum

    // Loop para carregar o vetor com valores do usuario
    for nI := 1 TO 8
        ACCEPT "Digite um numero: " TO nNum
        AFill(vetor, Val(nNum), nI, 1)
    next nI

RETURN nil

static function vetor_cresc(vetor)

    local aArray, nI

    // Condição para verificar se o vetor está vazio
    if vetor[1] == nil
        QOUT("O vetor está vazio!")
    else
        Asort(vetor)    // Função para colocar o vetor em ordemc crescente
        for nI := 1 TO len(vetor)
            QOUT(StrZero(nI, 2) + ". " + Str(vetor[nI]))
        next nI
    end if

RETURN nil

static function vetor_decres(vetor)

    local nI1, aux, tamanho

    tamanho := len(vetor) + 1

    // Função para colocar o vetor em ordem decrescente
    for nI1 := 1 TO len(vetor) / 2
        aux := vetor[nI1]
        vetor[nI1] := vetor[tamanho - 1]
        vetor[tamanho - 1] := aux
    next nI1

RETURN vetor

static function existe_vetor(vetor)

    local nScanner, nValor, bLoop := .T.

    // Loop para certificar que o usuário digite um número
    while bLoop
        ACCEPT "Digite um número: " TO nValor
        if isdigit(nValor)
            exit
        else
            QOUT("Valor inválido, digite um número")
            loop
        end if
    end do

    // Condição para verificar se o vetor está vazio
    if len(vetor) == 0
        QOUT("O vetor está vazio!")

    else
        nScanner := Ascan(vetor, Val(nValor), 1, len(vetor))
        QOUT("O número " + nValor + " está na posição" + Alltrim(Str(nScanner)))
    end if

RETURN nil

static function soma_vetor(vetor)

    local nI, soma := 0

    // Loop para somar os valores do vetor
    for nI := 1 TO len(vetor)
        soma += vetor[nI]
    next nI

    QOUT("A soma de todos os valores do vetor é igual a " + Alltrim(Str(soma)))
    

RETURN nil

static function media_vetor(vetor)

    local nI, media := 0

    // Loop para somar os valores do vetor
    for nI := 1 TO len(vetor)
        media += vetor[nI]
    next nI

    // Obtendo a media do vetor
    media := media / 8
    QOUT("A média do vetor é: " + Alltrim(Str(media)))

RETURN nil

static function maior_menor(vetor)

    local nMenor := 99999
    local nMaior := 0
    local nI

    // Loop para verificar cada elemento do vetor
    for nI := 1 TO len(vetor)
        // Loop para verificar se o elemento do vetor é o maior
        if vetor[nI] > nMaior
            nMaior := vetor[nI]
        endif
        // condição para verificar se o elemento do vetor é o menor
        if vetor[nI] < nMenor
            nMenor := vetor[nI]
        end if
    next nI

    QOUT("O maior valor do vetor é " + Alltrim(Str(nMaior) + " e o menor valor é " + Alltrim(Str(nMenor))))

RETURN nil

static function embaralha_vetor(vetor)

    local nI, aux

    // Loop para embaralhar o vetor
    for nI := 1 TO len(vetor)
        aux := vetor[nI]
        vetor[nI] := vetor[len(vetor)]
        vetor[len(vetor)] := aux
    next nI

    mostra_vetor(vetor)

RETURN nil

static function repete_vetor(vetor)

    // coloca em outro vetor, verifica vetor com ascan e variavel que soma as repeticoes
    local nI1, nI2, nJ, verifica, vetorAux := {}
    local posi := {}, repeticoes := 0

    for nI1 := 1 TO len(vetor)
        AAdd(vetorAux, vetor[nI1])
    next nI1

    for nI2 := 1 TO len(vetor)
        for nJ := 1 TO len(vetor)
            verifica := Ascan(vetor, vetorAux[nI2], nJ, 1)
            repeticoes ++
            
            if repeticoes > 1
                AAdd(posi, verifica)
            end if
        next nJ
    next nI2

    QOUT(hb_valtoexp(posi))

RETURN nil