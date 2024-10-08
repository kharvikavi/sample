*** Test Cases ***
Validation of links
    Open The Browser And Open The Url
    ${tot_link}=    Get Element Count    xpath://a      #links always has //a

    @{Items}    Create List
    FOR    ${i}    IN RANGE    1     ${tot_link}+1     #+1 because range gives 0 to n-1 , so
        ${linkText}=    Get Text    xpath:(//a)[${i}]   #inorder to get last value we need to add +1
        Log To Console    ${linkText}
    END

    Close The Browser Session



*** Keywords ***
Open the browser and open the url
    Create Webdriver    Chrome
    Go To    ${url}
    Maximize Browser Window
Close the browser session
    Close Browser
