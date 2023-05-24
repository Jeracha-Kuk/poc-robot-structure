*** Settings ***
Library  Collections
Library  JSONLibrary
Library  OperatingSystem
Library  RequestsLibrary


*** Variables ***



*** Keywords ***
Common - Prepare json request
    [Arguments]     ${request}
    Common - Convert Dictionary to JSON    ${request}


Common - Convert YAML to JSON
    [Arguments]  ${yaml_data}
    Log    ${yaml_data}
    # ${json_data}=    Parse Json    ${yaml_data}
    ${json_data}=     json.dumps(${yaml_data})
    Set Test Variable      ${json_request}      ${json_data}

Common - Convert Dictionary to JSON
    [Arguments]    ${source_data}
    ${source_data} =     Evaluate    json.dumps(${source_data})
    log     ${source_data}
    Set Suite Variable      ${json_request}    ${source_data}
    log    ${json_request}

Common - Get data file
    [Arguments]    ${directory_path}
    ${file_data}=      Get Binary File    ${directory_path}
    Set Suite Variable    ${file_data}
    Log    ${file_data}

Common - Response should be success
    Should Be Equal As Numbers     ${response.status_code}     200
    Should Be Equal As Strings    ${response.description}     Success


Common - Response '{field}' should be contain text '{text}'
    Should Contain    ${field}    ${text}

Common - Response '{field}' should not be contain text '{text}'
    Should Not Contain    ${field}    ${text}

Common - Response '{field}' should not be empty
    Should Not Be Empty    ${field}    ${None}

Common - Connect to database
    [Arguments]    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
    Connect to database    DBName    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}

Common - Disconnect to database
    [Arguments]    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
    Disconnect to database    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}