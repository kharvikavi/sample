*** Settings ***
Resource    ../Resources/PageObject/KeywordDefinationFiles/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/DRegisterPage.robot
Library    Collections

*** Variables ***
${test_data}    # Empty dictionary to store email and password

*** Keywords ***
DRegistration test
    [Documentation]    This test will register a new user and store the email and password.
    [Setup]    Launching Browser    ${urlRegister}    ${browser}
    Launching Browser    ${urlRegster}    ${browser}
    ${random_name}=    Generate Random Alphanumeric    6
    ${random_pwd}=    Generate Random Alphanumeric    5
    ${random_email}=    Generate Random Email    3-4
    ${random_telephone}=    Generate Random Numbers    10
    Enter The Firstname    ${random_name}
    Enter The Lastname    ${random_name}
    ${register_email}=    Enter The Email    ${random_email}
    Enter The Telephone    ${random_telephone}
    ${register_password}=    Enter The pwd    ${random_pwd}
    Enter The Confrmpassword    ${random_pwd}
    Select The PrivacyPolicy
    Click continue button
    ${success_msg}=    Get the element text
    Should Contain    ${success_msg}    'Your Account Has Been Created!'
    ${test_data}=    Create Dictionary    email=${register_email}    password=${register_password}
    RETURN    ${test_data}


