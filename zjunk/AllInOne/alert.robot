*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${btn_alert}    xpath://button[text()='Prompt']

*** Test Cases ***
Handling alert
    Open The Browser And Open The Url
    Click Element    ${btn_alert}      #to open the alert
    Sleep    5
    ${alert_msg}=    Handle Alert     #to get alert message
    Log To Console   ${alert_msg}
    Input Text Into Alert    Kavitha    accept  #pass the message and accept the alert
    Sleep    5
    Close The Browser Session
*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser
