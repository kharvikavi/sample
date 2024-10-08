*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://rahulshettyacademy.com/loginpagePractise/
${childwindowLink}    css:.blinkingText
${childheader_txt}    css:h1

*** Test Cases ***
Handling screenshot
    Open The Browser And Open The Url
    Capture Page Screenshot    filename=D:\screenshot1.png    #Need to give file location and name.png
    Click on child window link
    Switch Window    NEW
    ${child_page_title}=    Get Title
    Log To Console    Child page title:${child_page_title}
    Element Text Should Be    ${childheader_txt}    DOCUMENTS REQUEST

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window

Close the browser session
    Close Browser
    
Click on child window link
    Click Element    ${childwindowLink}
    Sleep    5

