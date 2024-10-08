*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    resource.robot

*** Variables ***
${error_msg}    css:.alert-danger
${home_page_load}    css:.nav-link
${card_titles}    css:.card-title
${Select_card}    Nokia Edge

*** Test Cases ***
Validate Unsuccessful login
    Open The Browser And Open The Url
    Fill The Login Form    ${username}    ${invalid_password}
    Wait Until Element Is Located On The Page    ${error_msg}
    Validate Error Message Is Correct

Validate Successful login
    Open The Browser And Open The Url
    Fill The Login Form    ${username}    ${valid_password}
    Wait Until Element Is Located On The Page   ${home_page_load}
    Validate Card Titles In The Shop Page
    Select The Card    ${Select_card}

*** Keywords ***
Fill the login form
    [Arguments]    ${username}    ${password}
    Input Text    id:username    ${username}
    Input Text    id:password    ${password}
    Click Button    id:signInBtn

Wait until element is located on the page
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}
    
Validate error message is correct
    ${result}=    Get Text    ${error_msg}
    Should Be Equal As Strings    ${result}    Incorrect username/password.

Validate card titles in the shop page
    @{expectedList}=    Create List    iphone X    Samsung Note 8    Nokia Edge    Blackberry
    ${listOfTitles}=    Get Webelements   ${card_titles}
    @{actualList}=    Create List    
    FOR   ${element}    IN     @{listOfTitles}
        Log    ${element.text}
        Append To List     ${actualList}     ${element.text}
    END
    Lists Should Be Equal  ${expectedList}    ${actualList}

Select the card
    [Arguments]    ${Select_card}
    ${listOfTitles}=    Get Webelements   ${card_titles}
    ${index}=    Set Variable    1
    FOR    ${element}    IN    @{listOfTitles}
        Exit For Loop If    '${Select_card}'=='${element.text}'
        ${index}=    Evaluate    ${index} + 1
    END
    Click Button    xpath:(//*[@class='card-footer'])[${index}]/button
    Sleep    5






