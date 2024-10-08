*** Settings ***
Resource    ../Resources/PageObject/KeywordDefinationFiles/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/DRegisterPage.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/DLoginPage.robot
Library     Collections

*** Variables ***
*** Keywords ***
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
    #${register_email}=     Enter The Email    ${random_email}
    Log To Console    ${register_email}
    Log    ${register_email}  
    Enter The Telephone    ${random_telephone}
    #${register_password}=  Enter The pwd    ${random_pwd}
    ${register_password}=  Set Variable    ${random_pwd}
    Enter The pwd    ${register_password}
    Log To Console    ${register_password}
    Log    ${register_password}
    Enter The Confrmpassword    ${register_password}
    Select The PrivacyPolicy
    Click continue button
    
    ${success_msg}=    Get The Element Text    ${successmsg_xpath}
    Should Contain     ${success_msg}    Your Account Has Been Created!

    # Store email and password in dictionary
    #Set Suite Variable    &{test_data}=    Create Dictionary    email=${register_email}    password=${register_password}

    Set Suite Variable    ${register_email}    ${register_email}
    Set Suite Variable    ${register_password}    ${register_password} 

*** Test Cases ***
DRegistration and Login Test
    [Documentation]    Register a new user and log in using the credentials.
    [Setup]    Register And Store Credentials

    # Validate that registration was successful
    #Should Contain    &{test_data}    email=    ${register_email}
    #Should Contain    &{test_data}    password=    ${register_password}
    Should Not Be Empty    ${register_email}
    Should Not Be Empty    ${register_password}

    # Use the credentials from registration to login
    Launching Browser    ${urlLogin}    ${browser}
    Enter The Emailaddress    ${register_email}
    Enter The Password        ${register_password}
    Click Login Button


