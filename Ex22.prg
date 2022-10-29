SET PROCEDURE TO Lib_Vetores.prg

function main()

    local vetor := Array(12)
    local nI, popV
    local contador := 0

    // Loop para carregar o vetor
    for nI := 1 TO len(vetor)
        ACCEPT "Digite um número para por no vetor: " TO popV

        if isdigit(popV)
            AFill(vetor, Val(popV), nI, 1)
        end if
    next nI

    // Função para colocar o vetor em ordem crescente
    Asort(vetor)
    
    // Chamda da função de uma biblioteca para msotrar o vetor
    mostra_vetor(vetor)

RETURN nil