*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://tutorialsninja.com/demo/index.php?route=account/login
${login_email}    shivukharvi@gmail.com
${password}    shivu123
${email_txt}    id:input-email
${password_txt}    id:input-password
${login_btn}    xpath://input[@type='submit']

*** Test Cases ***
Validation of button
    Open The Browser And Open The Url
    Input Text    ${email_txt}    ${login_email}
    Input Text    ${password_txt}    ${password}
    Click Button    ${login_btn}

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser
