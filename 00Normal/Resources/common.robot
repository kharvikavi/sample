*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
#Generic method for Launching the browser
Launching Browser
    [Arguments]    ${url}    ${browserName}
    Open Browser    ${url}    ${browserName}
    Set Selenium Implicit Wait    5
    Maximize Browser Window

#Generic method to close all the browser
Close the browser
    Close All Browsers

#Generic method to input the data into field
Input the data
    [Arguments]   ${locator}    ${data}
    Wait Until Element Is Visible    ${locator}    10
    Input Text    ${locator}    ${data}
    Log To Console    Inputted value "${data}" into the field with locator "${locator}"
    Log    Inputted value "${data}" into the field with locator "${locator}"

# Generic method for getting the page title
Get the Page Title and validate
    ${title}=    Get Title
    RETURN    ${title}
    Log To Console    Retrieved page title: ${title}
    Log    Retrieved page title: ${title}

# Generic method for getting text from an element
Get Element Text
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10
    ${text}=    Get Text    ${locator}
    RETURN    ${text}

# Generic method for clicking a button
Click on Element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10
    Click Element    ${locator}
    Log To Console    Clicked button with locator "${locator}"

# Generic method for submit
Submit Form
    [Arguments]    ${locator}
    Click Button    ${locator}
    Log To Console    Submitted the form with locator "${locator}"

# Generic method for clearing an input field
Clear Input Field
    [Arguments]    ${locator}
    Clear Element Text    ${locator}
    Log To Console    Cleared input field with locator "${locator}"

#Generic method to wait for any element
Wait For Element
    [Arguments]    ${locator}    ${timeout}=10
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Log To Console    Element is visible: ${locator}











