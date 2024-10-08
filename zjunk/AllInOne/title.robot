*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://tutorialsninja.com/demo/index.php?route=account/login

*** Test Cases ***
Validation of page title
    Open The Browser And Open The Url
    Log Title

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window

Close the browser session
    Close Browser

