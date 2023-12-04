*** Settings ***
Resource        ../base/base.robot
Resource        ../homePageObject/homePage.robot
Variables       search-locators.yaml

*** Keywords ***
Click Menu Search On Home Page
    Wait Until Element Is Visible    ${menu_search}
    Click Element    ${menu_search}

Input Flight Number on Search Page 
    [Arguments]        ${flight_number}
    Wait Until Element Is Visible    ${input-search}
    Input Text    ${input-search}    ${flight_number}

Failed Search 
    Sleep     3s
    Page Should Contain Text    Please enter valid Flight Number

Click Search Button On Search Page
    Wait Until Element Is Visible        ${search-button}
    Click Element    ${search-button}
    

