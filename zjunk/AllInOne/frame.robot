*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${frame_locator}    id:frame-one796456169
${btn_alert}    RESULT_TextField-0

*** Test Cases ***
Handling frame
    Open The Browser And Open The Url
    Select Frame    ${frame_locator}        #locator of the frame
    Input Text    ${btn_alert}    kavitha
    Sleep    5
    
*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser
