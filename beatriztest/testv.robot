*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
OpenClose Browser
    Open Browser    https://google.com    chrome
    Maximize Browser Window
    Sleep    1
    Close Browser