*** Settings ***
Resource    ../pages/login_pages.robot

*** Variables ***
${statusErrorMessage}
${statusMessageBox}

*** Keywords ***
User go to Login Page via url
    Go to Login Page via url

User is navigated to Login Page
    Verify Current Url With Login Url

User is on login page
    Go to Login Page via url
    Verify Current Url With Login Url

User login by entering email field with value
    [Arguments]  ${email}
    Input Username on Email Field       ${email}

User login by entering password field with value
    [Arguments]  ${password}
    Input Password on Password Field    ${password}

User submitted all input field
    Click button submit

User cannot be logged in
    ${statusErrorMessage}   Run Keyword And Return Status   Is Status Error Message Visible
    ${statusMessageBox}     Run Keyword And Return Status   Is Status Message Box Visible
    Should Be True          ${statusErrorMessage} or ${statusMessageBox}