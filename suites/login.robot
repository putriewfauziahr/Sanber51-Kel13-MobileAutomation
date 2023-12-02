*** Settings ***
Resource    ../pageObjects/base/base.robot
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot

*** Variables ***
${VALID_USERNAME}            support@ngendigital.com   
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          putri.tester@mailinator.com
${INVALID_PASSWORD}          123testing

*** Test Cases ***
Login Valid Credential
    base.Open Flight Application
    homePage.Click Sign In Button
    loginPage.Input Username On Login Page    ${VALID_USERNAME}
    loginPage.Input Password On Login Page    ${VALID_PASSWORD}
    loginPage.Click Sign In Button On Login Page
    loginPage.Success Login
    base.Close Flight Application