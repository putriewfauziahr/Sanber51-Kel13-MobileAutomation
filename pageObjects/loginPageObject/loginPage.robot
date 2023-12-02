*** Settings ***
Resource    ../homePageObject/homePage.robot
Variables   login-locators.yaml

*** Keywords ***
Input Username On Login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible      ${username-input}
    Input Text    ${username-input}    ${username}  

Input Password On Login Page
    [Arguments]    ${password}
    Wait Until Element Is Visible      ${password-input}
    Input Text    ${password-input}    ${password}

Click Sign In Button On Login Page
    Click Element    ${sign-in-button2}

Success Login
    Wait Until Element Is Visible      ${success-login}
    Element Should Contain Text        ${success-login}    	NGen Digital
