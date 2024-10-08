*** Settings ***
Resource    ../Resources/PageObject/KeywordDefinationFiles/Common.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/RegisterPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Library     Collections

*** Variables ***

*** Test Cases ***
Registration and Login Test
    [Documentation]    Register a new user and log in using the credentials.
    [Setup]    Register And Store Credentials
    Login With Credentials    ${register_email}    ${register_password}
    Log    ${register_email}    ${register_password}

   


