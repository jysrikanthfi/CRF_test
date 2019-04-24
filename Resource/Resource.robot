*** Variables ***
${APP URL}      http://127.0.0.1:5000/
${BROWSER}      Chrome

# New User registration
${New_Username}     AB19
${New_Password}     123
${New_Firstname}    Yarlagadda
${New_Lastname}     Y
${New_Phone}        0504873519

# invalied User login info
${Invalid_Username}  Xyz
${Invalid_Password}  1234



*** Keywords ***



Open Browser To Home Page
    Open Browser    ${APP URL}    ${BROWSER}
    Title Should Be    index page - Demo App
Welcome Page Should Be Open
    Page Should Contain Link  Demo app
    Page Should Contain  index page
    Page Should Contain Link  Log In
    Page Should Contain Link  Register

Open Registration Page
     Click Link  Register
     Title Should Be    Register - Demo App
     Page Should Contain  Username
     Page Should Contain  Password
     Page Should Contain  First name
     Page Should Contain  Family Name
     Page Should Contain  Phone number

Register New User
     Input Text  id:username   ${New_Username}
     Input Text  id:password   ${New_Password}
     Input Text  id:firstname  ${New_firstname}
     Input Text  id:lastname  ${New_Lastname}
     Input Text  id:phone  ${New_Phone}
     Click Button	Register
     Title Should Be    Log In - Demo App
     Page Should Contain  Username
     Page Should Contain  Password
Empty Registration Form
    Title Should Be    Register - Demo App
    Page Should Contain  Username
    Page Should Contain  Password
    Page Should Contain  First name
    Page Should Contain  Family Name
    Page Should Contain  Phone number


Open Login Page
     Click Link  Log In
     Title Should Be    Log In - Demo App
     Page Should Contain  Username
     Page Should Contain  Password



Valid login

     Input Text  id:username  ${New_Username}
     Input Password  id:password  ${New_Password}
     Click Button	Log In
     Title Should Be  User Information - Demo App
     Page should Contain Element   id:username   ${New_Username}
     Page Should Contain Element   id:firstname  ${New_Firstname}
     Page Should Contain Element   id:lastname   ${New_Lastname}
     Page Should Contain Element   id:phone      ${New_Phone}

Invalid Password
     Input Text  id:username  ${New_Username}
     Input Password  id:password  ${Invalid_Password}
     Click Button	Log In
     Page Should Contain  Login Failure

Invalid Username
     Input Text  id:username  ${Invalid_Username}
     Input Password  id:password  ${New_Password}
     Click Button	Log In
     Page Should Contain  Login Failure

Log Out
     Click Link  Log Out





