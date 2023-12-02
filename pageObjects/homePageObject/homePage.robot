*** Settings ***
Resource    ../base/base.robot
Variables    home-locators.yaml

*** Keywords ***
Click Sign In Button
    Click Element    ${sign-in-button}

