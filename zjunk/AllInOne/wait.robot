*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://tutorialsninja.com/demo/index.php?route=account/login
${login_email}    shivukharvi@gmail.com
${password}    shivu123
${email_txt}    id:input-email
${password_txt}    id:input-password

*** Test Cases ***
Validate Successful login
    Open The Browser And Open The Url
    Set Selenium Implicit Wait    10    seconds
    Enter The Email
    Enter The Password
    Close Browser

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser
Enter the email
    Input Text    ${email_txt}    ${login_email}
Enter the password
    Input Text    ${password_txt}    ${password}

