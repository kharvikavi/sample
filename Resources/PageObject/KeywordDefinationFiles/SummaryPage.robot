*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
Variables    ../TestData/TestData.py

*** Variables ***

*** Keywords ***
Enter the details on summary page
    [Arguments]    ${first_name}    ${last_name}    ${zip_code}
    Input Text    ${firstname_txt}    ${first_name}
    Input Text    ${lastname_txt}    ${last_name}     
    Input Text    ${zipcode_txt}    ${zip_code}      
    
Click on Continue
    Click Button    ${continue_btn}

Click on Finish
    Click Element    ${finish_btn}
