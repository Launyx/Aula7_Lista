function main()

    local vetor := {"A", "B", "C", "FEIJOADA", "NEOSORO"}
    local vetornum := {1, 2, 3, 4 ,5}

    le_vetor(vetor)
    le_vetor_num(vetornum)

RETURN nil

// Função para mostrar todos os elementos de um vetor
function le_vetor(vetor)

    local nI

    for nI := 1 TO len(vetor)
        QOUT(vetor[nI])
    next nI

return nil

// Função para mostrar todos os elementos de um vetor numérico
function le_vetor_num(vetor)

    local nI

    for nI := 1 TO len(vetor)
        QOUT(vetor[nI])
    next nI

return nil