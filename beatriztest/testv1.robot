*** Settings ***
Library    SeleniumLibrary 

*** Test Cases ***
test1
    Log    "Hello World"    
    
FirstSeleniumTest
    Open Browser    http://google.com    chrome
    Set Browser Implicit Wait    2
    Input Text    name=q                Porto
    Press Keys    name=q ENTER
    Click Button    name=btnK
    Sleep    4
    Close Browser