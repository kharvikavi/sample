*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
*** Test Cases ***
Validate web table
    Open The Browser And Open The Url
    Scroll Element Into View    //h2[text()='Pagination Table']
    #in the 2nd column checking Animesh is present or not
    Table Column Should Contain    //table[@name='BookTable']    2    Animesh
    Log To Console    Col validation is pass
    #in the 4th row checking Javascript is present or not
    Table Row Should Contain    //table[@name='BookTable']    4    Javascript
    Log To Console    Row validation is pass
    #to check the value present in 6th row and 4th col
    Table Cell Should Contain    //table[@name='BookTable']    6    4    2000
    Log To Console    Cell validation is pass
    Close Browser
*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser