*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}        https://pa-portal.vercel.app
${MENU_HOME}       //li[contains(.,'HOME')]
${MENU_LOGIN}    //a[contains(.,'LOGIN')]
${MENU_CADASTRE-SE}        //button[contains(.,'CADASTRE-SE')]
${HEADER_FACAOLOGIN}    //h2[contains(.,'Faça o Login')]
${DIGITAR_EMAIL}        //input[contains(@type,'email')]
${DIGITAR_PASSWORD}     //input[contains(@type,'password')]  
${BOTAO_ENTRAR}          //button[contains(.,'ENTRAR')]
${BOTAO_PAINEL_ADM}     //p[@class='text-secondary mb-3 font-semibold'][contains(.,'Consultar o painel de adm')]
${BOTAO_TRILHADECONHECIMENTO}    //img[contains(@alt,'IconRocket')]
#${TITULO_TRILHADECONHECIMENTO}    //h2[@class='text-white text-4xl font-bold'][contains(.,'Trilha de Conhecimento')]

*** Keywords ***

Abrir o navegador
    Open Browser       browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site pipoca agil
  Go To    url=${URL}
  Wait Until Element Is Visible    locator=${MENU_HOME}

Entrar no menu LOGIN
    Click Element    locator=${MENU_LOGIN}

Verificar se aparece a frase "Faça o Login"
    Wait Until Element Is Visible    locator=${HEADER_FACAOLOGIN} 

Digitar o email do adm
    Input Text    locator=${DIGITAR_EMAIL}    text=ibsoncabral@gmail.com

Digitar a senha do adm
    Input Password    locator=${DIGITAR_PASSWORD}    password=mudar1234

Clicar em entrar
    Click Element    locator=${BOTAO_ENTRAR} 



Clicar em "Consultar o painel de adm"
    Wait Until Element Is Visible    locator=${BOTAO_PAINEL_ADM}    timeout=15s
    Click Element    locator=${BOTAO_PAINEL_ADM}

Clicar no botão Upload Trilha do Conhecimento
    Wait Until Element Is Visible    locator=${BOTAO_TRILHADECONHECIMENTO}    timeout=10s
    Click Image    locator=${BOTAO_TRILHADECONHECIMENTO}

#Verificar se o título da página fica "Trilha de Conhecimento"
    #Wait Until Element Is Visible    locator=${TITULO_TRILHADECONHECIMENTO}    
    #Page Should Contain Element    locator=${TITULO_TRILHADECONHECIMENTO}  

Verificar se aparecerá uma lista onde contém o Título
    Wait Until Element Is Visible    locator=//div[@class='flex justify-center w-full'][contains(.,'Título')]
    Page Should Contain Element    locator=//div[@class='flex justify-center w-full'][contains(.,'Título')]

Verificar se os botões "+ Upload Links+ Upload Arquivos" estão visiveis
    Wait Until Element Is Visible    locator=//div[contains(@class,'flex items-center')]
    Wait Until Element Is Visible    locator=//div[@class='flex justify-center w-full'][contains(.,'Adicionado em')]
    Element Should Be Visible   locator=//div[contains(@class,'flex items-center')]

Entrar no menu CADASTRE-SE
    Click Button    locator=${MENU_CADASTRE-SE}

Digitar o nome do usuário
    Wait Until Element Is Visible    locator=//input[@type='text']
    Input Text    locator=//input[@type='text']   text=Karine Bueno

Digitar a data de nascimento do usuário
    Input Text    locator=name=birth_date    text=25-08-1992

Digitar o email do usuário
    Input Text    locator=//input[contains(@placeholder,'Email')]   text=kolofe3396@pbridal.com

Digitar a senha do usuário
    Input Password    locator=//input[contains(@placeholder,'Senha')]    password=2VJP74A5

Escolher o objetivo do usuário
    Click Element    locator=//select[contains(@name,'type_of_audience')]

Clicar no botão CADASTRAR
    Click Button    locator=//input[contains(@value,'CADASTRAR')]

Verificar se aperece a mensagem "Cadastro realizado com sucesso"
    Wait Until Element Is Visible    locator=//div[contains(@class,'Toastify')]
    Wait Until Element Contains    locator=//div[contains(@class,'Toastify')]    text=Usuário cadastrado com sucesso!

Clicar no botão + Upload Links
    Wait Until Element Is Visible    locator=//a[contains(.,'+ Upload Links')]
    Click Button    locator=//a[contains(.,'+ Upload Links')]
    Input Text    id="titulo"   text=Scrum