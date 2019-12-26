*** Settings ***
Suite Setup     Open Website As Guest  ${WebsiteURL}   ${BROWSER}
Suite Teardown  Close Browser
Documentation   Search products on the site as guest
Resource        SearchKeywords.robot

*** Test Cases ***
Search For Products
    [Tags]  Search
    [Setup]  Navigate To  ${websiteURL}
    Input Text   ${SearchInputField}    ${SearchTermLeather}
    Press Keys  ${SearchInputField}  ${EnterKey}
    Wait Until Element Is Visible  ${Search_ResultList}
    Verify Element Contains Text  ${Search_ListingCard}  ${SearchTermLeather}

Sort Search Result By Relevancy
    [Tags]  Search
    [Setup]  Navigate To  ${websiteURL}
    Input Text   ${SearchInputField}    ${SearchTermLeather}
    Press Keys  ${SearchInputField}  ${EnterKey}
    Wait Until Element Is Visible  ${Search_ResultList}
    Sort Listing By  ${SortByTopCustomerReviews}