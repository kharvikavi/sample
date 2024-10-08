*** Settings ***
Resource    ../Resources/PageObject/KeywordDefinationFiles/common.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/DRegisterPage.robot

*** Variables ***
*** Test Cases ***
DRegistration test
    Launching Browser    ${urlRegster}    ${browser}
    ${random_name}=    Generate Random Alphanumeric    6
    ${random_pwd}=    Generate Random Alphanumeric    5

    ${register_email}=    Enter The Email    ${random_email}
    ${register_password}=    Enter The Password    ${random_pwd}

    Run Keyword If    '${register_email}'!='' and '${register_password}'!='' DLogin test    ${register_email}    ${register_password}


    Enter The Confrmpassword    ${random_pwd}
    ${random_email}=    Generate Random Email    3-4
    ${random_telephone}=    Generate Random Numbers    10
    Enter The Firstname    ${random_name}
    Enter The Lastname    ${random_name}

    Select The PrivacyPolicy
    Click continue button
    #RETURN    ${emailaddress}    ${password1}
    #Run Keyword If    '${register_email}' !='' and '${register_password}'!= ''    DLogin test    ${register_email}    ${register_password}

    #Run Keyword And Ignore Error    DLogin test    ${register_email}    ${register_password}
    #[Teardown]    Run Keyword If    '${register_email}' != '' and '${register_password}' != ''    DLogin test    ${register_email}    ${register_password}


