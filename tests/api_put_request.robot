*** Settings ***

Library    RequestsLibrary

*** Variables ***

${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***

Put_Updateuser
    [Documentation]    update users and validate response
    Create Session    mysession    ${BASE_URL}    
    ${body}=    Create Dictionary    name=Mayura    job=Tester
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${response}=    PUT On Session    mysession    /users/2    json=${body}    headers=${headers}
    Log To Console    Status Code: ${response.status_code}
    Log To Console    Response Body: ${response.text}

    #Validations
    Should Be Equal As Integers    ${response.status_code}    200
    Should Contain    ${body}    name
    Should Contain    ${body}    job
