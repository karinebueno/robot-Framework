*** Settings ***

Documentation   Exercício 2

*** Variable ***

&{DADO_PESSOAL}    Idade=28     Ano=1993

*** Keywords ***
Vai receber a Idade
    ${Idade} 
    RETURN    ${Ano}
    IF    ${Ano} < 2000
        RETURN          NASCEU NO SÉCULO PASSADO
    END