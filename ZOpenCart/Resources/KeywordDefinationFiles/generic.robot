*** Settings ***
Documentation    A resource file with reusable keywords and variables
Library    SeleniumLibrary
Library    String
Variables    ../Locators/locators.py
Test Setup    Open the browser and open the url
Test Teardown    Close the browser session

*** Variables ***
${url}    https://tutorialsninja.com/demo/

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser
Generate random email id
    ${random_email1}=    Generate Random String    5-7    [LOWER][NUMBERS]
    ${random_email}=    Catenate    SEPERATOR=    ${random_email1}    gmail.com
Click on 'My Account' Drop menu
    Click Element    ${myaccount_link}
Click on 'Register' option
    Click Element    ${register_link}
Click on 'Login' option
    Click Element    ${login_link}