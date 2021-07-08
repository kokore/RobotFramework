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
Input ThaiID                                 
    [Arguments]                             ${xpath_thaiid}       ${thaiid}
    Element Should Be Visible               ${xpath_thaiid}
    Input Text                              ${xpath_thaiid}       ${thaiid}
Input Date
    [Arguments]                             ${start_day}     ${select_year}   ${int_year}   ${select_day}   ${valid}
    Sleep    1s
    Click Element                           ${start_day}
    Sleep    1s
    Click Element                           ${select_year}
    Sleep    1s
    Mouse Up                                ${int_year}
    Sleep    1s
    Click Element                           ${int_year}
    Sleep    1s
    Mouse Down                              ${select_day}
    Sleep    1s
    Click Element                           ${select_day}
    Sleep    1s
Input Pin
    [Arguments]                             ${xpath_pin}         ${pin}
    Element Should Be Visible               ${xpath_pin}
    Input Text                              ${xpath_pin}         ${pin}
Click Button
     [Arguments]                             ${btn}
     Element Should Be Visible               ${btn}
     Click Element                           ${btn}
Verify FullPageV3 page
    [Arguments]                              ${title}
    Title Should Be                          ${title}
Verify Fail
   [Arguments]                               ${xpath}
   Element Should Be Visible                 ${xpath}
Verify Success     
   [Arguments]                               ${xpath}
    Element Should Not Be Visible            ${xpath}