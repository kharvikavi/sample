*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${url}    https://rahulshettyacademy.com/loginpagePractise/
${browser}    Chrome
${username_id}    username
${password_id}    password

*** Test Cases ***
Registration Test
    Launching Browser    ${url}    ${browse}
    Enter the username    ${username_id}    ${random_text}    
        
*** Keywords ***
Launching Browser
    [Arguments]    ${url}    ${browserName}
    Open Browser    ${url}    ${browserName}
    Set Selenium Implicit Wait    5
    Maximize Browser Window
    
Generate Random alphanumeric
    [Arguments]    ${length}
    ${random_text}=    Generate Random String    ${length}    [LOWER][UPPER]
    Log To Console    ${random_text}

Enter the username
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}
       


    
       
