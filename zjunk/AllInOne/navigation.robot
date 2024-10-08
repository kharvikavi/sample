*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://tutorialsninja.com/demo/index.php?route=account/login
*** Test Cases ***
Validation of Navigation
    Open The Browser And Open The Url
    ${current_url}=    Get Location
    Log To Console    Current url:${current_url}
    Go To    https://www.google.com/
    ${navigated_url}=    Get Location
    Log To Console  Navigated url:${navigated_url}
    Go Back
    ${current_url1}=    Get Location
    Log To Console    Current url1:${current_url1}

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser

