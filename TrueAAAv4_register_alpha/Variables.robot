*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_truev4}            http://localhost/trueid-trueid-frontend-4.0/public/signin/byotp?client_id=29
${url_truev4_title}      TrueID  - the single access of infinite convergence experience


${input_user}            //*[@name="mobile"]
${input_pass}            //*[@name="password"]
${input_otp}             //*[@name="otp"]

${btn_goto_page_login}   //*[@class="btn-style red-border-btn full-width-btn"]
${btn_goto_page_register}   //*[@id="linkregister"]
${btn_page_register}        //*[@id="bt_signup"]
${btn_page_otp}         //*[@id="submitOtp"]
${btn_pass}             //*[@class="btn btn-primary"]

${check_success_fail}               //*[@class="form-text text-remark text-left"]
${check_otp_success_fail}           //*[@class="form-text text-remark text-left"]

${username_invalid}         11111111
${password_invalid}         1233
${username_invalid_empty}         
${password_invalid_empty}         
${username_valid}      123
${password_valid}      123

${otp_invalid_empty}      
${otp_invalid}      123
${otp_valid}      123