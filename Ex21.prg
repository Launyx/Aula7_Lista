function main()

    local vetor := {}
    local nI

    carrega_vetor_AZ(@vetor)
    mostra_vetor(vetor)

RETURN nil

static function carrega_vetor_AZ(vetor)

    local nI, nRand, check

    for nI := 1 to 12
        nRand := Random()%25 + 97

        if AScan(vetor, Chr(nRand)) == 0
           AAdd(vetor, Chr(nRand)) 
        end if

    next nI

return nil

static function mostra_vetor(vetor)

    QOUT(hb_valtoexp(vetor))

RETURN nil