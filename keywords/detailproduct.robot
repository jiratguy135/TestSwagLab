*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Cart
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=shopping_cart_container

Back to products
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=back-to-products
