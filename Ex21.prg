function main()

    local vetor := {}
    local nI

    carrega_vetor_AZ(@vetor)
    mostra_vetor(vetor)

RETURN nil

// Função para carregar o vetor com letras minusculas aleatorias
static function carrega_vetor_AZ(vetor)

    local nI, nRand, check

    for nI := 1 to 12
        nRand := Random()%25 + 97

        if AScan(vetor, Chr(nRand)) == 0    // Condição para verificar se a letra ja existe no vetor
           AAdd(vetor, Chr(nRand)) 
        end if

    next nI

return nil

// Função para mostrar o vetor
static function mostra_vetor(vetor)

    QOUT(hb_valtoexp(vetor))

RETURN nil