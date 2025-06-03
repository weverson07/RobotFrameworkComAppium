*** Settings ***
Library    AppiumLibrary
Resource   ../../pages/mobile/CalculatorPage.robot
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
    Click Number    teste@gmail.com
    Click Operation    plus
    Click Number    7
    Click Operation    equals
    Verify Result    14
