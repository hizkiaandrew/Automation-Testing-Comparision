*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_URL}            https://staging.komunitasmea.com/login
${loginEmailField}      css:[data-testid='login-field-email']
${loginPasswordField}   css:[data-testid='login-password']
${loginBtn}             css:[data-testid='login-btn-login']
${messageBox}           css:[data-testid='login-error-message-email']
${errorMessage}         css:[data-testid='messagebox-error']

*** Keywords ***
Go to Login Page via url
    Go To               ${LOGIN_URL}

Verify Current Url With Login Url
    Location Should Be  ${LOGIN_URL}

Input Username on Email Field
    [Arguments]         ${email}
    Wait Until Element Is Enabled   ${loginEmailField}
    Input Text                      ${loginEmailField}      ${email}

Input Password on Password Field
    [Arguments]         ${password}
    Wait Until Element Is Enabled   ${loginPasswordField}
    Input Password                  ${loginPasswordField}   ${password}

Click button submit
    Wait Until Element Is Enabled   ${loginBtn}
    Click Button                    ${loginBtn}

Is Status Error Message Visible
    Sleep                           2
    Element Should Be Visible       ${errorMessage}

Is Status Message Box Visible
    Sleep                           2
    Element Should Be Visible       ${messageBox}
