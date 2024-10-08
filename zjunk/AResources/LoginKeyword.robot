*** Settings ***
Library    SeleniumLibrary
Variables    ../APageObjects/LoginpageLocator.py


*** Variables ***

 
*** Keywords ***
Enter the email
    [Arguments]    ${username}
    Input Text    ${email_txt}    ${username}
Enter the password
    [Arguments]    ${password}
    Input Text    ${password_txt}    ${password}
Click on Sign in
    Click Button    ${login_btn}






