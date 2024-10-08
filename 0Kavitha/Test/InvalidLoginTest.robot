*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=invalidLogin.csv
Resource    ../Resources/PageObject/KeywordDefinationFiles/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Test Template    Validation of invalid login    

*** Variables ***

*** Test Cases ***    username    password
Login with user ${username} and password ${password}

*** Keywords ***
Validation of invalid login
    [Arguments]    ${username}    ${password}
    Launch the browser
    Enter the username and password    ${username}    ${password}
    Click on login
    Validate the page title
    Get text and Validate
    Close the browser



