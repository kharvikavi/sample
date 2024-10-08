*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    resource.robot
Test Template    Validate Unsuccessful login    

*** Variables ***
${error_msg}    css:.alert-danger

*** Test Cases ***    username    password
Invalid username    kavitha    learning
Invalid password    rahulshettyacademy    kavitha
Login with spl chara    12@#44    12#$123
    

*** Keywords ***
Validate Unsuccessful login
    [Arguments]    ${username}    ${password}
    Open The Browser And Open The Url
    Fill The Login Form    ${username}    ${password}
    Wait Until Element Is Located On The Page    ${error_msg}
    Validate Error Message Is Correct
    
Fill the login form
    [Arguments]    ${username}    ${password}
    Input Text    id:username    ${username}
    Input Text    id:password    ${password}
    Click Button    id:signInBtn

Wait until element is located on the page
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}
    
Validate error message is correct
    ${result}=    Get Text    ${error_msg}
    Should Be Equal As Strings    ${result}    Incorrect username/password.







