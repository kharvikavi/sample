*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeywordDefinationFiles/generic.robot
Resource    ../Resources/KeywordDefinationFiles/LoginPage.robot
Test Template  Validation of Invalid Login

*** Variables ***

*** Test Cases ***    username    password
Invalid password    ${valid_username}    ${invalid_password}
Invalid Username    ${invalid_username}    ${valid_password}
Blank space    ${EMPTY}    ${EMPTY}

*** Keywords ***
Validation of Invalid Login
    [Arguments]    ${username}    ${password}
    Open The Browser And Open The Url
    Set Selenium Implicit Wait    10
    Click On 'My Account' Drop Menu
    Click On 'Login' Option
    Enter the Email and password    ${username}    ${password}
    Click on login
    Validate The Login Error Message
    Close The Browser Session


