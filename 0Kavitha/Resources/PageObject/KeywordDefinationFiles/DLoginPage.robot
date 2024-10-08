*** Settings ***
Library    SeleniumLibrary
Resource    ../KeywordDefinationFiles/common.robot
Variables    ../Locators/locators.py

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