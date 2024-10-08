*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
*** Test Cases ***
Validation of drag and drop
    Open The Browser And Open The Url
    Drag And Drop    id:draggable    id:droppable    #source and destination locator
    Sleep    5
    Close The Browser Session

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser
