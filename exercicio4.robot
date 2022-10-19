##Exercício If Inline + For in Range
  ##Crie um loop que conte quantos números par existem entre 0 e 10, usando if inline

*** Settings ***

Documentation   Exercicio 4

*** Variable ***

${NUMERO}    0  1   2   3   4   5   6   7   8   9   10

*** Keywords ***
Lista de numeros
    FOR ${NUMERO}   IN RANGE 10
        if ${NUMERO} / 2 == 0
            Log to Console  ${NUMERO}
            ${CONTADOR} Evaluate ${CONTADOR} + 1
        ELSE
            Log To Console  ${NUMERO}
        END
    END
    Log To Console  Quantidade de numeros pares  ${CONTADOR}

