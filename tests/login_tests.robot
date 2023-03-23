*** Settings ***
Resource        ../utils/resources.robot
Resource        ../steps/login_steps.robot
Resource        ../steps/home_steps.robot
Test Setup      Open Home Page Using Chrome Browser
Test Teardown   Close Browser

*** Variables ***
${TEST_EMAIL}           testcomplete515@gmail.com
${TEST_PASSWORD}        Hz271100
${TEST_WRONG_PASSWORD}  Hz271115
${TEST_WRONG_EMAIL}     testemailwrong@email.com
${TEST_EMAIL_RESET}     testemailresetted@email.com
${TEST_EMAIL_NONVALID}  testemailnonvalid.com

*** Keywords ***
user cannot logged in with inputted credentials
    [Arguments]     ${email}        ${password}
    Given User is on login page
    When User login by entering email field with value      ${email}
    And User login by entering password field with value    ${password}
    Then User submitted all input field
    But User cannot be logged in

*** Test Cases ***
User is able to access Login page by url
    Given User is on Home Page
    And User is not logged in yet
    When User go to Login Page via url
    Then User is navigated to Login Page

User cannot login with inputted credentials
    [Template]  user cannot logged in with inputted credentials
#   email                   password
    ${TEST_WRONG_EMAIL}     ${TEST_PASSWORD}
    ${TEST_EMAIL_RESET}     ${TEST_WRONG_PASSWORD}
    ${TEST_EMAIL_NONVALID}  ${TEST_PASSWORD}

#User can login with inputted credentials
#    Given User is on login page
#    When User login by entering email field with value "<email>"
#    And User login by entering password field with value "<password>"
#    Then User submitted all input field
#    And User is navigated to home page

#    Examples:
#      | email                     | password  |
#      | testcomplete515@gmail.com | Hz271100  |