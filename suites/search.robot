*** Settings ***
Resource            ../pageObjects/homePageObject/homePage.robot
Resource            ../pageObjects/loginPageObject/loginPage.robot
Resource            ../pageObjects/searchPageObject/searchPage.robot
Resource            ../pageObjects/base/base.robot

Test Setup          Login Succesfully
Test Teardown       Close Flight Application

*** Variables ***
${CORRECT_FLIGHT_NUMBER}              DA935   
${INCORRECT_FLIGHT_NUMBER}            ABC123
${ALL_NUMBER}                         12345
${ALL_LETTERS}                        ABCDE
${MORE_CHARACTERS}                    QWER275894937HBFUNM
${LESS_CHARACTERS}                    A12

*** Test Cases ***

#Adit
Search Correct Credential
    Click Menu Search On Home Page
    Input Flight Number on Search Page    ${CORRECT_FLIGHT_NUMBER}
    Click Search Button On Search Page

Search INCORRECT_FLIGHT_NUMBER
    Click Menu Search On Home Page
    Input Flight Number on Search Page    ${INCORRECT_FLIGHT_NUMBER}
    Click Search Button On Search Page

# Angel
Search BLANK_FLIGHT_NUMBER
    Click Menu Search On Home Page
    Click Search Button On Search Page

Search FLIGHT_NUMBER_WITH_ALL_NUMBER
    Click Menu Search On Home Page
    Input Flight Number on Search Page    ${ALL_NUMBER}
    Click Search Button On Search Page

Search FLIGHT_NUMBER_WITH_ALL_LETTERS
    Click Menu Search On Home Page
    Input Flight Number on Search Page    ${ALL_LETTERS}
    Click Search Button On Search Page

Search FLIGHT_NUMBER_WITH_MORE_THAN_5_CHARACTERS
    Click Menu Search On Home Page
    Input Flight Number on Search Page    ${MORE_CHARACTERS}
    Click Search Button On Search Page

Search FLIGHT_NUMBER_WITH_LESS_THAN_5_CHARACTERS
    Click Menu Search On Home Page
    Input Flight Number on Search Page    ${LESS_CHARACTERS}
    Click Search Button On Search Page