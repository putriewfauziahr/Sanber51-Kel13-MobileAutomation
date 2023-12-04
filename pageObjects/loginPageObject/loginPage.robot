*** Settings ***
Resource        ../homePageObject/homePage.robot
Resource        ../base/base.robot
Variables       login-locators.yaml

*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123


*** Keywords ***
Input Username On Login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${username-input}
    Input Text    ${username-input}    ${username}

Input Password On Login Page
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${password-input}
    Input Text    ${password-input}    ${password}

Click Sign In Button On Login Page
    Wait Until Element Is Visible    ${sign-in-button2}
    Click Element    ${sign-in-button2}

Success Login
    Wait Until Element Is Visible    ${success-login}
    Element Should Contain Text    ${success-login}    NGen Digital

Failed Login
    Sleep    3s
    Page Should Contain Text    Invalid username/password

Login Succesfully
    Open Flight Application
    Click Sign In Button
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
