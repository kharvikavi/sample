*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://tutorialsninja.com/demo/
*** Test Cases ***
Test1
    Open the browser and open the url
    Validate the title

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window

Validate the title
    ${expected_title}    Set Variable    Your Store
    ${actual_title}=    Get Title
    Should Be Equal As Strings    ${expected_title}    ${actual_title}   
    Log To Console    ${expected_title}
    Log To Console    ${actual_title}



