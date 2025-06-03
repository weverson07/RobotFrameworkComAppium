*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     locale=pt_BR
*** Test Cases ***
Teste Faker e Selenium
    ${email}    FakerLibrary.First Name
    ${sobrenome}    FakerLibrary.Last Name
    ${CPF}        FakerLibrary.cpf
    ${nome_completo}       Catenate    ${email}    ${sobrenome}    ${CPF}
    Log    Email gerada: ${nome_completo} 
    Log    CPF:${CPF}  
    ${data}    FakerLibrary.Date Between Dates
    ${hora}    FakerLibrary.Date Time Between Dates
    ${segundos}    FakerLibrary.Upc E
    Log    Data gerada: ${data}   
    Log    ${hora}
    Log    ${segundos}
