// REQUEST HB_GT_WIN_DEFAULT
function main()

    local nValor, nI, cont
    local aDinheiro := {}
    local bLoop := .T.
    local bDigito := .T., bAlfa

    // Loop para certificar que o usuário digite um valor numérico
    while bLoop
        ACCEPT "Digite um valor para calcular a menor quantidade de cédulas/notas: " TO nValor

        // Condição para verificar se o usuário digitou um valor maior que 0
        if len(nValor) > 0
            for cont := 1 TO len(nValor)    // Loop para adicioar cada digito a um vetor
                AAdd(aDinheiro, SubStr(nValor, cont, 1))
            next cont

            for nI := 1 TO len(aDinheiro)
                bDigito := IsDigit(aDinheiro[nI]) // Verifica se os elementos são digitos
                bAlfa := isalpha(aDinheiro[nI])  // Verifica se os elementos são letras

                if bDigito == .F. .AND. bAlfa == .T.    // Se um elemento não for digito e for letra ele retorna a pergunta do valor
                    QOUT("Valor inválido, digite somente números!")
                    loop
                else
                    bLoop := .F.
                end if
            next nI
        else
            QOUT("Valor inválido, por favor digite um valor maior que 0!")
            loop
        end if
    end do
    calcula_troco(Val(nValor))

RETURN nil

function calcula_troco(valor)

    local aNotas := {{0.05,;
                     0.10,;
                     0.25,;
                     0.50,;
                     1.00,;
                     2.00,;
                     5.00,;
                     10.00,;
                     20.00,;
                     50.00,;
                     100.00,;
                     200.00}, Array(12)}
    local nI, nValor

    QOUT("Valor total: R$" + Alltrim(Str(valor)))
    
    // Laço para obter o valor de cédulas/moedas
    for nI := 12 TO 1 step -1
        AFill(aNotas[2], int(valor / aNotas[1][nI]), nI, 1) // Preenche a segunda linha da matriz a parte inteira da divisão do valor por uma cédula
        valor := valor - aNotas[2][nI] * aNotas[1][nI]  // valor recebe ele mesmo menos o produto da quantidade de cédulas pelo valor delas

        // Laço para verificar se o valor já chegou a zero
        if aNotas[2][nI] != 0
            if aNotas[1][nI] < 1    // Laço para diferenciar cédulas e moedas
                QOUT("Quantidade: " + Alltrim(Str(aNotas[2][nI])) + " moeda(s) de R$" + Alltrim(Str(aNotas[1][nI])))
            else
                QOUT("Quantidade: " + Alltrim(Str(aNotas[2][nI])) + " nota(s) de R$" + Alltrim(Str(aNotas[1][nI])))
            end if
        end if

    next nI

RETURN nil