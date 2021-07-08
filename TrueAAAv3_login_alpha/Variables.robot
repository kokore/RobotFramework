*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_truev3}            https://www.trueid-alpha.net/member/signin
${url_truev3_title}      TrueID - ไอดีเดียว เติมเต็มความสุขทุกไลฟ์สไตล์ ที่เดียวจบ ครบทุกความต้องการ

${input_user}            //*[@name="account"]
${input_pass}            //*[@name="password"]
${input_thaiid}          //*[@name="idcard"]
${input_date}            //*[@id="birthday"]
${click_day}             //*[@class="icon_calendar"]
${click_year}            //*[@class="ui-datepicker-year"]
${click_oneday}          //*[@class="ui-state-default"]
${year_num}             //*[@value="1996"]
${input_pin}             //*[@name="pinpwd"]

${btn_login}            //*[@id="submit"]
${btn_picker}           //*[@class="icon_calendar"]
${bth_thaiid}           //*[@class="btn btn-true-submit"]
${bth_pin}              //*[@class="btn btn-true-submit"]
${check_success_fail}   //*[@class="text-danger"]

${username_invalid}         11111111
${password_invalid}         1233
${username_invalid_empty}         
${password_invalid_empty}         
${username_valid}      123
${password_valid}      123
${thaiid_valid}         123
${day_valid}         //*[@class="ui-state-default ui-state-highlight ui-state-hover"]
${user_pin}  135790