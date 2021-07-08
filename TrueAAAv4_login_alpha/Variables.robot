*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_truev4}            http://localhost/trueid-trueid-frontend-4.0/public/signin/byotp?client_id=29
${url_truev4_title}      TrueID  - the single access of infinite convergence experience

${input_user}            //*[@name="account"]
${input_pass}            //*[@id="password"]

${btn_goto_page_login}   //*[@class="btn-style red-border-btn full-width-btn"]
${btn_page_login}        //*[@class="btn btn-primary"]

${txt_message_check_success_fail}   //*[@class="form-text text-remark text-left"]

${username_invalid}         11111111
${password_invalid}         12345678
${username_invalid_empty}         
${password_invalid_empty}         
${username_valid}      123
${password_valid}      123