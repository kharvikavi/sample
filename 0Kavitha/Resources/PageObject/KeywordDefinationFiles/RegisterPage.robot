*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../KeywordDefinationFiles/common.robot
Variables    ../Locators/locators.py

*** Variables ***

*** Keywords ***

Enter the username
    [Arguments]    ${username}
    Enter Text    ${username_id}    ${username}

Enter the password
    [Arguments]    ${password}
    Enter Text    ${password_id}    ${password}

Click login button
    Click on Element    ${login_xpath}