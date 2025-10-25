*** Settings ***

Library    RequestsLibrary


*** Variables ***

${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***

Post_Create_User
    Create Session    mysession    ${BASE_URL}    
    ${body}=    Create Dictionary    name=Mayura123    job=QA Tester
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${response}=    POST On Session    mysession    /users    json=${body}    headers=${headers}
    Log To Console    Status Code: ${response.status_code}
    Log To Console    Response Body: ${response.text}
    Log To Console    Response Body: ${response.content}


    #Validations
    Should Be Equal As Integers    ${response.status_code}    201
    Should Contain    ${body}    name
    Should Contain    ${body}    job