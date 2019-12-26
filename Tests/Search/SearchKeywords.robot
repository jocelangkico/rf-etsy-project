*** Settings ***
Resource    ../../Resources/ActionKeywords.robot
Resource    SearchVariables.robot

*** Keywords ***
Sort Listing By  [Arguments]  ${sortName}
    Wait Until Element Is Visible  //*[contains(@class,'etsy-icon wt-menu__trigger__caret')]
    Click Element  //*[contains(@class,'etsy-icon wt-menu__trigger__caret')]
    Click Element  //*[@class='wt-menu__body']//a[contains(text(),'${sortName}')]