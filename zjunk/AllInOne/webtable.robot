*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
*** Test Cases ***
Validate web table
    Open The Browser And Open The Url
    Scroll Element Into View    //h2[text()='Pagination Table']
    #to get total count of rows and col
    ${totalrow}=    Get Element Count    //table[@name='BookTable']/tbody/tr
    ${totalcolumn}=    Get Element Count    //table[@name='BookTable']/tbody/tr[2]/td
    Log To Console    ${totalrow}
    Log To Console    ${totalcolumn}
    #to verify the text on row 5 and col 2
    ${verifytext}=    Get Text    //table[@name='BookTable']/tbody/tr[5]/td[2]
    Log To Console    ${verifytext}
    Close Browser

*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser