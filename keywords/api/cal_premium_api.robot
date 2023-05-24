*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Resource    ../../resources/configuration/${env}/server_config.robot

*** Variables ***
${base_url}=    https://mtlgw-uat.muangthai.co.th
${api_url}=     /sit/api/productcenter/calculate/calculatePremium/generic
${gateway_url}=     https://gateway-uat.muangthai.co.th
${plan_benefit_url}=    /api/productcenter/master/plan/planBenefit/generic/
${submit_app_form_url}=    /api/onlinesales/submit/submitAppForm/generic



*** Keywords ****
API - Post request create coverages
    [Arguments]    ${request_body}    ${http_status}=200    
    ${headers}=  Create Dictionary  Content-Type=application/json    x-api-key=onlinesales-linebk    apikey=l77300ed94df894b4193945ee1d8602fbd
    ${response}=    Post   url=${base_url}${api_url}    data=${request_body}  headers=${headers}      expected_status=${http_status}
    # ${resp}=   Run Keyword If  '${response.status_code}' != '405'  To Json  ${response.text}
    ${response_json}    To Json    ${response.content}
    Log    ${response_json}
    Set Test Variable    ${response}
    Set Test Variable    ${response_json}

API - Delete coverages
    [Arguments]    ${http_status}=200
    ${headers}=  Create Dictionary  Content-Type=application/json
    ${response}=    Delete    uri=${api_url}    data=${json_request}  headers=${headers}      expected_status=${http_status}
    # ${resp}=   Run Keyword If  '${response.status_code}' != '405'  To Json  ${response.text}
    Log    ${resp}
    Set Test Variable  ${resp}
    Set Test Variable  ${response.status_code}

API - Post request plan benefit
    [Arguments]    ${request_body}    ${http_status}=200    
    ${headers}=  Create Dictionary  Content-Type=application/json    x-api-key=onlinesales-linebk    apikey=l77300ed94df894b4193945ee1d8602fbd
    ${response}=    Post   url=${gateway_url}${plan_benefit_url}    data=${request_body}    headers=${headers}      expected_status=${http_status}
    # ${resp}=   Run Keyword If  '${response.status_code}' != '405'  To Json  ${response.text}
    ${response_json}    To Json    ${response.content} 
    Log    ${response_json}
    Set Test Variable    ${response}
    Set Test Variable    ${response_json}

API - Post request submit platform
    [Arguments]    ${request_body}    ${http_status}=200    
    ${headers}=  Create Dictionary  Content-Type=application/json    x-api-key=onlinesales-linebk    apikey=l7bc7e21d431fb4197b341feb81a668483
    ${response}=    Post   url=${gateway_url}${submit_app_form_url}    data=${request_body}    headers=${headers}      expected_status=${http_status}
    # ${resp}=   Run Keyword If  '${response.status_code}' != '405'  To Json  ${response.text}
    ${response_json}    To Json    ${response.content} 
    Log    ${response_json}
    Set Test Variable    ${response}
    Set Test Variable    ${response_json}