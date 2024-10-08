*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
Variables    ../TestData/TestData.py
Library    Collections   #to append ,we need to add collection library
*** Variables ***

*** Keywords ***
Validate cards titles in the product page
    @{expectedList}=    Create List    Sauce Labs Backpack    Sauce Labs Bike Light    Sauce Labs Bolt T-Shirt    Sauce Labs Fleece Jacket    Sauce Labs Onesie    Test.allTheThings() T-Shirt (Red)
    ${elements}=    Get Webelements    ${cardTitles_link}
    @{actualList}=    Create List      
    FOR    ${element}    IN    @{elements}
        Log To Console    ${element.text} 
        Append To List    ${actualList}    ${element.text}
    END
    Lists Should Be Equal    ${expectedList}    ${actualList}
Select the product and add to cart
    [Arguments]    ${product}
    ${elements}=    Get Webelements    ${cardTitles_link}
    ${index}    Set Variable    1
    FOR    ${element}    IN    @{elements}
        Exit For Loop If   '${product}' == '${element.text}'
        ${index}=    Evaluate    ${index}+1
    END
    Click Button    xpath:(//button[contains(text(),'ADD TO CART')])[${index}]
Click on cart
    Click Element    ${click_cart_ele}
Click on menu
    Click Button    ${menu_button}
Click on Logout
    Click Element    ${logout_btn}

       
