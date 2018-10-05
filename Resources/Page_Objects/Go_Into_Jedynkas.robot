*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Page_Objects/Downvote_Comments.robot


*** Variables ***
${Jedynka Partial xPath} =  xpath=//a[contains(@id, 'LinkArea:jedynka')]
${Region Partial xPath} =  xpath=//div/a[contains(@id, 'LinkArea:region')]


*** Keywords ***
Go Into Each Link
    @{Links} =  Find Links
    ${Number Of Elements} =  Get Length  ${Links}

    :FOR  ${index}  IN RANGE  0  ${Number Of Elements}
    \  @{Links} =  Find Links
    \  Click Element  ${Links[${index}]}
    \  Go Back


Find Links
    @{Elements Links} =  Get Web Elements  ${Jedynka Partial xPath}
    [Return]  @{Elements Links}


Downvote All Comments in Each Link
    @{Links} =  Find Links
    ${Number Of Elements} =  Get Length  ${Links}

    :FOR  ${index}  IN RANGE  0  ${Number Of Elements}
    \  @{Links} =  Find Links
    \  Click Element  ${Links[${index}]}
    \  Expand All Comments
    \  Downvote All
    \  Go Back
