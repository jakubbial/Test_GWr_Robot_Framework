*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Close RODO Banner xPath} =  xpath=//a[@class='crossDialog__close']



*** Keywords ***
Run Firefox
    [Arguments]  ${web_page}
    Open Browser  ${web_page}  ff


Close Firefox
    Close Browser


RODO Banner Terminator
    ${Is RODO Visible} =  Is RODO Visible
    Run Keyword If  ${Is RODO Visible}  Close RODO Window


Is RODO Visible
    ${Count X} =  Get Element Count  ${Close RODO Banner xPath}
    ${Status} =  Set Variable If  ${Count X} == 1  True  False
    [Return]  ${Status}


Close RODO Window
    Click Element  ${Close RODO Banner xPath}