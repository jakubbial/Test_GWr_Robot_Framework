*** Settings ***
Documentation  Script add comment to choosen article on Gazeta Wroclawska web site
Resource  ../Resources/Common.robot
Resource  ../Resources/Page_Objects/Add_Comment.robot
Test Setup  Open Firefox  ${WEB_SITE_ADDRESS}
Test Teardown  Close Firefox

# robot -d Results Tests\Add_Comment_To_Article.robot

*** Variables ***
${WEB_SITE_ADDRESS} =  https://gazetawroclawska.pl/gdzie-we-wroclawiu-zjesz-dobry-obiad-lub-sniadanie-za-okolo-15-zl-poleca-natalia-maszkowska-z-masterchefa/ar/13529880


*** Test Cases ***
Add Comment To Article
    Close RODO Banner
    Write Comment
