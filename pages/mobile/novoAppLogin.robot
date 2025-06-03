*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Open Calculator
    [Arguments]    ${remote_url}    ${platform_name}    ${device_name}    ${app}
    Open Application        ${remote_url}
    ...    platformName=${platform_name}
    ...    deviceName=${device_name}
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=2500
    ...    app=${app}

Click Number   
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/etLogGmail    10
    Input Text    id=com.example.vamsi.login:id/etLogGmail    teste@gmail.com

Click Operation
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/etLoginPassword    5s
    Input Password    com.example.vamsi.login:id/etLoginPassword    1234567

Verify Result
    Wait Until Element Is Visible    com.example.vamsi.login:id/tvRegister    3s
    Click Element    com.example.vamsi.login:id/tvRegister

digite nome user   
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/etRegName    10
    Input Text    id=com.example.vamsi.login:id/etRegName    teste
digite telefone user   
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/etRegPhone    10
    Input Text    id=com.example.vamsi.login:id/etRegPhone    11983969921

digite seu e-mail  
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/etRegGmail    3s
    Input Text    id=com.example.vamsi.login:id/etRegGmail    teste@gmail.com

digite sua senha
    Wait Until Element Is Visible    id=com.example.vamsi.login:id/etRegPassword    5s
    Input Password    com.example.vamsi.login:id/etRegPassword    1234567

clicar no botao registrar
    Wait Until Element Is Visible       com.example.vamsi.login:id/btnRegLogin    3s
    Click Element    	com.example.vamsi.login:id/btnRegLogin
    Should Contain    Registration Sucessful    Registration Sucessful
    Capture Page Screenshot      

botao login 
    Wait Until Element Is Visible    	com.example.vamsi.login:id/btnGotoLogin    3s
    Click Element     	com.example.vamsi.login:id/btnGotoLogin
    Should Contain    Registration Sucessful    Registration Sucessful
