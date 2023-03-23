*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${WIDTH_WINDOW}     1440
${HEIGHT_WINDOW}    768
${LOGIN_URL}        https://staging.komunitasmea.com/login

*** Keywords ***
Open Home Page Using Chrome Browser
  Open Browser    ${HOME_URL}    Chrome
  Set Window Size   ${WIDTH_WINDOW}     ${HEIGHT_WINDOW}
