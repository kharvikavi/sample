*** Settings ***
Library    SeleniumLibrary
Library    String
Variables    ../Locators/locators.py
Variables    ../TestData/testdata.py

*** Variables ***

*** Keywords ***
Click on 'My Account' Drop menu
    Click Element    ${myaccount_link}
Click on 'Register' option
    Click Element    ${register_link}
Enter new Account Details with all mandatory fields
    ${random_name}=    Generate Random String    5    [LOWER][UPPER]
    ${random_number}=    Generate Random String    10    [NUMBERS]
    ${random_pwd}=    Generate Random String    6-10    [LOWER][NUMBERS][UPPER]
#Generate random email id
    ${random_email1}=    Generate Random String    5-7    [LOWER][NUMBERS]
    ${random_email}=    Catenate    SEPARATOR=    ${random_email1}    @gmail.com

    Input Text    ${firstName_inputText}    ${random_Name}
    Input Text    ${lastName_inputText}    ${random_Name}
    Input Text    ${email_inputText}    ${random_email}
    Input Text    ${telephone_inputText}    ${random_number}
    Input Text    ${password_inputText}    ${random_pwd}
    Input Text    ${cnfrmPwd_inputText}    ${random_pwd}
    Click Element    ${privacy_checkbox}    
Enter new Account Details without filling all mandatory fields
    Input Text    ${firstName_inputText}    ${firstName}
    Input Text    ${lastName_inputText}    ${lastName}
    Input Text    ${email_inputText}    email@gmail.com
    Input Text    ${telephone_inputText}    ${telephone}
    Input Text    ${password_inputText}    ${password}
    Input Text    ${cnfrmPwd_inputText}    ${EMPTY}
    Click Element    ${privacy_checkbox}
Click on 'Continue' button
    Click Element    ${continue_button}
Validate the error message
    ${Error_msg}=    Get Text    ${error_msg_text}
    Should Be Equal As Strings    ${Error_msg}    Warning: You must agree to the Privacy Policy!
    Log To Console    The error msg is:    ${Error_msg}
Click on 'Continue' button that is displayed in the 'Account Success' page
    Click Element    ${continue1_button}

aa
    *** Settings ***
Library    OperatingSystem
Library    Collections

*** Keywords ***
Generate Random String
    [Arguments]    ${length}=10
    ${chars}=    Evaluate    import string, random; string.ascii_letters + string.digits
    ${random_string}=    Evaluate    ''.join(random.choice(${chars}) for _ in range(${length}))
    [Return]    ${random_string}
