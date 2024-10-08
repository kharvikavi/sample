*** Settings ***
Library    SeleniumLibrary
Test Setup    Open the browser and open the url

*** Variables ***

*** Test Cases ***
Validate Unsuccessful login
    Open The Browser And Open The Url
    Fill The Login Form
    Wait Until It Checks And Display Error Message
    Validate Error Message Is Correct

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    https://rahulshettyacademy.com/loginpagePractise/
Close the bro

Fill the login form
    Input Text    id:username    kavithakharvi
    Input Text    id:password    kavitha123
    Click Button    id:signInBtn

Wait until it checks and display error message
    Wait Until Element Is Visible    css:.alert-danger
    
Validate error message is correct
    ${result}=    Get Text    css:.alert-danger
    Should Be Equal As Strings    ${result}    Incorrect username/password.
    



