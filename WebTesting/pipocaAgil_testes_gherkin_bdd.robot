*** Settings ***
Documentation        Essa suite testa o site do pipoca Agil
Library        SeleniumLibrary     

Resource    pipocaAgil_resources.robot
Test Setup        Abrir o navegador
Test Teardown        Fechar o navegador


*** Test Cases ***

#Cenário 1: Acessar a Home page
    #[Documentation]   Esse teste tenta acessar a home page do site Pipoca Agil 
    #[Tags]   menus
    #Dado que estou na home page do Pipoca Ágil
     #   Acessar a home page do site pipoca agil

#Cenário 2: Acessar o menu Trilha de Conhecimento
    

#Cenário 3: Verificar se o botão para fazer + Upload Links+ Upload Arquivos estão visiveis
    


    
