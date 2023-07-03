*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}        https://www.saucedemo.com/
${BROWSER}    chrome
${USERNAME}   standard_user
${PASSWORD}   secret_sauce
${USERNAME_FIELD}     //*[@id="user-name"]
${PASSWORD_FIELD}     //*[@id="password"]
${LOGIN_BTN_FIELD}    //*[@id="login-button"]

*** Test Cases ***
As a User I Want to Open Web Sauce Demo
    Open Browser    ${URL}    ${BROWSER}
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Password    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BTN_FIELD}
    Sleep    1
    Close Browser