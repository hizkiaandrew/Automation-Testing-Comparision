*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOME_URL}                 https://staging.komunitasmea.com/

*** Keywords ***
Verify Current Url With Home Url
    Location Should Be      ${HOME_URL}

Verify user login status
    Sleep                   2
    Element Text Should Be  css:[data-testid='navbar-menu'] [data-testid='navbar-btn-login-register']   Daftar/Masuk