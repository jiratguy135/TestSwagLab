*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${Cart}

*** Keywords ***
Select Name Product
    [Arguments]    ${Number}
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=item_${Number}_title_link
    Sleep    2s
Select Picutre Product
    [Arguments]    ${Number}
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=item_${Number}_img_link
    Sleep    2s
Add to cart on homepage
    [Arguments]    ${Number}
    Wait Until Element Is Visible    class=app_logo    20s
    ${ProductName}    Get Text    item_${Number}_title_link
    ${ProductName}    Convert To Lower Case    ${ProductName}
    ${ProductName}    Evaluate    '${ProductName}'.replace(' ','-')
    Click Element    id=add-to-cart-sauce-labs-${ProductName}[11:]
Remove to cart on homepage
    [Arguments]    ${Number}
    Wait Until Element Is Visible    class=app_logo    20s
    ${ProductName}    Get Text    item_${Number}_title_link
    ${ProductName}    Convert To Lower Case    ${ProductName}
    ${ProductName}    Evaluate    '${ProductName}'.replace(' ','-')
    Click Element    id=remove-sauce-labs-${ProductName}[11:]
Select All Product
    Wait Until Element Is Visible    class=app_logo    20s
    @{elems}    Get Webelements    class=inventory_item_name 
    FOR    ${nameelem}    IN    @{elems}
        ${ProductName}    Get Text    ${nameelem}  
        ${ProductName}    Convert To Lower Case    ${ProductName}
        ${ProductName}    Evaluate    '${ProductName}'.replace(' ','-')
        Click Element    id=add-to-cart-${ProductName}
        Sleep    1s
    END
        Log    Fail
Remove All Product
    Wait Until Element Is Visible    class=app_logo    20s
    @{elems}    Get Webelements    class=inventory_item_name 
    FOR    ${nameelem}    IN    @{elems}
        ${ProductName}    Get Text    ${nameelem}  
        ${ProductName}    Convert To Lower Case    ${ProductName}
        ${ProductName}    Evaluate    '${ProductName}'.replace(' ','-')
        Click Element    id=remove-${ProductName}
        Sleep    1s
    END
        Log    Fail
Cart
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=shopping_cart_container
Sorting
    [Arguments]    ${Sorting}    # 1 = A-Z , 2 = Z-A , 3 = Low to High , 4 = High to Low
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    class=product_sort_container
    Sleep    1s
    Click Element    xpath=//*[@id="header_container"]/div[2]/div/span/select/option[${Sorting}]
Hambuger Tab
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=react-burger-menu-btn
Exit in Hambuger Tab
    Wait Until Element Is Visible    id=inventory_sidebar_link    20s
    Click Element    id=react-burger-cross-btn
About in Hambuger Tab
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=about_sidebar_link
Logout in Hambuger Tab
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=logout_sidebar_link
Reset App in Hambuger Tab
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=reset_sidebar_link
All Item in Hambuger Tab
    Wait Until Element Is Visible    class=app_logo    20s
    Click Element    id=reset_sidebar_link