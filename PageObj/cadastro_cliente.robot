***Settings***
Library   SeleniumLibrary

***Variables*** 
#Campos do formulario

${BUTTON_CADASTRAR}  Id=cadastrar
${BUTTON_PESQUISAR}  xpath=//button[text()='Pesquisar']

${CAMPO_MSG}     id=msg
${MSG_SUCESSO}   Cliente cadastrado com sucesso!
${TITULO_PAGE}   Cadastro de Clientes

${CAMPO_ESCOLHA_TESTES_AUTOMATIZADOS}   xpath=//span[contains(text(),'Testes Automatizados')]/preceding::input[1]

${INPUT_NOME_CLIENTE}   Id=nome_cliente
${INPUT_CPF_CLIENTE}    Id=cpf
${INPUT_DATA_NASC_CLIENTE}   Id=dtnasc
${INPUT_CEP_CLIENTE}    Id=cep
${INPUT_NUM_ENDERECO_CLIENTE}  Id=numero  
${INPUT_RUA_CLIENTE}    id=rua

${RADIO_MASC}   xpath=//input[@value='masculino']
${INPUT_TEL}    Id=prependedtext
${INPUT_EMAIL}   Id=email
${SELEC_ESTADO_CIVIL}   Id=estado-civil

${NAVEGADOR_TESTE}   https://estivalet.github.io/robot-static-testing-site/cadastro/index.html
${NAVEGADOR_UTILIZADO}  firefox

${MENSAGEM_NOME_OBRIGATORIO}   Nome é obrigatório!
${MENSAGEM_CPF_OBRIGATORIO}    CPF é obrigatório!

#Dados dos campos do formulario

${NOME_CLIENTE}  Rafael Silva
${CPF}   12345678909 
${DATA_NASCIMENTO}   12092009
${TELEFONE}  11856545874
${EMAIL}    rafa_robotframework@gmail.com.br
${CEP}  09791500
${ESTADO_CIVIL}  Casado(a)

***Keywords***
Aguardar o valor "${valor_esperado}" no elemento "${elemento}" estar presente
    ${valor_atual}=   Get Element Attribute   ${elemento}   value
    should Be Equal As Strings  ${valor_atual}   ${valor_esperado}

Cadastrar o cliente    
     Click Element   ${BUTTON_CADASTRAR}    
    Wait Until Element Is Visible    ${CAMPO_MSG}


Preencher cadastro do cliente    
    Input Text      ${INPUT_NOME_CLIENTE}     ${NOME_CLIENTE}
    Input Text      ${INPUT_CPF_CLIENTE}    ${CPF}         
    Input Text      ${INPUT_DATA_NASC_CLIENTE}   ${DATA_NASCIMENTO}
    Click Element   ${RADIO_MASC}
    Input Text      ${INPUT_TEL}    ${TELEFONE} 
    Input Text      ${INPUT_EMAIL}    ${EMAIL}
    Input Text      ${INPUT_CEP_CLIENTE}  ${CEP}

    Click Element   ${BUTTON_PESQUISAR}
    Wait Until Keyword Succeeds  10s    200ms   Aguardar o valor "Rua Amélio Storti" no elemento "${INPUT_RUA_CLIENTE}" estar presente
    Input Text      ${INPUT_NUM_ENDERECO_CLIENTE}   20
    Select From List By Value     ${SELEC_ESTADO_CIVIL}   ${ESTADO_CIVIL}
    Click Element   ${CAMPO_ESCOLHA_TESTES_AUTOMATIZADOS}

Verificar mensagem de sucesso    
     Wait Until Page contains    ${MSG_SUCESSO}

Verificar o titulo da pagina     
    Title Should Be     ${TITULO_PAGE}

Verificar a mensagem informando o campo nome é obrigatório  
    Wait Until Page Contains    ${MENSAGEM_NOME_OBRIGATORIO}

Verificar a mensagem informando o campo cpf é obrigatório
    Wait Until Page Contains    ${MENSAGEM_NOME_OBRIGATORIO}

Preencher o nome do cliente 
    Input Text      ${INPUT_NOME_CLIENTE}     ${NOME_CLIENTE}
