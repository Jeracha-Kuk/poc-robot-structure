*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Resource    ../../resources/configuration/${env}/server_config.robot

*** Variables ***


*** Keywords ****
DB - Query policy from database
    ${result}    Query    Select * from policy where policy_id = ${id}
    Set Test Variable    ${result}    ${result}