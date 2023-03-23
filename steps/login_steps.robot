*** Settings ***
Resource    ../pages/login_pages.robot

*** Keywords ***
User go to Login Page via url
    Go to Login Page via url

User is navigated to Login Page
    Verify Current Url With Login Url