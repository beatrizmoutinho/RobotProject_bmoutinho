*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
LoginTestStore
   Input Text    xpath=//*[@class="text-input"]    &{username_teststore}[test4]
   Set Browser Implicit Wait    3
   Click Element    xpath=//*[@class="btn btn--arrow btn--full"]
   Input Password    id=password    &{password_teststore}[pwtest4]
   Set Browser Implicit Wait    3
   Click Element    xpath=//*[@class="btn btn--arrow btn--full push--top"]
   Set Browser Implicit Wait    3

CookiesAcception
    #Click Element    xpath=//*[@class="cb cc cd ce b3 cf cg ch ci cj ag as c0 c4 ck cl b6"]
    Click Element    xpath=//*[@class="c7 eb g4 g7 dv dw g8 g9 dz e0 e9 ea dq"]    

AddressConfig
    Click Element    xpath=//*[@class="cl d3 d8 d9 da db dc dd"]
    #Click Element    xpath=//*[@class="ce b3 cf cg ch ci cj cb cc cd ag gv fj c0 b6 g5 d1"]
    Set Browser Implicit Wait    5
    Click Element    xpath=//*[@class="cy cz d0 b3 h5 al"]
    #Click Element    xpath=//*[@class="gw cp cd co al"]
    #Set Browser Implicit Wait    3
    #Click Element    xpath=//*[@class="dm b3 cl cm cn ch ci c8 cj ck ag ku ce cv b6 f5 dz"]
    #Set Browser Implicit Wait    3
    #Click Element    xpath=//*[@class="f2 d8 ck dq al"]

SelectStore
    Set Browser Implicit Wait    9
    Click Element    xpath=//*[@class="j0 ce co ai"]   

SelectOrder
    Click Element    xpath=//*[@class="n6 mx n4 cp o4 o5 d6"] 
    Set Browser Implicit Wait    7   
    Click Element    xpath=//*[@class="e9 ea dq"]
    Set Browser Implicit Wait    3
    Click Element    xpath=//*[@class="e9 ea dq"]
    Set Browser Implicit Wait    2
    Click Element    xpath=//*[@class="e9 ea dq"]
    Set Browser Implicit Wait    3
    Click Element    xpath=//*[@class=dr cz dq c7 ds ce ag by dm b6 du dv dw g8 g9 dz e0"]
    Set Browser Implicit Wait    3
    Click Element    xpath=//*[@class="eg eh ca cb"]   
    Set Browser Implicit Wait    4     
    Click Element    xpath=//*[@class="dr cz dq c7 ds ce ag by dm b6 du dv dw g8 g9 dz e0"]   
    Set Browser Implicit Wait    7
    Click Element    xpath=//*[@class="dr cz dq c7 ds ce ag by dm b6 pl dv ok q1 q2 dz e0 q3 f1 q4"]    
    
*** Variables ***
${url}    https://www.ubereats.com/
&{username_teststore}    test4=uber+test+store6@factsandit.com
&{password_teststore}    pwtest4=tCF42g?8

*** Test Cases ***
CheckoutOrders
    Open Browser    ${url}   gc
    Maximize Browser Window
    Click Element    xpath=//*[@class="bx by bg c9 dk an b3 dl dm dn do"]
    Set Browser Implicit Wait    3
    LoginTestStore
    Set Browser Implicit Wait    3
    CookiesAcception
    Set Browser Implicit Wait    7
    AddressConfig
    Set Browser Implicit Wait    7
    SelectStore
    Set Browser Implicit Wait    7
    SelectOrder
    #Click Element    xpath=//*[@class="c5 c6 c7 c8"]