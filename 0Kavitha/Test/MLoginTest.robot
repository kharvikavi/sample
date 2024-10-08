*** Settings ***
Resource    ../Resources/PageObject/KeywordDefinationFiles/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/DLoginPage.robot

*** Variables ***

*** Keywords ***
Login With Credentials
    [Arguments]    ${email}    ${password}
    Enter The Emailaddress    ${email}
    Enter The Password        ${password}
    Click Login Button
