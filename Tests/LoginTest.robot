*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/generic.robot

*** Variables ***
${invalid_username}    kavitha
${loginpagetitle}    Swag Labs
${error_msg}    Epic sadface: Username and password do not match any user in this service

*** Test Cases ***
Validate successful login
    Open The Browser And Open The Url
    Enter Username    ${username}    #passing valid username
    Enter Password    ${pwd}
    Click Login Button
    ${title}=    Get Title            #to get the title and compare it with actual title
    Should Be Equal As Strings   ${title}     ${loginpagetitle}
    Sleep    5
    Close The Browser Session
    
Validate unsuccessful login
    Open The Browser And Open The Url
    Enter Username    ${invalid_username}      #passing invalid username
    Enter Password    ${pwd}
    Click Login Button
    ${error}=    Get Text    ${err_msg_txt}
    Should Be Equal As Strings     ${error}    ${error_msg}
    Sleep    5
    Close The Browser Session

*** Keywords ***