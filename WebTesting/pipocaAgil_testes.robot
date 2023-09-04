*** Settings ***
Documentation        Essa suite testa o site do pipoca Agil
Library        SeleniumLibrary     

Resource    pipocaAgil_resources.robot
Test Setup        Abrir o navegador
Test Teardown        Fechar o navegador


*** Test Cases ***

Caso de Teste 1: Acessar a Home page
    [Documentation]   Esse teste tenta acessar a home page do site Pipoca Agil 
    [Tags]   menus
    Acessar a home page do site Pipoca Agil
    Entrar no menu LOGIN
    Verificar se aparece a frase "Faça o Login"

Caso de Teste 2: Acessar o menu Trilha de Conhecimento
    Acessar a home page do site Pipoca Agil
    Entrar no menu LOGIN
    Verificar se aparece a frase "Faça o Login"
    Digitar o email do adm
    Digitar a senha do adm
    Clicar em entrar
    Clicar em "Consultar o painel de adm"
    Clicar no botão Upload Trilha do Conhecimento
    #Verificar se o título da página fica "Trilha de Conhecimento"
    Verificar se aparecerá uma lista onde contém o Título


Caso de Teste 3: Verificar se o botão para fazer + Upload Links+ Upload Arquivos estão visiveis
    Acessar a home page do site Pipoca Agil
    Entrar no menu LOGIN
    Verificar se aparece a frase "Faça o Login"
    Digitar o email do adm
    Digitar a senha do adm
    Clicar em entrar
    Clicar em "Consultar o painel de adm"
    Clicar no botão Upload Trilha do Conhecimento
    Verificar se os botões "+ Upload Links+ Upload Arquivos" estão visiveis

Caso de Teste 4: Validação cadastro de usuário
    Acessar a home page do site Pipoca Agil
    Entrar no menu CADASTRE-SE
    Digitar o nome do usuário
    Digitar a data de nascimento do usuário
    Digitar o email do usuário
    Digitar a senha do usuário
    Escolher o objetivo do usuário
    Clicar no botão CADASTRAR
    Verificar se aperece a mensagem "Cadastro realizado com sucesso"

Caso de Teste 5: Adicionar link na Trilha de Conhecimento
    Acessar a home page do site Pipoca Agil
    Entrar no menu LOGIN
    Verificar se aparece a frase "Faça o Login"
    Digitar o email do adm
    Digitar a senha do adm
    Clicar em entrar
    Clicar em "Consultar o painel de adm"
    Clicar no botão Upload Trilha do Conhecimento
    Clicar no botão + Upload Links


    
