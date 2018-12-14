*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_truev4}            http://localhost/trueid-trueid-frontend-4.0/public/signin/byotp?client_id=29
${url_truev4_title}      TrueID  - the single access of infinite convergence experience


${input_user}            //*[@name="account"]
${input_pass}            //*[@id="password"]
${input_otp}             //*[@name="otp"]

${btn_goto_page_login}   //*[@class="btn-style red-border-btn full-width-btn"]
${btn_goto_page_recovery}   //*[@id="linkforgotpwd"]
${btn_page_recovery}        //*[@id="bt_forgot"]
${btn_page_otp}         //*[@id="submitOtp"]
${btn_pass}             //*[@class="btn btn-primary"]

${check_success_fail}               //*[@class="form-text text-remark text-left text-danger"]
${check_otp_success_fail}           //*[@class="form-text text-remark text-left"]

${username_invalid}         11111111
${password_invalid}         1233
${username_invalid_empty}         
${password_invalid_empty}         
${username_valid}      0991060745
${password_valid}      Pomkub1!

${otp_invalid_empty}      
${otp_invalid}      293423
${otp_valid}      test