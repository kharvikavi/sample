*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log To Console    Opening Browser   #executes only once before testcase started
Suite Teardown    Log To Console    Closing Browser     #executes only once after the testcase ended

Test Setup    Log To Console    Login to application  #executes before every testcase
Test Teardown    Log To Console    Logout from application  #executes after every testcase


*** Test Cases ***
TC1 Register 
    Log To Console    This is register testcase
TC2 Search
    Log To Console    This is search testcase
TC3 Filter
    Log To Console    This is filter testcase
TC4 Subscription 
    Log To Console     This is subscription testcase
