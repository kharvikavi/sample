*** Settings ***
Documentation    A resource file with reusable keywords and variables
Library    SeleniumLibrary
Test Setup    Open the browser and open the url
Test Teardown    Close the browser session

*** Variables ***
${url}    https://www.saucedemo.com/v1/index.html

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window

Close the browser session
    Close Browser
