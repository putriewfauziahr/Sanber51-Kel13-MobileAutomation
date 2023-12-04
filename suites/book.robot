*** Settings ***
Resource            ../pageObjects/homePageObject/homePage.robot
Resource            ../pageObjects/loginPageObject/loginPage.robot
Resource            ../pageObjects/bookPageObject/bookPage.robot
Resource            ../pageObjects/base/base.robot

Test Setup          Login Succesfully
Test Teardown       Close Flight Application
# *** Variables ***
# ${VALID_USERNAME}    support@ngendigital.com
# ${VALID_PASSWORD}    abc123
# ${INVALID_USERNAME}    invalid
# ${INVALID_PASSWORD}    invalid


*** Test Cases ***
Success Booking One Way
    Click Menu Book On Home Page
    Click One Way Button on Book Page
    Click DropDown From City
    Choose From Chicago City
    Click DropDown To City
    Choose To Ottawa City
    Click DropDown Class
    Choose Bussiness Class
    Click Start Date
    Choose Date On Start Date
    Click Button Oke On Calender
    Click End Date
    Choose End Date On End Date
    Click Button Oke On Calender
    Choose Fligth Radio Button
    Clcik CheckBox Day
    Click Button Book On Book Page

Success Booking Round Trip
    Click Menu Book On Home Page
    Click Round Trip Button On Book Page
    Click DropDown From City
    Choose From New York City
    Click DropDown To City
    Choose To London City
    Click DropDown Class
    Choose First Class
    Click Start Date
    Choose Date On Start Date
    Click Button Oke On Calender
    Click End Date
    Choose End Date On End Date
    Click Button Oke On Calender
    Choose Fligth+Hotel Radio Button
    Clcik CheckBox Day
    Click Button Book On Book Page
