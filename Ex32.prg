function main()

    local senha

    ACCEPT "Digite uma senha para criptografá-la: " TO senha
    
    encrypt(@senha)
    QOUT("Senha criptografada: " + senha)

RETURN nil

//Função para criptografar a senha do usuario
static function encrypt(String)

    local nI1, nI2, cont, vetor := {}
    local aux, tamanho

    // Loop para adicioar ao vetor cada caracter da senha do usuario
    for nI1 := 1 TO len(String)
        AAdd(vetor, SubStr(String, nI1, 1))
    next nI1

    tamanho := len(vetor) + 1
    String := ""

    //Loop para criptografar a senha utilizando a tabela ASCII
    for cont := 1 TO len(vetor) / 2
        aux := Asc(vetor[cont])
        vetor[cont] := Asc(vetor[tamanho - cont])
        vetor[tamanho - cont] := aux
    next cont

    // Loop para colocar os elemento do vetor em uma string
    for nI2 := 1 TO len(vetor)
        String += Alltrim(Str(vetor[nI2]))
    next nI2

RETURN nil