*** Settings ***
Library    Selenium2Library

Suite Teardown     Close Browser
*** Variables ***
${url_truev4}        https://accounts.trueid-alpha.net/signin/
${input_user}          //*[@name="account"]
${input_pass}          //*[@id="password"]
${btn_goto_page_login}           //*[@class="btn-style red-border-btn full-width-btn"]
${btn_page_login}       //*[@class="btn btn-primary"]
${txt_message_fail}          //*[@class="form-text text-remark text-left"]
${txt_message_success}         //*[@class="home-page banner-affix grayscale-mode"]
${username_fail}            11111111
${password_fail}            12345678
${username_success}            0991060745
${password_success}            1234567890
*** Keywords ***
Input Username and Password
     [Arguments]      ${xpath_user}       ${xpath_pass}     ${username}       ${password}
     Element Should Be Visible    ${xpath_user}
     Element Should Be Visible    ${xpath_pass}
     Input Text       ${xpath_user}       ${username}
     Input Text       ${xpath_pass}       ${password}
Click Button Login
     [Arguments]       ${btn}
     Element Should Be Visible    ${btn}
     Click Element        ${btn}
Click Button goto Login
     [Arguments]    ${btn}
     Element Should Be Visible ${btn}
     Click Element ${btn}
Verify Login Fail
   [Arguments]        ${xpath}
   Element Should Be Visible        ${xpath}
Verify Login Success
   [Arguments]        ${xpath}
   Element Should Be Visible        ${xpath}
*** Test Cases ***
Login trueAAAv4 - Fail
    [tags]    fail
    Open Browser    about:blank    chrome
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_fail}      ${password_fail}
    Click Button Login          ${btn_page_login}
    Verify Login Fail           ${txt_message_fail}
Login trueAAAv4 - success
    [tags]    success
    Open Browser    about:blank    chrome
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_success}      ${password_success}
    Click Button Login          ${btn_page_login}
    Verify Login Success        ${txt_message_success}