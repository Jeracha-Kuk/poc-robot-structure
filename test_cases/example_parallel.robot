*** Settings ***
Library    OperatingSystem
Library    Collections                                                                                                                                                             
Resource    ../import.robot
Resource    ../keywords/api/cal_premium_api.robot
Variables    ../test_data/cal_premium.yaml
# Suite Setup         Common - Connect to database    $DBName    $DBUser    $DBPass    $DBHost    $DBPort
# Suite Teardown      Common - Disconnect to database    $DBName    $DBUser    $DBPass    $DBHost    $DBPort


*** Variables ***

*** Test Cases ***
TC_001 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}
    # Then Common - Response should be success
    # [Teardown]    DB - Delete coverage by name  cal_premium

TC_002 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}


TC_003 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}

TC_004 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}

TC_005 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}

TC_006 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}

TC_007 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}

TC_008 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}

TC_009 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}

TC_010 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}

TC_011 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}

TC_012 Success - Open cal premium
    [Documentation]    test call api to create coverage
    [Tags]    integration    success
    Given Common - Prepare json request    ${cal_premium_success}
    When API - Post request create coverages    ${json_request}

TC_013 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}

TC_014 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}

TC_015 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}

TC_016 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}

TC_017 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}

TC_019 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}

TC_020 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}

TC_021 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}

TC_022 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}

TC_023 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}

TC_024 API - Post request plan benefit
    [Documentation]    test call api to get plan benefit
    [Tags]    integration    success
    Given Common - Prepare json request    ${plan_benefit_success}
    When API - Post request plan benefit    ${json_request}