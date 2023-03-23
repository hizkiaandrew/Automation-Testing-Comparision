*** Settings ***
Resource        ../utils/resources.robot
Resource        ../steps/login_steps.robot
Resource        ../steps/home_steps.robot
Test Setup      Open Home Page Using Chrome Browser
Test Teardown   Close Browser

*** Variables ***
${TEST_EMAIL}       testcomplete515@gmail.com
${TEST_PASSWORD}    Hz271100

*** Keywords ***

*** Test Cases ***
User is able to access Login page by url
    Given User is on Home Page
    And User is not logged in yet
    When User go to Login Page via url
    Then User is navigated to Login Page

User cannot login with inputted credentials
    Given User is on login page
    When User login by entering email field with value "<email>"
    And User login by entering password field with value "<password>"
    Then User submitted all input field
    But User cannot be logged in

#    Examples:
#    | email                       | password  |
#    | testemailwrong@email.com    | Hz271100  |
#    | testemailresetted@email.com | Hz271115  |
#    | testemailnonvalid.com       | Hz271100  |

#User can login with inputted credentials
#    Given User is on login page
#    When User login by entering email field with value "<email>"
#    And User login by entering password field with value "<password>"
#    Then User submitted all input field
#    And User is navigated to home page

#    Examples:
#      | email                     | password  |
#      | testcomplete515@gmail.com | Hz271100  |