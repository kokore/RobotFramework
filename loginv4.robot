*** Settings ***
Library    Selenium2Library
Library      XvfbRobot

Suite teardown    Close all browsers
*** Variables ***
${url_truev4}            https://accounts.trueid-alpha.net/signin/
${url_truev4_title}      TrueID  - the single access of infinite convergence experience
${input_user}            //*[@name="account"]
${input_pass}            //*[@id="password"]
${btn_goto_page_login}   //*[@class="btn-style red-border-btn full-width-btn"]
${btn_page_login}        //*[@class="btn btn-primary"]
${txt_message_fail}      //*[@class="form-text text-remark text-left"]
${txt_message_success}   //*[@class="form-text text-remark text-left"]
${username_fail_case1}         11111111
${password_fail_case1}         12345678
${username_fail_case2}         
${password_fail_case2}         
${username_success}      0991060745
${password_success}      1234567890
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
Verify FullPageV4 page
    [Arguments]                ${title}
    Title Should Be            ${title}
Verify Login Fail
   [Arguments]        ${xpath}
   Element Should Be Visible        ${xpath}
Verify Login Success
   [Arguments]        ${xpath}
    Element Should Not Be Visible   ${xpath}
*** Test Cases ***
Login trueAAAv4 - Fail Case 1 Chrome
    [tags]    fail
    Open Browser    about:blank    chrome
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_fail_case1}      ${password_fail_case1}
    Click Button Login          ${btn_page_login}
    Verify Login Fail           ${txt_message_fail}
Login trueAAAv4 - Fail Case 2 Chorme
    [tags]    fail
    Open Browser    about:blank    chrome
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_fail_case2}      ${password_fail_case2}
    Click Button Login          ${btn_page_login}
    Verify Login Fail           ${txt_message_fail}
Login trueAAAv4 - success Chorme
    [tags]    success
    Open Browser    about:blank    chrome
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_success}      ${password_success}
    Click Button Login          ${btn_page_login}
    Verify Login Success        ${txt_message_success}


Login trueAAAv4 - Fail Case 1 Firefox
    [tags]    fail
    Open Browser    about:blank    ff
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_fail_case1}      ${password_fail_case1}
    Click Button Login          ${btn_page_login}
    Verify Login Fail           ${txt_message_fail}
Login trueAAAv4 - Fail Case 2 Firefox
    [tags]    fail
    Open Browser    about:blank    ff
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_fail_case2}      ${password_fail_case2}
    Click Button Login          ${btn_page_login}
    Verify Login Fail           ${txt_message_fail}
Login trueAAAv4 - success Firefox
    [tags]    success
    Open Browser    about:blank    ff
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_success}      ${password_success}
    Click Button Login          ${btn_page_login}
    Verify Login Success        ${txt_message_success}


Login trueAAAv4 - Fail Case 1 Safari
    [tags]    fail
    Open Browser    about:blank    safari
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_fail_case1}      ${password_fail_case1}
    Click Button Login          ${btn_page_login}
    Verify Login Fail           ${txt_message_fail}
Login trueAAAv4 - Fail Case 2 Safari
    [tags]    fail
    Open Browser    about:blank    safari
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_fail_case2}      ${password_fail_case2}
    Click Button Login          ${btn_page_login}
    Verify Login Fail           ${txt_message_fail}
Login trueAAAv4 - success Safari
    [tags]    success
    Open Browser    about:blank    safari
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_success}      ${password_success}
    Click Button Login          ${btn_page_login}
    Verify Login Success        ${txt_message_success}


Login trueAAAv4 - Fail Case 1 Internet Explorer
    [tags]    fail
    Open Browser    about:blank    ie
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_fail_case1}      ${password_fail_case1}
    Click Button Login          ${btn_page_login}
    Verify Login Fail           ${txt_message_fail}
Login trueAAAv4 - Fail Case 2 Internet Explorer
    [tags]    fail
    Open Browser    about:blank    ie
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_fail_case2}      ${password_fail_case2}
    Click Button Login          ${btn_page_login}
    Verify Login Fail           ${txt_message_fail}
Login trueAAAv4 - success Internet Explorer
    [tags]    success
    Open Browser    about:blank    ie
    Go To           ${url_truev4}
    Click Button Login          ${btn_goto_page_login}
    Verify FullPageV4 page           ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_success}      ${password_success}
    Click Button Login          ${btn_page_login}
    Verify Login Success        ${txt_message_success}