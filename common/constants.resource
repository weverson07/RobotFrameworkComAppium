*** Settings ***
Library          libs/LoadEnv.py
Library          libs/WebDriver.py
Library          SeleniumLibrary
Library          OperatingSystem
Library          Screenshot
Library          FakerLibrary

*** Variables ***

${URL}    https://viacep.com.br
# não apagar ${OPTIONS}: variável utilizada para manter a execução local e na pipeline
${URL_orange}                 https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Btn_login}           xpath=//*[@type="submit"]
${Username}            Admin
${Username_element}    xpath=//*[@name="username"]
${Password}            admin123
${Password_element}    xpath=//*[@name="password"]
${Cadastra_user}       xpath=//*[@class="oxd-main-menu-item-wrapper"]
${novo_username}       xpath=//*[@class="oxd-input oxd-input--active"]
${Btn_Add_user}        xpath=//*[text()=" Add "]
${dropdown_1}          xpath=//*[@class="oxd-select-text-input"]
${Selec_dropdown_1}    xpath=(//*[text()="Admin"])[3]
${Selec_List}          xpath=//*[@class="oxd-autocomplete-wrapper"]
${Selec_list_op}       xpath=//div[contains(@class, 'oxd-autocomplete-dropdown')]
${dropdown_2}          (//*[@class="oxd-select-wrapper"])[2]
${dropdown_3}          //*[text()="Enabled"]
${name_user}           (//*[@class="oxd-input oxd-input--active"])[2]
${cad_senha}           (//*[@type="password"])[1]
${confirma_senha}      (//*[@type="password"])[2]
${btn_save}            xpath=//button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]
${nome}                FakerLibrary.First