*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/GWr_PO.robot
Resource  ../Resources/GWr_PO_Comment.robot


*** Variables ***
${WEB_SITE_ADDRESS} =  https://gazetawroclawska.pl/gdzie-we-wroclawiu-zjesz-dobry-obiad-lub-sniadanie-za-okolo-15-zl-poleca-natalia-maszkowska-z-masterchefa/ar/13529880


*** Test Cases ***
Add  Comment
    Run Firefox  ${WEB_SITE_ADDRESS}
    RODO Banner Terminator
    Write Comment
    Close Firefox
