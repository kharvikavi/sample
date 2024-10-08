*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://tutorialsninja.com/demo/index.php?route=account/register
${checkbox}    xpath://input[@type='checkbox']

*** Test Cases ***
Validation of checkbox
    Open The Browser And Open The Url
    Page Should Contain Checkbox    ${checkbox}
    Select Checkbox    ${checkbox}    
    Sleep    5
    Unselect Checkbox    ${checkbox}

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser