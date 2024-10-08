*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${url}    https://practice.cydeo.com/dropdown
${country_drp}    state    #locator-Name of the dropdown

*** Test Cases ***
Handling dropdown and list box
    Open The Browser And Open The Url
    ${all_country}=    Get List Items    ${country_drp}
    ${total_count}=    Get Length    ${all_country}   #to get the total dropdown option
    Log To Console    test:${total_count}

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser
