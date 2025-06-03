*** Settings ***
Library     SeleniumLibrary
Resource    ../../common/constants.resource
Library     FakerLibrary

*** Keywords ***
Que abro o navegador na url orange
    Wait Until Element Is Visible    ${Username_element}    3s
    Input Text                       ${Username_element}    ${Username}

    Wait Until Element Is Visible    ${Password_element}    3s
    Input Text                       ${Password_element}    ${Password}

    Wait Until Element Is Visible    ${Btn_login}    3s
    Click Element                    ${Btn_login}
Clico no campos de preenchimento
    Wait Until Element Is Visible    ${Cadastra_user}    3s
    Click Element                    ${Cadastra_user}

    Wait Until Element Is Visible    ${Btn_Add_user}    timeout=3s
    Click Element                    ${Btn_Add_user}

    Wait Until Element Is Visible    ${dropdown_1}    3s
    Click Element                    ${dropdown_1}

    Click Element    ${Selec_dropdown_1}

    Press Keys            ${Selec_List}         Thomas Benny
    Set Selenium Speed    1.5s
    Click Element         ${Selec_list_op}


    Click Element    ${dropdown_2}
    Click Element    ${dropdown_3}

    ${email}    FakerLibrary.First Name
    ${sobrenome}    FakerLibrary.Last Name
    ${nome_completo}       Catenate    ${email}    ${sobrenome}

    Input Text    ${name_user}         ${nome_completo}
    Input Text    ${cad_senha}         TesteAutomação1
    Input Text    ${confirma_senha}    TesteAutomação1
Clico no botão salvar novo usuario
    Set Selenium Speed         1.0s
    Click Element              ${btn_save}
    Capture Page Screenshot