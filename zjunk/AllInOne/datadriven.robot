*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=datadriven.csv
Test Template    Validation unsuccessful login
*** Variables ***
${URL}    https://rahulshettyacademy.com/loginpagePractise/
${username_txt}    id:username
${password_txt}    id:password
${signIn_btn}    id:signInBtn
*** Test Cases ***    username    password
Login with user ${username} and password ${password}

*** Keywords ***
Validation unsuccessful login
    [Arguments]    ${username}    ${password}
    Open the browser and open the URL
    Enter username and Password    ${username}    ${password}
    Click on Login
    Validate the title of the page
    Close The Browser Session
Enter username and Password
    [Arguments]    ${username}    ${password}
    Input Text    ${username_txt}    ${username}
    Input Text    ${password_txt}    ${password}
Click on login
    Click Element    ${signIn_btn}
Validate the title of the page
    ${title}=    Get Title
    Log To Console  Title of the page is: ${title}
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser

