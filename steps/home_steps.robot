*** Settings ***
Resource        ../pages/home_pages.robot

*** Keywords ***
User is on Home Page
    Sleep   3
    Verify Current Url With Home Url

User is not logged in yet
    Verify user login status