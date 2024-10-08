*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://swisnl.github.io/jQuery-contextMenu/demo.html
*** Test Cases ***
Validation of Navigation
    Open The Browser And Open The Url
    Open Context Menu    //span[text()='right click me']   #to open context menu
    Sleep    5
    Close The Browser Session

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser
