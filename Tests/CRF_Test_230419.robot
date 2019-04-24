*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../Resource/Resource.robot

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/CRF_Test_230419.robot


*** Test Cases ***


TC101 App landing page
    [Documentation]  Checking the app landing page
    [Tags]  Acceptance
    Open Browser To Home Page
    Welcome Page Should Be Open
    [Teardown]     Close Browser

TC102 Check Registration page
    [Documentation]  Verification of Registration page
    [Tags]  Acceptance
    Open Browser To Home Page
    Open Registration Page
    [Teardown]     Close Browser

TC103 Submiting Empty Regitration Form
    [Documentation]  Verification of Empty Regitration Form Submiting
    [Tags]  Acceptance
    Open Browser To Home Page
    Open Registration Page
    Click Button	Register
    Empty Registration Form
    [Teardown]     Close Browser

TC104 New User Register
    [Documentation]  Registration of new user and Checking the duplicate user registration
    [Tags]  Acceptance
    Open Browser To Home Page
    Open Registration Page
    Register New User
    Open Login Page
    [Teardown]     Close Browser

TC105 Check Login page
    [Documentation]  Verification of Login page
    [Tags]  Acceptance
    Open Browser To Home Page
    Open Login Page
    [Teardown]     Close Browser

TC106 Check Invalid login
    [Documentation]  Verification of Invalid user login with wrong username and Password
    [Tags]  Acceptance
    Open Browser To Home Page
    Open Login Page
    Invalid Password
    Click Link  Log In
    Open Browser To Home Page
    [Teardown]     Close Browser
    Open Login Page
    Invalid Username
    [Teardown]     Close Browser

TC107 Check Valid login
    [Documentation]  Verification of Valied user login
    [Tags]  Acceptance
    Open Browser To Home Page
    Open Login Page
    Valid login
    Log Out
    Welcome Page Should Be Open
    [Teardown]     Close Browser




*** Keywords ***

Start Demoapp Server
	Server Start











