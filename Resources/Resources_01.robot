*** Settings ***
Library  SeleniumLibrary
Variables    /home/tirthankar/PycharmProjects/Learn_01/Learn02/Dir_Varibles/MY_Variable_01.yaml

*** Keywords ***
Launch_Browser_Navigate to url
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window

Book_Search_operation
    [Arguments]  ${Author}
    Select From List By Label    ${Library}    ${Library_select}
    Select From List By Value    ${Classification}    ${Classification_select}
    Select Radio Button    SearchBy    Author Name
    Input Text    ${Book_name}    ${Author}
    Click Button   ${Book_Search}

Close_All_Test
    ${Title}=    Get Title
    Log    ${Title}
    Close All Browsers