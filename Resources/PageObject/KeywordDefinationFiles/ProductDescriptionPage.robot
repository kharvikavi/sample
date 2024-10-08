*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
Variables    ../TestData/TestData.py

*** Variables ***

*** Keywords ***
Click on Checkout
    Click Element    ${checkout_btn}
