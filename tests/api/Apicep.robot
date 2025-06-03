*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource   ../../steps/api/ApicepSteps.resource
*** Test Cases ***
Test API Response Status Code
    [Documentation]    Verifica se o código de status da resposta é 200
    Create Session                viacep                     ${URL}
    ${response}=                  GET On Session             viacep                     /ws/06433120/json/
    Should Be Equal As Numbers    ${response.status_code}    200
    ${response_json}=             Convert To String          ${response.content}
    Log                           ${response_json}
    ${response_}=                 Convert To String          ${response.status_code}
    Log                           ${response_}

Test API JSON Response Keys
    [Documentation]    Verifica as chaves no JSON retornado
    Create Session                   viacep            ${URL}
    ${response}=                     GET On Session    viacep                 /ws/06433120/json/
    ${json}=                         To JSON           ${response.content}
    Dictionary Should Contain Key    ${json}           cep
    Dictionary Should Contain Key    ${json}           logradouro
    Dictionary Should Contain Key    ${json}           complemento
    Dictionary Should Contain Key    ${json}           bairro
    Dictionary Should Contain Key    ${json}           localidade
    Dictionary Should Contain Key    ${json}           uf
    Dictionary Should Contain Key    ${json}           ibge
    Dictionary Should Contain Key    ${json}           gia
    Dictionary Should Contain Key    ${json}           ddd
    Dictionary Should Contain Key    ${json}           siafi

Test API JSON Response Values
    [Documentation]    Verifica os valores do JSON retornado para o CEP 06433120
    Create Session                viacep                   ${URL}
    ${response}=                  GET On Session           viacep                 /ws/06433120/json/    /
    ${json}=                      To JSON                  ${response.content}
    Should Be Equal As Strings    ${json['cep']}           06433-120
    Should Be Equal As Strings    ${json['logradouro']}    Rua Manoel Moreira
    Should Be Equal As Strings    ${json['bairro']}        Jardim Audir
    Should Be Equal As Strings    ${json['localidade']}    Barueri
    Should Be Equal As Strings    ${json['uf']}            SP
    Should Be Equal As Strings    ${json['ibge']}          3505708
    Should Be Equal As Strings    ${json['gia']}           2069
    Should Be Equal As Strings    ${json['ddd']}           11
    Should Be Equal As Strings    ${json['siafi']}         6213
