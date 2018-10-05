*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/Page_Objects/Go_Into_Jedynkas.robot


*** Variables ***
${WEB_SITE_ADDRESS} =  https://gazetawroclawska.pl


*** Test Cases ***
Open Top Subsites
    Run Firefox  ${WEB_SITE_ADDRESS}
    RODO Banner Terminator
    Downvote All Comments in Each Link
    Close Firefox