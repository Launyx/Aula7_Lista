function main()

    local senha

    ACCEPT "Digite uma senha para criptografá-la: " TO senha
    
    encrypt(@senha)
    QOUT("Senha criptografada: " + senha)

RETURN nil

static function encrypt(String)

    local nI1, nI2, cont, vetor := {}
    local aux, tamanho

    for nI1 := 1 TO len(String)
        AAdd(vetor, SubStr(String, nI1, 1))
    next nI1

    tamanho := len(vetor) + 1
    String := ""

    for cont := 1 TO len(vetor) / 2
        aux := Asc(vetor[cont])
        vetor[cont] := Asc(vetor[tamanho - cont])
        vetor[tamanho - cont] := aux
        // QOUT(Asc(vetor[cont]))
    next cont

    for nI2 := 1 TO len(vetor)
        String += Alltrim(Str(vetor[nI2]))
    next nI2

RETURN nil