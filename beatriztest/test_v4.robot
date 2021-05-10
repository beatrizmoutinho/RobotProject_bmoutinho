*** Settings ***
Library    SeleniumLibrary 
Suite Setup    Open Browser    ${url}  ${browser}    
Suite Teardown    Close All Browsers

*** Variables ***
${url}   http://www.google.com 
${browser}    Chrome
${cookies_acception}    id:zV9nZe
${search_query}    name=q
${search_term}    Craftable Software


*** Test Cases ***
TestScenario
    Click Element    ${cookies_acception}
    Set Browser Implicit Wait    2
    Wait Until Element Is Visible    ${search_query} 
    Input Text    ${search_query}  ${empty}    
    Set Browser Implicit Wait    2
    Input Text    ${search_query}    ${search_term}
    Set Browser Implicit Wait    2
    Submit Form
    #Page Should Contain     Craftable Software  