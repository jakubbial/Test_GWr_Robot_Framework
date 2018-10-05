*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Pokaz Wiecej Button xPath} =  xpath=//input[@id='komentarze-wiecej']
${Thumb Down Paetial Locator} =  xpath=//*[contains(@class, 'kciukDol')]


*** Keywords ***
Expand All Comments
    : FOR  ${index}  IN RANGE  0  999
    \  ${Is Pokaz Wiecej Visible} =  Is Pokaz Wiecej Visible
    \  Exit For Loop If  ${Is Pokaz Wiecej Visible} == 0
    \  Expand


Is Pokaz Wiecej Visible
    ${Count Button} =  Get Element Count  ${Pokaz Wiecej Button xPath}
    ${Status} =  Set Variable If  ${Count Button} == 1  True  False
    [Return]  ${Status}


Expand
    Click Button  ${Pokaz Wiecej Button xPath}


Downvote All
    @{Thumb Locators} =  Detect All Thumbs Down
    Click Downvote For All Comments  @{Thumb Locators}


Detect All Thumbs Down
    @{List of objects} =  Get WebElements  ${Thumb Down Paetial Locator}
    [Return]  @{List of objects}


Click Downvote For All Comments
    [Arguments]  @{Object List}
    :FOR  ${index}  IN  @{Object List}
    \  Click Element  ${index}