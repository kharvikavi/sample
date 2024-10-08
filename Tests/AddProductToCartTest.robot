*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PageObject/KeywordDefinationFiles/LoginPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/generic.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/ProductPage.robot

*** Variables ***
${product1}    Sauce Labs Bike Light
${product2}    Sauce Labs Fleece Jacket
${product3}    Sauce Labs Backpack

*** Test Cases ***
Add Product to Cart
    Open The Browser And Open The Url
    Enter Username    ${username}    #passing valid username
    Enter Password    ${pwd}
    Click Login Button
    Validate cards titles in the product page
    Select The Product And Add To Cart    ${product2}
    Click on cart
    ${texton_prdDesc}=    Get Text    ${cart_product_link}
    Should Be Equal As Strings     ${texton_prdDesc}    ${product2}
    Close The Browser Session
