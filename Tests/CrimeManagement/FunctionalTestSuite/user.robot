*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}   http://127.0.0.1:5000
${email}    sumanthravi11111@gmail.com
${password}     12345

*** Test Cases ***
User Registeration test
    [Documentation]  register
    [Tags]  user
    open browser    ${web_url}   chrome
    maximize browser window
    input text  name:name   sumanth
    sleep  1s
    input text  name:address    1/100 ONALVADI,HOSUR,KRISHNAGIRI
    sleep  1s
    input text  name:email      ${email}
    sleep  1s
    input text  name:phone      9677312849
    sleep  1s
    input text  name:password   ${password}
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  1s

User Login test
    [Documentation]   login
    [Tags]  user
    input text  name:email  ${email}
    sleep  1s
    input text  name:password   ${password}
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  5s

Report Crime test
    [Documentation]   crime
    [Tags]  user
    click link  xpath=//html/body/nav/a[1]
    sleep  1s
    input text  name:date   15
    sleep  1s
    input text  name:remark   lost my lunchbox
    sleep   1s
    input text  name:description    NA
    sleep  3s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[4]/td[2]/center/button
    sleep  1s

Edit User Profile test
    [Documentation]   account info
    [Tags]  user
    click link  xpath=//html/body/nav/a[2]
    sleep  1s
    input text  name:email  ${email}
    sleep  1s
    click button  xpath=//html/body/div/div/div/form[1]/table/tbody/tr[2]/td[2]/center/button
    sleep  2s
    input text  name:name   sumanth
    sleep  3s
    click button  xpath=//html/body/div/div/div/form[2]/table/tbody/tr[6]/td[2]/button
    sleep  1s

User Logout test
    [Documentation]  logout
    [Tags]  user
    click link  xpath=//html/body/nav/a[3]
    sleep  2s
    close browser


*** Keywords ***