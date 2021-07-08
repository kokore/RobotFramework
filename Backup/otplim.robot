*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Input Username
     [Arguments]                             ${xpath_user}       ${username}
     Element Should Be Visible               ${xpath_user}
     Input Text                              ${xpath_user}       ${username}
*** Variables ***
${url} http://localhost/trueid-trueid-frontend-4.0/public/signin/byotp?client_id=11231123123
${user} 0638790204
${btn1} //*[@class="btn-style red-btn full-width-btn"]
*** Test Cases ***
Login trueid v4 - Login With Empty Password Should Fail in Chorme
    [tags]    Login Chrome Empty Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                          ${url}
    Input Username    ${input_user}    ${user}     
    Click Button                   ${btn1}
    Click Button                   ${btn_page_login}