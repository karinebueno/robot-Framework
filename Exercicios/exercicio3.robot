##Exercicio For Simples + Lista
 ## Exiba cada uma das frutas de uma lista usando um For Simples
*** Settings ***

Documentation   Exercicio 3

*** Variable ***

@{FRUTAS}    maca   banana  pera    abacaxi     ameixa  uva

*** Keywords ***
Lista de frutas
    FOR ${FRUTAS}   IN RANGE 5 
        Log To Console ${FRUTAS}
    END
