*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
First Name
    [Arguments]    ${Firstname}
    Wait Until Element Is Visible    class=app_logo    20s
    Input Text    id=first-name    ${Firstname}
Last Name
    [Arguments]    ${Lastname}
    Wait Until Element Is Visible    class=app_logo    20s
    Input Text    id=last-name    ${Lastname}
Postal Code
    [Arguments]    ${Postal Code}
    Wait Until Element Is Visible    class=app_logo    20s
    Input Text    id=postal-code  ${Postal Code}
Continue Button
    Wait Until Element Is Visible    class=app_logo    20s 
    Click Element    id=continue
Cancel Button
    Wait Until Element Is Visible    class=app_logo    20s 
    Click Element    id=cancel