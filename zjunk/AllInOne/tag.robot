*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1 Register
    [Tags]    smoke
    Log To Console    This is register testcase
    Log To Console    Registration is over
TC2 Search
    [Tags]    regression
    Log To Console    This is search testcase
    Log To Console    Search function is over
TC3 Filter
    [Tags]    regression
    Log To Console    This is filter testcase
TC4 Subscription
    [Tags]    regression
    Log To Console     This is subscription testcase
TC5 Logout
    [Tags]    sanity
    Log To Console    This is logout testcase
