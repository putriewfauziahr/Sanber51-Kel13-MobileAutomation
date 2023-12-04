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

*** Test Cases ***
Search Correct Credential
    Click Menu Search On Home Page
    Input Flight Number on Search Page    ${CORRECT_FLIGHT_NUMBER}
    Click Search Button On Search Page

Search INCORRECT_FLIGHT_NUMBER
    Click Menu Search On Home Page
    Input Flight Number on Search Page    ${INCORRECT_FLIGHT_NUMBER}
    Click Search Button On Search Page


    