*** Settings ***
Resource    ../pageObjects/base/base.robot
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot

*** Variables ***
${VALID_USERNAME}            support@ngendigital.com   
${VALID_PASSWORD}            abc123
${USERNAME_FORMAT}           support@ngendigital
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


Login Invalid Credential
    base.Open Flight Application
    homePage.Click Sign In Button
    loginPage.Input Username On Login Page    ${INVALID_USERNAME}
    loginPage.Input Password On Login Page    ${INVALID_PASSWORD}
    loginPage.Click Sign In Button On Login Page
    loginPage.Failed Login
    base.Close Flight Application

Login Without Input Username And Password
    base.Open Flight Application
    homePage.Click Sign In Button
    loginPage.Click Sign In Button On Login Page
    loginPage.Failed Login
    base.Close Flight Application

Login Using Valid Username But Invalid Password
    base.Open Flight Application
    homePage.Click Sign In Button
    loginPage.Input Username On Login Page    ${VALID_USERNAME}
    loginPage.Input Password On Login Page    ${INVALID_PASSWORD}
    loginPage.Click Sign In Button On Login Page
    loginPage.Failed Login
    base.Close Flight Application

Login Using Invalid Username But Valid Password
    base.Open Flight Application
    homePage.Click Sign In Button
    loginPage.Input Username On Login Page    ${INVALID_USERNAME}
    loginPage.Input Password On Login Page    ${VALID_PASSWORD}
    loginPage.Click Sign In Button On Login Page
    loginPage.Failed Login
    base.Close Flight Application

Login With Valid Username But Without Input Password
    base.Open Flight Application
    homePage.Click Sign In Button
    loginPage.Input Username On Login Page    ${VALID_USERNAME}
    loginPage.Click Sign In Button On Login Page
    loginPage.Failed Login
    base.Close Flight Application

Login With Valid Password But Without Input Username
     base.Open Flight Application
    homePage.Click Sign In Button
    loginPage.Input Password On Login Page    ${VALID_PASSWORD}
    loginPage.Click Sign In Button On Login Page
    loginPage.Failed Login
    base.Close Flight Application

Login With Username Invalid Format
    base.Open Flight Application
    homePage.Click Sign In Button
    loginPage.Input Username On Login Page    ${USERNAME_FORMAT}
    loginPage.Input Password On Login Page    ${VALID_PASSWORD}
    loginPage.Click Sign In Button On Login Page
    loginPage.Failed Login
    base.Close Flight Application