***Settings***  
Library  SeleniumLibrary

***Variables***
${URL_LOGIN}    https://estivalet.github.io/robot-static-testing-site/index.html  
${NAVEGADOR_TESTE}  firefox

${BUTTON_LOGIN}   id=login

${INPUT_USUARIO}  id=username
${INPUT_SENHA}    Id=password

${USUARIO}   admin
${SENHA}     admin


***Keywords***
Abrir navegador no sistema cadastro de clientes
   Open Browser     ${URL_LOGIN}    ${NAVEGADOR_TESTE}
   Maximize Browser Window
   Set Selenium Speed   0.5s

Fazer login no sistema cadastro de clientes
   Informar usuário e senha
   Realizar o login 

Informar usuário e senha
   Input Text   ${INPUT_USUARIO}    ${USUARIO}
   Input Text   ${INPUT_SENHA}      ${SENHA}

Realizar o login
   Click Element   ${BUTTON_LOGIN}   

Fechar navegador    
    Close Browser   