*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login1
    Input Text    id=user-name    &{login_standard}[username]
    Input Password    id=password    &{login_standard}[password]
    Click Button    id=login-button
Login2
    Input Text    id=first-name    &{checkout_fields}[firstName]
    Input Text    id=last-name    &{checkout_fields}[lastName]
    Input Text    id=postal-code    &{checkout_fields}[zip]
    Click Button    id=continue
  
*** Variables ***
${url_demo}    https://www.saucedemo.com/
${browser}    gc
&{login_standard}    username=standard_user    password=secret_sauce
&{checkout_fields}    firstName=userfirstName    lastName=userlastName    zip=4100-173


*** Test Cases ***
SauceDemo
    Open Browser    ${url_demo}    ${browser}
    Maximize Browser Window
    Login1
    Set Browser Implicit Wait    3
    Click Button    id=add-to-cart-sauce-labs-backpack    
    Set Browser Implicit Wait    3
    Click Button    id=add-to-cart-sauce-labs-bike-light
    Set Browser Implicit Wait    3
    Click Element   class=shopping_cart_badge
    Set Browser Implicit Wait    3
    Click Element   name=checkout  
    Login2      
    Set Browser Implicit Wait    3
    Click Button    id=finish    
    Set Browser Implicit Wait    3
    Close Browser
    Log    This test was executed by %{username} on %{os}
    

