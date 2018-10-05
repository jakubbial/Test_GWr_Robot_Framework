*** Settings ***
#Resource  C:/developement/robot_scripts/GWr_Akcje/Resources/Page_Objects/Go_Into_Jedynkas.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/Page_Objects/Go_Into_Jedynkas.robot
Test Setup  Open Firefox  ${WEB_SITE_ADDRESS}
Test Teardown  Close Firefox

#robot -d Results Tests\Downvote_All_Comments_For_Each_Articles.robot


*** Variables ***
${WEB_SITE_ADDRESS} =  https://gazetawroclawska.pl


*** Test Cases ***
Open Top Subsites
    Close RODO Banner
    Downvote All Comments in Each Link
