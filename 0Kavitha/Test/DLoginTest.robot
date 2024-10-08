*** Settings ***
Resource    ../Resources/PageObject/KeywordDefinationFiles/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/DLoginPage.robot

*** Variables ***
*** Test Cases ***
DLogin test
    [Arguments]    ${register_email}    ${register_password}
    Run Keyword If    '${register_email}' != '' and '${register_password}' != ''    Launching Browser    ${urlLogin}    ${browser}
    Run Keyword If    '${register_email}' != '' and '${register_password}' != ''    Enter The Emailaddress    ${register_email}
    Run Keyword If    '${register_email}' != '' and '${register_password}' != ''    Enter The Password    ${register_password}
    Run Keyword If    '${register_email}' != '' and '${register_password}' != ''    Click Login Button