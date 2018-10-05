*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
${Comment Title xPath} =  xpath=//input[@id="komentarz-temat"]
${Coment Signature xPath} =  xpath=//input[@id="komentarz-podpis"]
${Comment Text xPath} =  xpath=//textarea[@id="komentarz-tresc"]
${Add Comment Button xPath} =  xpath=/html/body/div[3]/div[2]/div[1]/section/div[1]/form/div[2]/p[8]/input


*** Keywords ***
Write Comment
    Input Text  ${Comment Title xPath}  Jestem
    Input Text  ${Coment Signature xPath}  Boleslaw Walesa
    Input Text  ${Comment Text xPath}  Mam faze
    Click Button  ${Add Comment Button xPath}