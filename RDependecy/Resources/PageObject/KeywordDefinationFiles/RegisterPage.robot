*** Settings ***
Library    SeleniumLibrary
Resource    ../KeywordDefinationFiles/Common.robot
Variables    ../Locators/Locators.py

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

Register And Store Credentials
    [Documentation]    Register a new user and store credentials in a variable.
    [Setup]    Launching Browser    ${urlRegister}    ${browser}
    ${random_name}=    Generate Random Alphanumeric    6
    ${random_pwd}=     Generate Random Alphanumeric    5
    ${random_email}=   Generate Random Email    3-4
    ${random_telephone}=    Generate Random Numbers    10
    Enter The Firstname    ${random_name}
    Enter The Lastname     ${random_name}
    ${register_email}=  Set Variable    ${random_email}
    Enter The Email    ${register_email}
    Log To Console    ${register_email}
    Log    ${register_email}
    Enter The Telephone    ${random_telephone}
    ${register_password}=  Set Variable    ${random_pwd}
    Enter The pwd    ${register_password}
    Log To Console    ${register_password}
    Log    ${register_password}
    Enter The Confrmpassword    ${register_password}
    Select The PrivacyPolicy
    Click continue button
    ${success_msg}=    Get The Element Text    ${successmsg_xpath}
    Should Contain     ${success_msg}    Your Account Has Been Created!
    #Set Suite Variable    ${register_email}    ${register_email}
    #Set Suite Variable    ${register_password}    ${register_password}
    Set Global Variable    ${register_email}    ${register_email}
    Set Global Variable    ${register_password}    ${register_password}
    log    ${register_email}    ${register_password}



