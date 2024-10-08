*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${urlRegister}    https://tutorialsninja.com/demo/index.php?route=account/register
${urlLogin}    https://tutorialsninja.com/demo/index.php?route=account/login
${browser}    Chrome

*** Keywords ***
Launching Browser
    [Arguments]    ${url}    ${browserName}
    Open Browser    ${url}    ${browserName}
    Set Selenium Implicit Wait    5
    Maximize Browser Window

Close the browser 
    Close All Browsers
    
Enter text
    [Arguments]   ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    10
    Input Text    ${locator}    ${text}

Click on Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10
    Click Element    ${locator}
    
Get the element text
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10
    ${text}=    Get Text    ${locator}
    RETURN    ${text}

Generate Random alphanumeric
    [Arguments]    ${length}
    ${random_text}=    Generate Random String    ${length}    [LOWER][UPPER]
    Log To Console    ${random_text}
    RETURN   ${random_text}
    
Generate Random Numbers
    [Arguments]    ${length}
    ${random_number}=    Generate Random String    ${length}    [NUMBERS]
    RETURN    ${random_number}
    Log To Console    ${random_number}    
    
Generate Random Email
    [Arguments]    ${range}
    ${email}=    Generate Random String    ${range}    [LOWER][NUMBERS]
    ${random_email}=    Catenate    SEPARATOR=    ${email}    @gmail.com
    RETURN    ${random_email}
    Log To Console    ${random_email}

Wait For Element
    [Arguments]    ${locator}    ${timeout}=10
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Log To Console    Element is visible: ${locator}
    
    
    

    

   
    