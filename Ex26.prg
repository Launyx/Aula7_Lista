function main()

    local nChar, nUsu
    local bLoop := .T.

    while bLoop
        ACCEPT "Digite alguma palavra: " TO nUsu

        // Verifica se o caractere mais a esquerda é uma letra
        if isalpha(nUsu)
            // Função para pegar o caractere mais a esquerda
            nChar := Left(nUsu, 1)
            exit
        else
            QOUT("Erro, digite uma palavra!")
        end if
    end do

    QOUT("A primeira letra da palavra é: " + nChar)

RETURN nil