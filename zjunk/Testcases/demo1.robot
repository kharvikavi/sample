*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    resource.robot

*** Variables ***
${radio_button_user}    xpath://input[@value='user']
${popup_okay}    id:okayBtn
${dropdown_byValue}    css:select.form-control
${checkbox_terms}    id:terms
${signIn}    signInBtn

*** Test Cases ***
Fill the form and login
    Open The Browser And Open The Url
    Fill The Login Form    ${username}    ${valid_password}

*** Keywords ***
Fill the login form
    [Arguments]    ${username}    ${password}
    Input Text    id:username    ${username}
    Input Text    id:password    ${password}
    Click Element    ${radio_button_user}
    Sleep    5
    Click Element    ${popup_okay}
    Select From List By Value   ${dropdown_byValue}    teach
    Select Checkbox    ${checkbox_terms}
    Click Button    ${signIn}
    Sleep    5
    Title Should Be    




