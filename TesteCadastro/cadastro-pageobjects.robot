**Settings***

Resource  ../PageObj/LoginPage.robot
Resource  ../PageObj/MenuPage.robot
Resource  ../PageObj/cadastro_cliente.robot

Suite Setup  Abrir navegador no sistema cadastro de clientes
Test Setup   Fazer login no sistema cadastro de clientes
Test Teardown  Fazer logout do sistema cadastro de clientes
Suite Teardown  Fechar navegador

***Test Cases***
Fazer um cadastro de um novo cliente 
    Ir para pagina cadastro de clientes
    Set Selenium Speed   0.5s
    Verificar o titulo da pagina
    Maximize Browser Window
    Set Selenium Speed   0.5s
    Preencher cadastro do cliente
    Cadastrar o cliente
    Verificar mensagem de sucesso

Não permitir cadastrar um cliente sem informar nome
   Ir para pagina cadastro de clientes
   Verificar o titulo da pagina
   Cadastrar o cliente
   Verificar a mensagem informando o campo nome é obrigatório   

Não permitir cadastrar um cliente sem informar cpf
   Ir para pagina cadastro de clientes
   Verificar o titulo da pagina   
   Preencher o nome do cliente
   Cadastrar o cliente
   Verificar a mensagem informando o campo cpf é obrigatório