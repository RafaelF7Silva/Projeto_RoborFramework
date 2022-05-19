***Variables***
${BUTTON_CADSTRO_CLIENTES}    id=btn-cadastro-cliente
${BUTTON_LOGOUT}              id=btn-logout  

***Keywords***
Ir para pagina cadastro de clientes
   Click Element    ${BUTTON_CADSTRO_CLIENTES}
   
Fazer logout do sistema cadastro de clientes      
   Click Element    ${BUTTON_LOGOUT}