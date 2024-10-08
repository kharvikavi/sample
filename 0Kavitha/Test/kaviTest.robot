*** Settings ***
Library    BrowserLibrary
Library    SeleniumLibrary

*** Variables ***
${URL}    https://tutorialsninja.com/demo/
${BROWSER}    Chrome

*** Test Cases ***
To test authentication pop up
    Launching Browser    ${url}    ${BROWSER}

*** Keywords ***
Launching Browser
    [Arguments]    ${url}    ${browserName}
    Open Browser    ${url}    ${browserName}    #options=add_argument("--incognito")
    Set Selenium Implicit Wait    5
    Maximize Browser Window

Close the browser
    Close All Browsers

