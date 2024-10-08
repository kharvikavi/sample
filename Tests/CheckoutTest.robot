*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/generic.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/ProductPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/ProductDescriptionPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/SummaryPage.robot

*** Variables ***
${product2}    Sauce Labs Fleece Jacket
${firstName}    Kavitha
${lastName}    Kharvi
${zipCode}    560089

*** Test Cases ***
Validate Checkout process
    Open The Browser And Open The Url
    Enter Username    ${username}    #passing valid username
    Enter Password    ${pwd}
    Click Login Button
    Select The Product And Add To Cart    ${product2}
    Click on cart
    Click on Checkout
    Enter the details on summary page    ${firstName}    ${lastName}    ${zipCode}
    Click on Continue
    Click On Finish
    Sleep    5
    ${order_confm_txt}=    Get Text    ${order_cnfm_msg}
    Should Be Equal As Strings   ${order_confm_txt}    THANK YOU FOR YOUR ORDER
    Close The Browser Session
