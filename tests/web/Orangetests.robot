*** Settings ***
Library    SeleniumLibrary
Resource   ../../common/constants.resource
Resource   ../../steps/web/orangeSteps.resource
Resource   ../../hooks/HOOKS.resource

*** Test Cases ***
Login Test
    [Documentation]    Teste para realização de Login
    [Setup]    Iniciar sessão web          firefox               ${OPTIONS}    orange       
    Given Que abro o navegador na pagina orange
    When Preencho todos os campos de cadastro
    Then Clico no botão salvar novo usuario pagina
    [Teardown]      Finalizar sessão web