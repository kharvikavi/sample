*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObject/KeywordDefinationFiles/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Test Template    Validation of invalid login    

*** Variables ***

*** Test Cases ***    username    password
Invalid username    kavitha    learning
Invalid password    learning    kavitha
Spl character    1234@    12$%23

*** Keywords ***
Validation of invalid login
    [Arguments]    ${username}    ${password}
    Launching the browser
    Enter the username and password    ${username}    ${password}
    Click on login
    Validate the page title
    Close browser session
