*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_URL}     https://staging.komunitasmea.com/login

*** Keywords ***
Go to Login Page via url
    Go To               ${LOGIN_URL}

Verify Current Url With Login Url
    Location Should Be  ${LOGIN_URL}