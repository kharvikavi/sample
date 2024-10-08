*** Settings ***
Library    SeleniumLibrary
Resource    ../KeywordDefinationFiles/Common.robot
Variables    ../Locators/Locators.py

*** Variables ***
*** Keywords ***

Enter the emailaddress
    [Arguments]    ${emailaddress}
    Enter Text    ${emailaddress_name}    ${emailaddress}

Enter the password
    [Arguments]    ${password}
    Enter Text    ${password_name}    ${password}

Click login button
    Click on Element    ${loginbtn_xpath}

Login With Credentials
    [Arguments]    ${email}    ${password}
    [Setup]    Launching Browser    ${urlLogin}    ${browser}
    Enter The Emailaddress    ${email}
    Enter The Password        ${password}
    Click Login Button

