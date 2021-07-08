*** Settings ***
Library    SeleniumLibrary
Resource   Variables.robot
Resource   Keywords.robot
Suite teardown    Close all browsers
*** Test Cases ***
Login trueAAA v4 - Login With Empty Password Should Fail in Chorme
    [tags]    Login Chrome Empty Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_valid}      ${password_invalid_empty}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With Empty Username Should Fail in Chorme
    [tags]    Login Chrome Empty Username Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_invalid_empty}      ${password_valid}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With Empty Username And Password Should Fail in Chorme
    [tags]    Login Chrome Login With Empty Username And Password Should Fail
    Open Browser    about:blank    headlesschrome
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_invalid_empty}      ${password_invalid_empty}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With Invalid Username Should Fail in Chorme
    [tags]    Login Chrome Login With Invalid Username Should Fail
    Open Browser    about:blank    headlesschrome
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_invalid}      ${password_valid}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With Invalid Password Should Fail in Chorme
    [tags]    Login Chrome Login With Invalid Password Should Fail
    Open Browser    about:blank    headlesschrome
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_valid}      ${password_invalid}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With Invalid Username And Invalid Password Should Fail in Chorme
    [tags]    Login Chorme With Invalid Username And Invalid Password Should Fail
    Open Browser    about:blank    headlesschrome
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_invalid}      ${password_invalid}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With valid Username And valid Password Should Success in Chorme
    [tags]    Login Chorme With valid Username And valid Password Should Success
    Open Browser    about:blank    headlesschrome
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_valid}      ${password_valid}
    Click Button                   ${btn_page_login}
    Verify Success           ${txt_message_check_success_fail}


Login trueAAA v4 - Login With Empty Password Should Fail in Firefox
    [tags]    Login Firefox Empty Password Should Fail 
    Open Browser    about:blank    headlessfirefox
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_valid}      ${password_invalid_empty}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With Empty Username Should Fail in Firefox
    [tags]    Login Firefox Empty Username Should Fail 
    Open Browser    about:blank    headlessfirefox
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_invalid_empty}      ${password_valid}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With Empty Username And Password Should Fail in Firefox
    [tags]    Login Firefox Login With Empty Username And Password Should Fail
    Open Browser    about:blank    headlessfirefox
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_invalid_empty}      ${password_invalid_empty}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With Invalid Username Should Fail in Firefox
    [tags]    Login Firefox Login With Invalid Username Should Fail
    Open Browser    about:blank    headlessfirefox
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_invalid}      ${password_valid}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With Invalid Password Should Fail in Firefox
    [tags]    Login Firefox Login With Invalid Password Should Fail
    Open Browser    about:blank    headlessfirefox
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_valid}      ${password_invalid}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With Invalid Username And Invalid Password Should Fail in Firefox
    [tags]    Login Firefox With Invalid Username And Invalid Password Should Fail
    Open Browser    about:blank    headlessfirefox
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_invalid}      ${password_invalid}
    Click Button                   ${btn_page_login}
    Verify Fail              ${txt_message_check_success_fail}
Login trueAAA v4 - Login With valid Username And valid Password Should Success in Firefox
    [tags]    Login Firefox With valid Username And valid Password Should Success
    Open Browser    about:blank    headlessfirefox
    Go To                          ${url_truev4}
    Click Button                   ${btn_goto_page_login}
    Verify FullPageV4 page         ${url_truev4_title}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_valid}      ${password_valid}
    Click Button                   ${btn_page_login}
    Verify Success           ${txt_message_check_success_fail}
