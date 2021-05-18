*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
LoginTestStore
   Click Element    //*[@id="wrapper"]/header/div/div/div/div/a[2]
   Input Text    //*[@id="useridInput"]    &{username_teststore}[test4]
   Set Browser Implicit Wait    3
   Click Element    //*[@id="app-body"]/div/div[1]/form/div[2]/button
   Input Password    id=password    &{password_teststore}[pwtest4]
   Set Browser Implicit Wait    3
   Click Element    //*[@id="app-body"]/div/div/form/div[2]/button
   Set Browser Implicit Wait    3    

CookiesAcception
    Click Element    xpath=//*[@class="c7 eb g4 g7 dv dw g8 g9 dz e0 e9 ea dq"]    

AddressConfig
    Click Element    id=location-typeahead-home-input    
    Set Browser Implicit Wait    5
    Click Element    id=location-typeahead-home-item-0    
    Set Browser Implicit Wait    5

SelectStore
    Sleep    3
    #Click Element    //*[@id="main-content"]/div/div[3]/div[2]/div/div[2]/div[1]   
    #Click Element    //*[@id="main-content"]/div/div[3]/div[2]/div/div[2]/div[4]/div 
    #Wait Until Element Is Visible    //*[@id="main-content"]/div/div[3]/div[2]/div/div[2]/div[1]/div/section/div[2]/div/li[2]/div
    Click Element    //*[@id="main-content"]/div/div[3]/div[2]/div/div[2]/div[1]/div/section/div[2]/div/li[2]/div
      
SelectOrder
    #pizza havaiana
    Click Element    //*[@id="main-content"]/div[4]/ul/li[4]/ul/li[1]/div/div/div/div[1]/div[2]/div
    Set Browser Implicit Wait    7
    #selecione massa
    Click Element    //*[@id="wrapper"]/div[4]/div/div/div[2]/div[4]/div/div/div[1]/ul/li[1]/div/div[2]/label[1]
    #selecione tamanho
    Click Element    //*[@id="wrapper"]/div[4]/div/div/div[2]/div[4]/div/div/div[1]/ul/li[2]/div/div[2]/label[1]
    #cookie
    Wait Until Element Is Visible    //*[@id="wrapper"]/div[4]/div/div/div[2]/div[4]/div/div/div[1]/ul/li[6]/div/div[2]/label[2]/div[2]/div/div/div[1] 
    Click Element    //*[@id="wrapper"]/div[4]/div/div/div[2]/div[4]/div/div/div[1]/ul/li[6]/div/div[2]/label[2]/div[2]/div/div/div[1]
    #Click Element    //*[@id="wrapper"]/div[4]/div/div/div[2]/div[4]/div/div/div[2]/div/button/div[2]
    

Payment
    #cesto de checkout
    Click Element    //*[@id="main-content"]/div[4]/div[2]/div/div/div/div/div/div/div/button   
    Set Browser Implicit Wait    5
    Click Element    //*[@id="wrapper"]/header/div/div/div[6]/div[2]/div/div[3]/div[8]/a    
    Set Browser Implicit Wait    5
    Click Element    //*[@id="main-content"]/div/div[2]/div[2]/div[2]/div[5]/div/div[1]/button

*** Variables ***
${url}    https://www.ubereats.com/
&{username_teststore}    test4=uber+test+store6@factsandit.com    test3=uber+test+store6@factsandit.com     
&{password_teststore}    pwtest4=tCF42g?8

*** Test Cases ***
CheckoutOrdersTest4
    Open Browser    ${url}   gc
    Maximize Browser Window
    Click Element    //*[@id="cookie-banner"]/div/div/div[2]/button[3]
    Set Browser Implicit Wait    6
    LoginTestStore
    Set Browser Implicit Wait    6
    #CookiesAcception
    Set Browser Implicit Wait    6
    AddressConfig
    Set Browser Implicit Wait    7
    SelectStore
    Set Browser Implicit Wait    7
    SelectOrder
    Set Browser Implicit Wait    5
    Payment