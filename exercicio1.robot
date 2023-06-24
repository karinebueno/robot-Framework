*** Settings ***

Documentation   Exercício DICIONARIO

*** Variable ***

#Tipo Dicionário
&{DADOS_PESSOAL}    Nome=William Amaral   Idade=32    Rua=Carla Alameda  Número=30   CEP=63309    Bairro=boa vista    cidade=São Paulo    estado=São Paulo  

*** Test Cases ***
Caso de teste do exemplo 01
    Uma keyword qualquer 01

*** Keywords ***
Uma keyword qualquer 01
    
    #Dicionário
    Log To Console    Nome: ${DADOS_PESSOAL.Nome}
    Log To Console    Idade: ${DADOS_PESSOAL.Idade}
    Log To Console    Rua: ${DADOS_PESSOAL.Rua}
    Log To Console    Número: ${DADOS_PESSOAL.Número}
    Log To Console    CEP: ${DADOS_PESSOAL.CEP}
    Log To Console    Bairro: ${DADOS_PESSOAL.Bairro}