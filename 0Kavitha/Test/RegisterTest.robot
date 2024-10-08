*** Settings ***
Resource    ../Resources/PageObject/KeywordDefinationFiles/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/RegisterPage.robot

*** Variables ***

*** Test Cases ***
Registration test
    Launching Browser    ${url}    ${browser}
    ${random_username}=    Generate Random Alphanumeric    6
    ${random_password}=    Generate Random Alphanumeric    7
    Enter The Username    ${random_username}
    Enter The Password    ${random_password}
    Sleep    2
    Click Login Button
    Close the browser
    




