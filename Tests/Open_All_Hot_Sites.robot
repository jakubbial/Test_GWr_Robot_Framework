*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/Page_Objects/Go_Into_Jedynkas.robot
Test Setup  Open Firefox  ${WEB_SITE_ADDRESS}
Test Teardown  Close Firefox

#robot -d Results Tests\Open_All_Hot_Sites.robot


*** Variables ***
${WEB_SITE_ADDRESS} =  https://gazetawroclawska.pl


*** Test Cases ***
Open Top Subsites
    Close RODO Banner
    Go Into Each Link
