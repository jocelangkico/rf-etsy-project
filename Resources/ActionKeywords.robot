*** Settings ***
Library  SeleniumLibrary
Resource  Variables.robot
Resource  Locators.robot

*** Keywords ***
Open Website As Guest  [Arguments]  ${websiteURL}  ${browser}
    Wait Until Keyword Succeeds  1  5  SeleniumLibrary.Open Browser  ${websiteURL}  ${browser}
    Wait Until Keyword Succeeds  1  5  SeleniumLibrary.Maximize Browser Window

Navigate To  [Arguments]  ${websiteURL}
    Wait Until Keyword Succeeds  1  5  SeleniumLibrary.Go To  ${websiteURL}
    Log To Console  Navigated To: ${websiteURL}

Verify Element Contains Text  [Arguments]  ${locator}  ${text}
    Wait Until Keyword Succeeds  1  5  SeleniumLibrary.Element Should Contain  ${locator}  ${text}  ignore_case=True
    Log To Console  Verified element contains: ${text}