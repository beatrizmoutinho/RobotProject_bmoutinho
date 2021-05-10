*** Settings ***
Library    SeleniumLibrary 
Suite Setup    Open Browser ${url}
Suite Teardown    Close All Browsers

*** Variables ***
${url}   https://opensource-demo.orangehrmlive.com/ 
${browser}    googlechrome
@{CREDENTIAL}    Admin    admin

*** Test Cases ***
Secondtest
    Input Text    id=txtUsername    @{CREDENTIAL}[0]
    Input Password    id=txtPassword    @{CREDENTIAL}[1]
    Click Button    id=btnLogin
    Sleep    4
    Close Browser
    Log To Console    @{CREDENTIAL}[0] ran this text