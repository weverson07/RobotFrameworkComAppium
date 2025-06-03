*** Settings ***
Resource    ../common/constants.resource
Library     ../common/WebDriver.py
Library     ../common/loadEnv.py

*** Keywords ***
Iniciar sessão web
    [Arguments]    ${BROWSER}    ${OPTIONS}    ${AMBIENTE}    ${BASE_URL}=
    Selecionar URL por ambiente        ${AMBIENTE}
   # ${DRIVER_PATH}    Get Driver Path With Browser    ${BROWSER}
    Open Browser    browser=${BROWSER}
    #...    executable_path=${DRIVER_PATH}
    #...    options=${OPTIONS}
    Log    ${OPTIONS}
    Maximize Browser Window
    Go To    ${URL_orange}

Selecionar URL por ambiente
    [Arguments]       ${AMBIENTE}
    ${BASE_URL}    Set Variable    ${URL_orange}
    IF    '${AMBIENTE}' == 'umc'
        Set Test Variable    ${BASE_URL}    ${BASE_URL}
    ELSE IF    '${AMBIENTE}' == 'orange'   
        Set Test Variable    ${BASE_URL}    ${URL_orange}
    ELSE
        Fail    Ambiente ${AMBIENTE} não encontrado.
    END
Finalizar sessão web
    Close All Browsers