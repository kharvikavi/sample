*** Settings ***
Library    SeleniumLibrary
Resource    ../AResources/LoginKeyword.robot
Resource    ../ATestcases/Generic/resource.robot
Library    DataDriver    file=resource/data1.csv
Test Template    Validate login with invalid credentials

*** Variables ***

*** Test Cases ***

Login with user ${username} and password ${password}  

*** Keywords ***
Validate login with invalid credentials
    [Arguments]    ${username}    ${password}
    Open The Browser And Open The Url
    Enter The Email    ${username}
    Enter The Password    ${password}
    Sleep    5
    Click On Sign In
