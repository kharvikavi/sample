*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[normalize-space()='Log in']
    ${"email_txt"}    Set Variable    id:Email
    ${"password"}    Set Variable    id:Password
    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}
    Input Text    ${"email_txt"}    Kavitha@gmail.com
    Input Text    ${"password"}    kavitha@123
    Click Button    xpath://button[@type='submit']
    Close Browser



*** Keywords ***
