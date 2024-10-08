*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String
Resource    resource.robot

*** Variables ***
${childwindowLink}    css:.blinkingText
${title}    css:h1 
${headerText}   css:.red
${username}    id:username

*** Test Cases ***
Validate child window functionality
    Open The Browser And Open The Url
    Select the link of child window
    Validate the user is switched to child window
    Grab the email id in the child window
    Switch to parent window and enter the email

*** Keywords ***
Select the link of child window
    Click Element    ${childwindowLink}
    Sleep    5

Validate the user is switched to child window
    Switch Window    NEW
    Element Text Should Be    ${title}    DOCUMENTS REQUEST
    
Grab the email id in the child window
    ${text}=    Get Text    ${headerText}
    @{words}=    Split String    ${text}    at 
    ${text_split}=    Get From List    ${words}    1
    ${text_split1}=    Split String    ${text_split}    
    ${email}=    Get From List    ${text_split1}    0    
    Set Global Variable    ${email}

Switch to parent window and enter the email
    Switch Window    MAIN
    Title Should Be    LoginPage Practise | Rahul Shetty Academy
    Input Text    ${username}    ${email}
    Sleep    5
    

    


