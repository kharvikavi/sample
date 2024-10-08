*** Settings ***
Library    SeleniumLibrary
Resource    ../KeywordDefinationFiles/common.robot
Variables    ../Locators/locators.py

*** Variables ***
*** Keywords ***
Enter the firstname
    [Arguments]    ${firstname}
    Enter Text    ${firstName_id}    ${firstname}

Enter the lastname
    [Arguments]    ${lastname}
    Enter Text    ${lastName_id}    ${lastname}

Enter the email
    [Arguments]    ${emailid}
    Enter Text    ${email_name}    ${emailid}

Enter the telephone
    [Arguments]    ${telephone}
    Enter Text    ${telephone_id}    ${telephone}

Enter the pwd
    [Arguments]    ${password}
    Enter Text    ${password_id1}    ${password}

Enter the confrmpassword
    [Arguments]    ${confrmpassword}
    Enter Text    ${confirmpwd_id}    ${confrmpassword}

Select the privacyPolicy
     Click on Element    ${privacyCheckbox_name}

Click continue button
    Click on Element    ${continuebtn_xpath}
    



