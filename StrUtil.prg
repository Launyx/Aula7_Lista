function main()

    local texto := "luan castelhano"
    // QOUT(tam("PANELA"))

    // QOUT(posic("feijoada", "j"))

    // QOUT(copia(texto, 4, 5))

    // QOUT(Maiusc("FeIjOaDa"))

    // QOUT(minusc("fEiJoAdA"))

    // QOUT(inverteStr("Bom dia compania"))

    // del(@texto, 5, 10)
    // QOUT(texto)
    
    // Ins("e foda",@texto, 5)
    // QOUT(texto)

    // LFill(@texto, "a")
    // QOUT(texto)

    // RFill(@texto, "e isso ai")
    // QOUT(texto)

    // QOUT(texto)
    // _Trim(@texto)
    // QOUT(texto)

    // _Subst(@texto, "a", "o")
    // QOUT(texto)

RETURN nil

function tam(String)    // Função para obter tamanho da string

    local vetor := {}
    local nI, caracter := ""
    local bLoop := .T.
    local cont := 1

    while bLoop 
        caracter := SubStr(String, cont, 1)
        
        if caracter == ""
            bLoop := .F.
        else
            cont ++
        end if
    end do
    cont --

RETURN cont

function posic(String, caracter)    // Função para pegar a posição de um caractere

    local bLoop := .T.
    local carac, cont := 1

    while bLoop
        carac := SubStr(String, cont, 1)
        if upper(carac) == upper(caracter)
            bLoop := .F.
        else
            cont ++
        end if
    end do

RETURN cont

function copia(String, posicao, quantidade)

    local texto := ""

    texto := SubStr(String, posicao, quantidade)

RETURN texto

function Maiusc(String) // Função para tornar uma string maiuscucla

    local Maiuscula := ""
    loca caracter, cont := 1
    local bLoop := .T.

    while bLoop 
        caracter := SubStr(String, cont, 1) 
        
        if caracter == ""
            bLoop := .F.
        elseif Asc(caracter) < 97 .OR. Asc(caracter) > 122
            Maiuscula += caracter
            cont ++            
        else
            caracter := Asc(caracter) - 32 
            Maiuscula += Chr(caracter)
            cont ++      
        end if
    end do

RETURN Maiuscula

function Minusc(String) // Função para tornar uma string minuscula

    local Minuscula := ""
    loca caracter, cont := 1
    local bLoop := .T.

    while bLoop 
        caracter := SubStr(String, cont, 1) 
        
        if caracter == ""
            bLoop := .F.
        elseif Asc(caracter) < 65 .OR. Asc(caracter) > 90
            Minuscula += caracter
            cont ++            
        else
            caracter := Asc(caracter) + 32 
            Minuscula += Chr(caracter)
            cont ++      
        end if
    end do

RETURN Minuscula

function InverteStr(String) // Função para inverter uma string

    local vetor := {}
    local cont, nI, cContra := ""

    for nI := len(String) TO 1 step -1
        AAdd(vetor, SubStr(String, nI, 1))
    next nI

    for cont := 1 TO len(vetor)
        cContra += vetor[cont]
    next cont

RETURN cContra

function del(String, posicao, quantidade)   // Função para remover uma parte de uma string

    local vetor := {}
    local nI1, nI2, nI3

    for nI1 := 1 TO len(String)
        AAdd(vetor, SubStr(String, nI1, 1))
    next nI1

    for nI2 := 1 TO quantidade
        Adel(vetor, posicao)
    next nI2

    String := ""

    for nI3 := 1 TO len(vetor)
        if vetor[nI3] != NIL
            String += vetor[nI3]
        end if
    next nI3

RETURN nil

function Ins(subString, String, posicao)    // Função para inserir uma substring em uma string

    local vetor := {}
    local nI1, nI2, nI3
    local texto := ""
    
    for nI1 := 1 TO tam(String)
        AAdd(vetor, SubStr(String, nI1, 1))
    next nI1

    for nI2 := 1 TO posicao
        texto += vetor[nI2]
    next nI2

    texto += subString
    String := texto

RETURN nil

function LFill(String, caractere) // Função para preencher uma string à esquerda

    local vetor := {}
    local nI1, nI2
    local char := caractere

    for nI1 := 1 TO tam(String)
        AAdd(vetor, SubStr(String, nI1, 1))
    next nI1

    for nI2 := 1 TO len(vetor)
        char += vetor[nI2]
    next nI2

    String := char

RETURN nil

function RFill(String, caractere) // Função para preencher uma string à direita

    local vetor := {}
    local nI1, nI2
    local char := caractere
    local texto := ""

    for nI1 := 1 TO tam(String)
        AAdd(vetor, SubStr(String, nI1, 1))
    next nI1

    for nI2 := 1 TO len(vetor)
        texto += vetor[nI2]
    next nI2

    texto += char
    String := texto

RETURN nil

function _Trim(String)  // Função para remover espaços em branco em uma string

    local vetor := {}
    local nI1, nI2, texto := ""

    for nI1 := 1 TO tam(String)
        if SubStr(String, nI1, 1) != " "
            AAdd(vetor, SubStr(String, nI1, 1))
        end if
    next nI1

    for nI2 := 1 TO len(vetor)
        texto += vetor[nI2]
    next nI2

    String := texto

RETURN nil

function _Subst(String, caracAlvo, caracSubs)   // Função para substituir um caracter por outro em todas suas ocorrências

    local vetor := {}
    local char, nI1, nI2

    for nI1 := 1 TO tam(String)
        char := SubStr(String, nI1, 1)
        if char == caracAlvo
            AAdd(vetor, caracSubs)
        else
            AAdd(vetor, char)
        end if
    next nI1

    String := ""

    for nI2 := 1 TO len(vetor)
        String += vetor[nI2]
    next nI2

RETURN nil