*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
Variables    ../TestData/testdata.py

*** Keywords ***
Enter the Email and password
    [Arguments]    ${username}    ${password}
    Input Text    ${emailid_input}    ${username}     
    Input Text    ${password_input}    ${password}
Click on Login
    Click Element    ${login_button}
Validate the title of the page
    ${actual_title}=    Get Title
    Should Be Equal As Strings    ${Exp_title_loginPage}    ${actual_title}
    Log To Console    ActualTitle:${actual_title}
    Log To Console    ExpectedTitle:${Exp_title_loginPage}
Validate the login error message
    ${Login_errorMsg}=    Get Text    ${login_errormsg_text}
    Should Be Equal As Strings    ${Login_errorMsg}    Warning: No match for E-Mail Address and/or Password.
    Log To Console    The error msg: ${Login_errorMsg}


