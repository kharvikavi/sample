*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
Resource    ../Resources/PageObject/KeywordDefinationFiles/common.robot

*** Variables ***

*** Keywords ***
Enter the username and password
    Input Text    ${username_id}    ${random_text}
    Input Text    ${password_id}    ${password}

Enter the username and password
    [Arguments]    ${username}    ${password}
    Input Text    

    
Click on Login
    Click Element    ${login_xpath}
    
Validate the page title
    ${title}=    Get Title
    Log To Console    ${title}
    Should Be Equal As Strings    ${title}    LoginPage Practise | Rahul Shetty Academy

    
       






