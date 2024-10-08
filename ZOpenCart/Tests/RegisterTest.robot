*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeywordDefinationFiles/generic.robot
Resource    ../Resources/KeywordDefinationFiles/Register.robot

*** Variables ***

*** Test Cases ***
Validation of Registering of an account with mandatory data
    Open The Browser And Open The Url
    Set Selenium Implicit Wait    10
    Click On 'My Account' Drop Menu
    Click On 'Register' Option
    Enter New Account Details With All Mandatory Fields
    Click On 'Continue' Button
    Click On 'Continue' Button That Is Displayed In The 'Account Success' Page
Validation of Registering of an account without mandatory data
    Open The Browser And Open The Url
    Set Selenium Implicit Wait    10
    Click On 'My Account' Drop Menu
    Click On 'Register' Option
    Click On 'Continue' Button
    Validate The Error Message
    Click On 'Continue' Button That Is Displayed In The 'Account Success' Page

