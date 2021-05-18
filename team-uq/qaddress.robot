*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}   https://queryaddresses-server.staging.factsandit.pt/sandbox-websocket
@{elements_list}    1    10


*** Keywords ***
EnterWebSocket
    Input Text    id=apikey    9af6848a4bb0b919ce5dec07b1f1bf39
    Input Text    id=from    user_test
    Click Button  id=connect    

SendMessages
    ${session_id}    Get Text     //*[@id="connectionInfo"]/div[2]/p[1]/a
    Input Text    id=sessionId    ${session_id}
    Input Text    id=message    test
    Click Button    id=send    

*** Test Cases ***
QADDRESS_TEST1
    Open Browser    ${url}    gc    
    Maximize Browser Window
    Set Browser Implicit Wait    3
    EnterWebSocket
    Set Browser Implicit Wait    3
    SendMessages
    FOR  ${i}  IN RANGE  @{elements_list}
    
    
        
           
    