function main()

    local nNUm, nChoice
    local bLoop := .T.

    // Laço para certificar que o usuário digite 1 para decimal ou 2 para binário
    while bLoop
        ACCEPT "Digite o número da opção que quer converter: 1.Decimal 2.Binário " TO nChoice
           
        // Condição caso o usuário escolhe converter um decimal
        if nChoice == "1"
            ACCEPT "Digite o número que quer converter: " TO nNum
            QOUT("O número " + nNUm + " convertido para binário fica: " + DeciToBina(Val(nNum)))
            bLoop := .F.

        // Condição caso o usuário escolhe converter um binário
        elseif nChoice == "2"
            ACCEPT "Digite o número que quer converter: " TO nNum
            QOUT("O número " + nNum + " convertido para decimal fica: " + Alltrim(Str(Round(BinaToDeci(nNum), 0))))
            bLoop := .F.

        else
            QOUT("Opção inválida, digite '1' ou '2'!")
            loop
        end if
    end do

RETURN nil

// Função para converter um número decimal para binário
static function DeciToBina(nNum)
    local cNewString := ""
    local nTemp

    // 
    do while nNum > 0
        nTemp := nNum % 2
        cNewString := SubStr( "01", nTemp + 1, 1 ) + cNewString
        nNum := Int( ( nNum - nTemp ) / 2 )
    end do

RETURN cNewString

// Função para converter um número binário em decimal
static function BinaToDeci(nNum)

    local nNumber := 0, nX
    local cNewString := AllTrim( nNum )
    local nLen := Len( cNewString )

    // Laço para cacular o número binário baseado em um decimal
    for nX := 1 TO nLen
        nNumber += ( At( SubStr( cNewString, nX, 1 ), "01" ) - 1 ) * ( 2 ^ ( nLen - nX ) )
    next nX
    // At() procura na string "01" a posição do número digitado pelo usuário, dígito por dígito Ex: quando o dígito é 1, o At() retorna 2, pois está na 2º posição da string "01"
    // com o resultado de At(), é subtraído 1 e a diferença é multiplicada por 2 elevado ao tamanho do número binário menos a posição que o digito sendo analisado está
    // O resultado desse cálculo é somado a nNumber
    // Ex: 11
    // SubStr() separa cada dígito, At() retorna que 1 está na 2ª posição da string "01", portanto retorna 2. 
    // Isso é utilizado para que somente quando se há o dígito 1 o resultado seja somado, uma vez que 0 está na posição 1 e quando subtraído 1 o resultado será 0
    // Desse 2 é subtraído 1, e a diferença é multiplicada por 2 elevado ao tamanho do número binário em questão de quantidade de dígitos (2 nesse caso) menos a posição que o número está
    // Ou seja:
    // (2 - 1) * (2 ^ (2 - 1)) = 2
    // (2 - 1) * (2 ^ (2 - 2)) = 1
    // R: 3


RETURN nNumber
