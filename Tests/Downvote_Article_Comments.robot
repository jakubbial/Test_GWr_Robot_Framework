*** Settings ***
Documentation  Script to test downvote feature on chosen Gazeta Wroclawska article
Resource  ../Resources/Common.robot
Resource  ../Resources/Page_Objects/Downvote_Comments.robot
Test Setup  Open Firefox  ${WEB_SITE_ADDRESS}
Test Teardown  Close Firefox

# robot -d Results Tests\Downvote_Article.robot


*** Variables ***
${WEB_SITE_ADDRESS} =  https://gazetawroclawska.pl/wypadek-na-kosmonautow-pieszy-wpadl-pod-tramwaj/ar/13537258


*** Test Cases ***
Downgrade Comments Feature Test
    Close RODO Banner
    Expand All Comments
    Downvote All Comments
