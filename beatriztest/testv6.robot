#TC SetUp - run before every TC
#TC Teardown - wil run after every TC
#TS Setup - will run befor TS
#TS TEARDOW- will run after TS

*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suit Setup
Suite Teardown    Log    I am inside Test Suit Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Rest Teardown

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...
    
MySecondTest
    Log    2nd test...
    Set Tags    regression1
    Remove tags    regression1
    
MyThirdTest
    Log    3rd test...
    
*** Comments ***
    Open Browser    https:google.com    gc 
    Maximize Browser Window
    Click Element     id:zV9nZe  
    Set Browser Implicit Wait    2  
    Input Text    name=q   Craftable Software
    Click Button    name=btnK   
    Set Browser Implicit Wait    1 
    Click Element   xpath=//*[@class="LC20lb DKV0Md"] 
    #Scroll Element Into View    locator
    Close Browser
    

SampleLoginTest
    [Documentation]    This is a sample login test    
    Open Browser    ${url}    gc
    Maximize Browser Window
    Input Text    id=txtUsername    @{variable_name}[0]
    #Input Text    id=txtUsername    &{LOGIN_DATA}[username]
    Set Browser Implicit Wait    2
    Input Password    id=txtPassword    @{variable_name}[1]
    #Input Password    id=txtPassword    @{variable_name}[password]
    Set Browser Implicit Wait    2
    Click Button    id=btnLogin    
    #Click Element    id=welcome
    Log    This test was executed by %{username} on %{os}    
   

SampleLoginTest1
     [Documentation]    This is a sample login test    
    Open Browser    ${url}    gc
    Maximize Browser Window
    LoginKW
    Set Browser Implicit Wait    2
    Click Button    id=btnLogin    
    Log    This test was executed by %{username} on %{os}    
 
*** Variables ***
#scalar
${url}    http://opensource-demo.orangehrmlive.com/
#list
@{variable_name}    Admin    admin123
#dictionary
&{LOGIN_DATA}    username=Admin    password=admin3   

*** Keywords ***
LoginKW    
    Input Text    id=txtUsername    @{variable_name}[0]
    Input Password    id=txtPassword    @{variable_name}[1]
    Click Button    id=btnLogin 
    