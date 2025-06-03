*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource   ../../common/constants.resource

*** Keywords ***
Status Should Be
    [Arguments]    ${response}    ${expected_status}
    ${status}=                    Get Status Code    ${response}
    Should Be Equal As Numbers    ${status}          ${expected_status}

Content-Type Should Be
    [Arguments]    ${response}    ${expected_content_type}
    ${content_type}=    Get Header         ${response}                 Content-Type
    Should Contain      ${content_type}    ${expected_content_type}