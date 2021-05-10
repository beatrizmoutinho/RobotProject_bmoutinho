*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suit Setup
Suite Teardown    Log    I am inside Test Suit Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Rest Teardown

*** Variables ***
${url}  http://www.google.com 
${browser}    Chrome
${cookies_acception}    id:zV9nZe
${search_query}    name=q
${search_term}    Craftable Software
${username}    Beatriz
${date_test}    10/05/2021


*** Test Cases ***
    
SearchBrowser
    Open Browser    https://google.com    chrome
    Click Element     ${cookies_acception}  
    Maximize Browser Window
    Set Browser Implicit Wait    2
    Input Text    name=q    Craftable Software
    Click Button    name=btnK
    Close Browser
    Log    Test executed by %{username} on %{os}