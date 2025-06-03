*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource    ../../pages/web/orangePage.resource
*** Keywords ***
Que abro o navegador na pagina orange 
    Que abro o navegador na url orange
Preencho todos os campos de cadastro
    Clico no campos de preenchimento
Clico no botão salvar novo usuario pagina
    Clico no botão salvar novo usuario