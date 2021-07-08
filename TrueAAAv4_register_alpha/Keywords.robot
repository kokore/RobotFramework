*** Settings ***
Library    SeleniumLibrary
Resource   Variables.robot

*** Keywords ***
Input Username and Password
     [Arguments]                             ${xpath_user}       ${xpath_pass}     ${username}       ${password}
     Element Should Be Visible               ${xpath_user}
     Element Should Be Visible               ${xpath_pass}
     Input Text                              ${xpath_user}       ${username}
     Input Text                              ${xpath_pass}       ${password}
Input Username
     [Arguments]                             ${xpath_user}       ${username}
     Element Should Be Visible               ${xpath_user}
     Input Text                              ${xpath_user}       ${username}
Input Password
     [Arguments]                             ${xpath_pass}       ${password}
     Element Should Be Visible               ${xpath_pass}
     Input Text                              ${xpath_pass}       ${password}
Input Otp
     [Arguments]                             ${xpath_otp}       ${otp}
     Element Should Be Visible               ${xpath_otp}       
     Input Text                              ${xpath_otp}       ${otp}
Click Button
     [Arguments]                             ${btn}
     Element Should Be Visible               ${btn}
     Click Element                           ${btn}
Verify FullPageV4 page
    [Arguments]                              ${title}
    Title Should Be                          ${title}
Verify Fail
   [Arguments]                               ${xpath}
   Element Should Be Visible                 ${xpath}
Verify Success     
   [Arguments]                               ${xpath}
    Element Should Not Be Visible            ${xpath}