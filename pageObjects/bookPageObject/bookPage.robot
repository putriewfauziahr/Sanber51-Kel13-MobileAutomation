*** Settings ***
Resource        ../base/base.robot
Resource        ../homePageObject/homePage.robot
Variables       book-locators.yaml


*** Keywords ***
Click Menu Book On Home Page
    Wait Until Element Is Visible    ${menu_book}
    Click Element    ${menu_book}

Click One Way Button on Book Page
    Wait Until Element Is Visible    ${oneway-button}
    Click Element    ${oneway-button}

Click Round Trip Button On Book Page
    Wait Until Element Is Visible    ${roundtrip-button}
    Click Element    ${roundtrip-button}

Click DropDown From City
    Wait Until Element Is Visible    ${from-city}
    Click Element    ${from-city}

Choose From New York City
    Wait Until Element Is Visible    ${newyork}
    Click Element    ${newyork}

Choose From Chicago City
    Wait Until Element Is Visible    ${chicago}
    Click Element    ${chicago}

Choose From Toronto City
    Wait Until Element Is Visible    ${toronto}
    Click Element    ${toronto}

Click DropDown To City
    Wait Until Element Is Visible    ${to-city}
    Click Element    ${to-city}

Choose To London City
    Wait Until Element Is Visible    ${london}
    Click Element    ${london}

Choose To Paris City
    Wait Until Element Is Visible    ${paris}
    Click Element    ${paris}

Choose To Ottawa City
    Wait Until Element Is Visible    ${ottawa}
    Click Element    ${ottawa}

Click DropDown Class
    Wait Until Element Is Visible    ${class}
    Click Element    ${class}

Choose Economy Class
    Wait Until Element Is Visible    ${economy}
    Click Element    ${economy}

Choose First Class
    Wait Until Element Is Visible    ${first}
    Click Element    ${first}

Choose Bussiness Class
    Wait Until Element Is Visible    ${bussines}
    Click Element    ${bussines}

Click Start Date
    Wait Until Element Is Visible    ${start-date}
    Click Element    ${start-date}

Choose Date On Start Date
    Wait Until Element Is Visible    ${satu-agustus}
    Click Element    ${satu-agustus}

Click End Date
    Wait Until Element Is Visible    ${end-date}
    Click Element    ${end-date}

Choose End Date On End Date
    Wait Until Element Is Visible    ${dua-agustus}
    Click Element    ${dua-agustus}

Click Button Oke On Calender
    Wait Until Element Is Visible    ${buttonOke-startDate}
    Click Element    ${buttonOke-startDate}

Choose Fligth Radio Button
    Wait Until Element Is Visible    ${flight-radioButton}
    Click Element    ${flight-radioButton}

Choose Fligth+Hotel Radio Button
    Wait Until Element Is Visible    ${flightHotel-radioButton}
    Click Element    ${flightHotel-radioButton}

Clcik CheckBox Day
    Wait Until Element Is Visible    ${checkBox-Day}
    Click Element    ${checkBox-Day}

Click Button Book On Book Page
    Wait Until Element Is Visible    ${button-book}
    Click Element    ${button-book}
