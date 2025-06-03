*** Settings ***
Library    AppiumLibrary
*** Variables ***
${CALCULATOR_BUTTON_XPATH}   //android.widget.EditText[@content-desc="${button}"]

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
    [Arguments]    ${number}    
    ${xpath}    Set Variable    //android.widget.EditText[@content-desc="${number}"]
    Wait Until Page Contains Element    ${xpath}
    Input Text    ${xpath}    ${number}

Click Operation
    [Arguments]    ${operation}
    ${xpath}    Set Variable    //android.widget.ImageButton[@content-desc="${operation}"]
    Wait Until Page Contains Element    ${xpath}
    Click Element    ${xpath}

Verify Result
    [Arguments]    ${expected_result}
    ${result_element}    Find Element    //android.widget.TextView[@resource-id="result"]
    ${result_text}    Get Text    ${result_element}
    Should Be Equal    ${result_text}    ${expected_result}
