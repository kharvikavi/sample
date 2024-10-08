*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
Variables    ../TestData/TestData.py

*** Variables ***

*** Keywords ***
Enter username
    [Arguments]    ${username}
    Input Text    ${username_txt}    ${username}
Enter password
    [Arguments]    ${pwd}
    Input Text    ${pwd_txt}    ${pwd}
Click login button
    Click Button    ${login_btn}
