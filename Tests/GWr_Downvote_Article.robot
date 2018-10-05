*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/GWr_PO.robot


*** Variables ***
${WEB_SITE_ADDRESS} =  https://gazetawroclawska.pl/wypadek-na-kosmonautow-pieszy-wpadl-pod-tramwaj/ar/13537258


*** Test Cases ***
Downgrade Comments Feature Test
    Run Firefox  ${WEB_SITE_ADDRESS}
    RODO Banner Terminator
    Expand All Comments
    Downvote All
    Close Firefox
