*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://tutorialsninja.com/demo/index.php?route=account/register
${radiobutton}    xpath:(//input[@name='newsletter'])[1]

*** Test Cases ***
Validation of button
    Open The Browser And Open The Url
    Page Should Contain Radio Button    tag:input   #locator
    Select Radio Button    newsletter    0    #name and value

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser