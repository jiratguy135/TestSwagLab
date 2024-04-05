*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Input Username
    [Arguments]    ${User}
    Wait Until Element Is Visible    class=login_logo    20s
    Input Text    id=user-name    ${User}
Input Password
    [Arguments]    ${Pass}
    Wait Until Element Is Visible    class=login_logo    20s
    Input Text    id=password    ${Pass}
Login Button
    Wait Until Element Is Visible    class=login_logo    20s
    Click Element    id=login-button