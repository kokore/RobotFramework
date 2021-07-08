*** Settings ***
Library    SeleniumLibrary
Resource   Variables.robot
Resource   Keywords.robot
Suite teardown    Close all browsers
*** Test Cases ***
Rigister trueAAA v4 - Rigister With Empty Username Should Fail in Chorme
    [tags]    Rigister Chrome Empty Username Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_register}
    Input Username and Password     ${input_user}     ${input_pass}       ${username_invalid_empty}      ${password_valid}
    Click Button                    ${btn_page_register}
    Verify Fail                     ${check_success_fail}

Rigister trueAAA v4 - Rigister With Empty Password Should Fail in Chorme
    [tags]    Rigister Chrome Empty Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_register}
    Input Username and Password     ${input_user}     ${input_pass}       ${username_valid}      ${password_invalid_empty}
    Click Button                    ${btn_page_register}
    Verify Fail                     ${check_success_fail}

Rigister trueAAA v4 - Rigister With Empty Username and Password Should Fail in Chorme
    [tags]    Rigister Chrome Empty Username and Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_register}
    Input Username and Password    ${input_user}     ${input_pass}       ${username_invalid_empty}      ${password_invalid_empty}
    Click Button                    ${btn_page_register}
    Verify Fail                     ${check_success_fail}

Rigister trueAAA v4 - Rigister With Invalid Username Should Fail in Chorme
    [tags]    Rigister Chrome Invalid Username Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_register}
    Input Username and Password     ${input_user}     ${input_pass}       ${username_invalid}      ${password_valid}
    Click Button                    ${btn_page_register}
    Verify Fail                     ${check_success_fail}

Rigister trueAAA v4 - Rigister With Invalid Password Should Fail in Chorme
    [tags]    Rigister Chrome Invalid Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_register}
    Input Username and Password     ${input_user}     ${input_pass}       ${username_valid}      ${password_invalid}
    Click Button                    ${btn_page_register}
    Verify Fail                     ${check_success_fail}

Rigister trueAAA v4 - Rigister With Invalid Username and Password Should Fail in Chorme
    [tags]    Rigister Chrome Invalid Username and Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_register}
    Input Username and Password     ${input_user}     ${input_pass}       ${username_invalid}      ${password_invalid}
    Click Button                    ${btn_page_register}
    Verify Fail                     ${check_success_fail}

Rigister trueAAA v4 - Rigister With valid Username and Password But Invalid OTP Should Fail in Chorme
    [tags]    Rigister Chrome Valid Username and Password But Invalid OTP Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_register}
    Input Username and Password     ${input_user}     ${input_pass}       ${username_valid}      ${password_valid}
    Click Button                    ${btn_page_register}
    Input Otp                       ${input_otp}    ${otp_invalid}
    Click Button                    ${btn_page_otp}
    Verify Fail                     ${check_otp_success_fail}

Rigister trueAAA v4 - Rigister With valid Username and Password But valid OTP Should Success in Chorme
    [tags]    Rigister Chrome Valid Username and Password But valid OTP Should Success 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_register}
    Input Username and Password     ${input_user}     ${input_pass}       ${username_valid}      ${password_valid}
    Click Button                    ${btn_page_register}
    Input Otp                       ${input_otp}    ${otp_valid}
    Click Button                    ${btn_page_otp}
    Verify Success                  ${check_otp_success_fail}
