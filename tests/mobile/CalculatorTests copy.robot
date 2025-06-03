*** Settings ***
Library    AppiumLibrary
Resource   ../../pages/mobile/novoAppLogin.robot
Library    OperatingSystem

*** Variables ***
${REMOTE_URL}           http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}        Android
${DEVICE_NAME}          emulator-5554
${APP}                  ${CURDIR}/app-debug.apk  # Caminho relativo para o APK

*** Test Cases ***
Basic Addition Test
    [Documentation]    This test performs a basic addition on the calculator app and verifies the result.
    [Tags]    addition
    Open Calculator        ${REMOTE_URL}    ${PLATFORM_NAME}    ${DEVICE_NAME}    ${APP}
    Click Number    
    Click Operation    
    Click Number    
    Click Operation    
    Verify Result   
    digite nome user
    digite telefone user
    digite seu e-mail 
    digite sua senha
    clicar no botao registrar
    botao login
