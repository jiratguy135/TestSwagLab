*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.saucedemo.com/

*** Keywords ***
Open Website Swag Labs
    Open Browser    ${URL}    chrome
    Maximize Browser Window
Loop Product
    [Arguments]    ${Key}    ${Start}    ${End}
    FOR    ${counter}    IN RANGE    ${Start}    ${End}
        ${Key}    ${counter} 
    END