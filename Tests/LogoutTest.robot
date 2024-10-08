*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/generic.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/ProductPage.robot

*** Variables ***


*** Test Cases ***
Validate successful logout
    Open The Browser And Open The Url
    Enter Username    ${username}    #passing valid username
    Enter Password    ${pwd}
    Click Login Button
    Click On Menu
    Sleep    5
    Click On Logout