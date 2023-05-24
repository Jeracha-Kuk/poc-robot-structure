*** Settings ***
Library  yaml
Library  json
Library  BuiltIn

#Keywords#
Resource    keywords/api/cal_premium_api.robot
Resource    keywords/common_keyword/common.robot

#Test data#
Resource    test_data/cal_premium.yaml

#api
Resource    resources/api.robot

#database
Resource    resources/database.robot
