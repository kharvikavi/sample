*** Settings ***
Documentation    A resource file with reusable keywords and variables
Library    SeleniumLibrary
Test Setup    Open the browser and open the url
Test Teardown    Close the browser session

*** Variables ***
${url}    https://tutorialsninja.com/demo/index.php?route=account/login
${username1}    rahulshettyacademy

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window

Close the browser session
    Close Browser