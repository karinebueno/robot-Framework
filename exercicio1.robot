*** Settings ***

Documentation   Exercício DICIONARIO

*** Variable ***

#Tipo Dicionário
&{DADOS_PESSOAL}    Nome=Karine Bueno   Idade=28    Rua=travessa mariquinha capistrano  Número=30   CEP=37540000    Bairro=boa vista    cidade=santa rita do sapucai    estado=minas gerais  

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