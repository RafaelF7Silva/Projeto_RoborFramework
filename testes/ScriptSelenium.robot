***Settings***
Library  SeleniumLibrary

***Test Cases***
Abrir Navegador na página google
    Abrir pagina "http://www.google.com" com o navegador "firefox"
    Title Should Be  Google
    Input Text   name=q     Robot Framework
    Press Keys   name=q     ENTER
    Close Browser

***Keywords***
Abrir pagina "${URL}" com o navegador "${navegador}"
    Open Browser   ${URL}   ${navegador}