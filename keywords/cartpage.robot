*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Continue Button
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=continue-shopping
Checkout Button
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=checkout
