*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeywordDefinationFiles/generic.robot
Resource    ../Resources/KeywordDefinationFiles/LoginPage.robot
Test Template  Validation of Login with valid credentials

*** Variables ***

*** Test Cases ***    username    password
Valid email and password    ${valid_username}    ${valid_password}

*** Keywords ***
Validation of Login with valid credentials
    [Arguments]    ${username}    ${password}
    Open The Browser And Open The Url
    Set Selenium Implicit Wait    10
    Click On 'My Account' Drop Menu
    Click On 'Login' Option
    Enter the Email and password    ${username}    ${password}
    Click on login
    Validate the title of the page
    Close The Browser Session


    
