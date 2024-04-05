*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Cancel in Confirmation Page
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=cancel
Finish in Confirmation Page
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=finish
Back To Products
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=back-to-products