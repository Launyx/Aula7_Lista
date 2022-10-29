function main()

    local bLoop := .T.
    local nChoice

    while bLoop
        ACCEPT "Gostaria de traduzir para código 'morse' ou para 'caractere'?" TO nChoice

        if upper(nChoice) == "MORSE"
            traduz_morse(nChoice)
            bLoop := .F.

        elseif upper(nChoice) == "CARACTERE"
            traduz_caractere(nChoice)
            bLoop := .F.

        else
            QOUT("Opção inválida, escolha 'morse' ou 'caractere'")
            loop
        end if
    end do

RETURN nil

static function traduz_morse(escolha)

    // Array com traduções do codigo morse
    local aMorse := {{"A", ".-"}, {"B", "-..."}, {"C", "-.-."},;
                     {"D", "-.."}, {"E", "."}, {"F", "..-."},;
                     {"G", "--."}, {"H", "...."}, {"I", ".."},; 
                     {"J", ".---"}, {"K", "-.-"}, {"L", ".-.."},;
                     {"M", "--"}, {"N", "-."}, {"O", "---"},;
                     {"P", ".--."}, {"Q", "--.-"}, {"R", ".-."},;
                     {"S", "..."}, {"T", "-"}, {"U", "..-"},;
                     {"V", "...-"}, {"W", ".--"}, {"X", "-..-"},;
                     {"Y", "-.--"}, {"Z", "--.."}, {"1", ".----"},;
                     {"2", "..---"}, {"3", "...--"}, {"4", "....-"},;
                     {"5", "....."}, {"6", "-...."}, {"7", "--..."},;
                     {"8", "---.."}, {"9", "----."}, {"0", "-----"}}
    local nI, codMor

    ACCEPT "Digite o código morse: " TO codMor

    // Laço para traduzir o codigo morse para caractere baseado no array
    for nI := 1 TO 36
        if aMorse[nI][2] == codMor
            QOUT(aMorse[nI][1])
        end if
    next nI
            

RETURN nil

static function traduz_caractere(morse)

    // Array com traduções do codigo morse
    local aMorse := {{"A", ".-"}, {"B", "-..."}, {"C", "-.-."},;
        {"D", "-.."}, {"E", "."}, {"F", "..-."},;
        {"G", "--."}, {"H", "...."}, {"I", ".."},; 
        {"J", ".---"}, {"K", "-.-"}, {"L", ".-.."},;
        {"M", "--"}, {"N", "-."}, {"O", "---"},;
        {"P", ".--."}, {"Q", "--.-"}, {"R", ".-."},;
        {"S", "..."}, {"T", "-"}, {"U", "..-"},;
        {"V", "...-"}, {"W", ".--"}, {"X", "-..-"},;
        {"Y", "-.--"}, {"Z", "--.."}, {"1", ".----"},;
        {"2", "..---"}, {"3", "...--"}, {"4", "....-"},;
        {"5", "....."}, {"6", "-...."}, {"7", "--..."},;
        {"8", "---.."}, {"9", "----."}, {"0", "-----"}}
local nI, codMor

    ACCEPT "Digite o caractere: " TO codMor

    // Laço para traduzir o caractere para codigo morse baseado no array
    for nI := 1 TO 36
        if aMorse[nI][1] == upper(codMor)
            QOUT(aMorse[nI][2])
        end if
    next nI

RETURN nil