*** Settings ***
Library    SeleniumLibrary
Library  DateTime
Resource   Variables.robot
Resource   Keywords.robot
Suite teardown    Close all browsers
*** Test Cases ***
Login trueAAA v3 - Login With Empty Username Should Fail in Chorme
    [tags]    Login Chrome Empty Username Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev3}
    Verify FullPageV3 page          ${url_truev3_title}
    Input Username                  ${input_user}   ${username_invalid_empty}
    Click Button                    ${btn_login}
    Verify Fail                     ${check_success_fail}

Login trueAAA v3 - Login With Empty Password Should Fail in Chorme
    [tags]    Login Chrome Empty Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev3}
    Verify FullPageV3 page          ${url_truev3_title}
    Input Password                  ${input_pass}   ${password_invalid_empty}
    Click Button                    ${btn_login}
    Verify Fail                     ${check_success_fail}

Login trueAAA v3 - Login With Invalid Username Should Fail in Chorme
    [tags]    Login Chrome Invalid Username Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev3}
    Verify FullPageV3 page          ${url_truev3_title}
    Input Username                  ${input_user}   ${username_invalid}
    Click Button                    ${btn_login}
    Verify Fail                     ${check_success_fail}

Login trueAAA v3 - Login With Invalid Password Should Fail in Chorme
    [tags]    Login Chrome Invalid Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev3}
    Verify FullPageV3 page          ${url_truev3_title}
    Input Password                  ${input_pass}   ${password_invalid}
    Click Button                    ${btn_login}
    Verify Fail                     ${check_success_fail}

Login trueAAA v3 - Login With Invalid Username and Password Should Fail in Chorme
    [tags]    Login Chrome Invalid Username and Password Should Fail 
    Open Browser    about:blank    headlesschrome
    Go To                           ${url_truev3}
    Verify FullPageV3 page          ${url_truev3_title}
    Input Username and Password     ${input_user}   ${input_pass}  ${username_invalid}  ${password_invalid}
    Click Button                    ${btn_login}
    Verify Fail                     ${check_success_fail}

Login trueAAA v3 - Login With Username and Password Should Success in Chorme
    [tags]    Login Chrome Username and Password Should Success 
    Open Browser    about:blank    chrome
    Go To                           ${url_truev3}
    Verify FullPageV3 page          ${url_truev3_title}
    Input Username and Password     ${input_user}   ${input_pass}  ${username_valid}  ${password_valid}
    Click Button                    ${btn_login}
    Input ThaiID                    ${input_thaiid}     ${thaiid_valid}
    Sleep   1s
    Input Date                      ${click_day}        ${click_year}       ${year_num}     ${click_oneday}   ${day_valid}
    Sleep    1s
    Click Button                    ${bth_thaiid}
    Input Pin                       ${input_pin}        ${user_pin}
    Click Button                    ${bth_pin}