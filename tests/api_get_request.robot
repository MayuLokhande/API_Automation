*** Settings ***

Library    RequestsLibrary

*** Variables ***

${base_url}=    https://reqres.in
${first_name}=   Janet

*** Test Cases ***

Get_users
    [Documentation]    Get list of users and validate response
    
    Create Session    mysession    ${base_url}
    
    ${response}=    GET On Session    mysession    /api/users/2
    Log To Console    Status Code: ${response.status_code}
    Log To Console    Response Body: ${response.json()}

    # Validations
    Should Be Equal As Integers    ${response.status_code}    200
    Should Contain    ${response.text}    "email"
    Should Contain    ${response.text}    ${first_name}


get_unknownresourse
    [Documentation]    Try to get unknown resourse
    Create Session   mysession   ${base_url}    
    ${response}=    GET On Session    mysession    /api/unknown/2
    Log To Console    Status Code: ${response.status_code}
    Log To Console    Response Body: ${response.json()}
    Should Be Equal As Integers    ${response.status_code}    200
    

