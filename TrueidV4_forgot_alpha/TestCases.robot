*** Settings ***
Library    SeleniumLibrary
Resource   Variables.robot
Resource   Keywords.robot
Suite teardown    Close all browsers
*** Test Cases ***
Recovery trueid v4 - Recovery With Empty Username Should Fail in Chorme
    [tags]    Recovery Chrome Empty Username Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_invalid_empty}
    Click Button                    ${btn_page_recovery}
    Verify Fail                     ${check_success_fail}

Recovery trueid v4 - Recovery With Invalid Username Should Fail in Chorme
    [tags]    Recovery Chrome Invalid Username Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_invalid}
    Click Button                    ${btn_page_recovery}
    Verify Fail                     ${check_success_fail}

Recovery trueid v4 - Recovery With valid Username And Empty OTP Should Fail in Chorme
    [tags]    Recovery Chrome valid Username And Empty OTP Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_valid}
    Click Button                    ${btn_page_recovery}
    Input Otp                       ${input_otp}    ${otp_invalid_empty}
    Click Button                    ${btn_page_otp}
    Verify Fail                     ${check_otp_success_fail}

Recovery trueid v4 - Recovery With valid Username And Invalid OTP Should Fail in Chorme
    [tags]    Recovery Chrome valid Username And Invalid OTP Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_valid}
    Click Button                    ${btn_page_recovery}
    Input Otp                       ${input_otp}    ${otp_invalid}
    Click Button                    ${btn_page_otp}
    Verify Fail                     ${check_otp_success_fail}

Recovery trueid v4 - Recovery With valid Username And valid OTP But Empty Password Should Fail in Chorme
    [tags]    Recovery Chrome valid Username And valid OTP But Empty Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_valid}
    Click Button                    ${btn_page_recovery}
    Input Otp                       ${input_otp}    ${otp_valid}
    Click Button                    ${btn_page_otp}
    Verify Success                  ${check_otp_success_fail}
    Input Password                  ${input_pass}   ${password_invalid_empty}
    Click Button                    ${btn_pass}
    Verify Fail                     ${check_success_fail}

Recovery trueid v4 - Recovery With valid Username And valid OTP But Invalid Password Should Fail in Chorme
    [tags]    Recovery Chrome valid Username And valid OTP But Invalid Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_valid}
    Click Button                    ${btn_page_recovery}
    Input Otp                       ${input_otp}    ${otp_valid}
    Click Button                    ${btn_page_otp}
    Verify Success                  ${check_otp_success_fail}
    Input Password                  ${input_pass}   ${password_invalid}
    Click Button                    ${btn_pass}
    Verify Fail                     ${check_success_fail}

Recovery trueid v4 - Recovery With valid Username And valid OTP But valid Password Should Success in Chorme
    [tags]    Recovery Chrome valid Username And valid OTP But valid Password Should Success 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_valid}
    Click Button                    ${btn_page_recovery}
    Input Otp                       ${input_otp}    ${otp_valid}
    Click Button                    ${btn_page_otp}
    Verify Success                  ${check_otp_success_fail}
    Input Password                  ${input_pass}   ${password_valid}
    Verify Success                  ${check_success_fail}




Recovery trueid v4 - Recovery With Empty Username Should Fail in Firefox
    [tags]    Recovery Firefox Empty Username Should Fail 
    Open Browser    about:blank    headlessfirefox
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_invalid_empty}
    Click Button                    ${btn_page_recovery}
    Verify Fail                     ${check_success_fail}

Recovery trueid v4 - Recovery With Invalid Username Should Fail in Firefox
    [tags]    Recovery Firefox Invalid Username Should Fail 
    Open Browser    about:blank    headlessfirefox
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_invalid}
    Click Button                    ${btn_page_recovery}
    Verify Fail                     ${check_success_fail}

Recovery trueid v4 - Recovery With valid Username And Empty OTP Should Fail in Firefox
    [tags]    Recovery Firefox valid Username And Empty OTP Should Fail 
    Open Browser    about:blank    headlessfirefox
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_valid}
    Click Button                    ${btn_page_recovery}
    Input Otp                       ${input_otp}    ${otp_invalid_empty}
    Click Button                    ${btn_page_otp}
    Verify Fail                     ${check_otp_success_fail}

Recovery trueid v4 - Recovery With valid Username And Invalid OTP Should Fail in Firefox
    [tags]    Recovery Firefox valid Username And Invalid OTP Should Fail 
    Open Browser    about:blank    headlessfirefox
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_valid}
    Click Button                    ${btn_page_recovery}
    Input Otp                       ${input_otp}    ${otp_invalid}
    Click Button                    ${btn_page_otp}
    Verify Fail                     ${check_otp_success_fail}

Recovery trueid v4 - Recovery With valid Username And valid OTP But Empty Password Should Fail in Firefox
    [tags]    Recovery Firefox valid Username And valid OTP But Empty Password Should Fail 
    Open Browser    about:blank    headlessfirefox
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_valid}
    Click Button                    ${btn_page_recovery}
    Input Otp                       ${input_otp}    ${otp_valid}
    Click Button                    ${btn_page_otp}
    Verify Success                  ${check_otp_success_fail}
    Input Password                  ${input_pass}   ${password_invalid_empty}
    Click Button                    ${btn_pass}
    Verify Fail                     ${check_success_fail}

Recovery trueid v4 - Recovery With valid Username And valid OTP But Invalid Password Should Fail in Firefox
    [tags]    Recovery Firefox valid Username And valid OTP But Invalid Password Should Fail 
    Open Browser    about:blank    headlessfirefox
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_valid}
    Click Button                    ${btn_page_recovery}
    Input Otp                       ${input_otp}    ${otp_valid}
    Click Button                    ${btn_page_otp}
    Verify Success                  ${check_otp_success_fail}
    Input Password                  ${input_pass}   ${password_invalid}
    Click Button                    ${btn_pass}
    Verify Fail                     ${check_success_fail}

Recovery trueid v4 - Recovery With valid Username And valid OTP But valid Password Should Success in Firefox
    [tags]    Recovery Firefox valid Username And valid OTP But valid Password Should Success 
    Open Browser    about:blank    headlessfirefox
    Go To                           ${url_truev4}
    Click Button                    ${btn_goto_page_login}
    Verify FullPageV4 page          ${url_truev4_title}
    Click Button                    ${btn_goto_page_recovery}
    Input Username                  ${input_user}   ${username_valid}
    Click Button                    ${btn_page_recovery}
    Input Otp                       ${input_otp}    ${otp_valid}
    Click Button                    ${btn_page_otp}
    Verify Success                  ${check_otp_success_fail}
    Input Password                  ${input_pass}   ${password_valid}
    Verify Success                  ${check_success_fail}