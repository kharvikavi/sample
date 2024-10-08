*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://admin:admin@the-internet.herokuapp.com/basic_auth
*** Test Cases ***
Handling frame
    Open The Browser And Open The Url
*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser
