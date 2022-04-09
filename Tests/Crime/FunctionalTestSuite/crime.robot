*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000
${email}    sum@gmail.com
${password}  12345678

*** Test Cases ***
Guest Crime Report test
     [Documentation]   Guest Report
     [Tags]  guest
     open browser  ${web_url}  chrome
     maximize browser window
     click Element  xpath:/html/body/div/div/div/div/form/table/tbody/tr[6]/td[2]/a
     sleep  3s
     input text  name:descrip  lunchbox robbery had been occured on  chennai
     sleep  3s
     input text  name:remark  robbery
     sleep   1s
     click button  xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
     sleep  1s
     close browser


Admin Login test
    [Documentation]  Admin Login
    [Tags]  admin
    open browser  ${web_url}  chrome
    maximize browser window
    input text  name:admname  admin
    sleep  1s
    input text  name:admpass  12345
    sleep  1s
    click button  name:btn1
    sleep  1s

View Report test
    [Documentation]   View Crime Report
    [Tags]  admin
    click link  xpath:/html/body/div[1]/div/div/nav/div/div/ul/li[1]/a
    sleep  2s

Filter With Date test
    [Documentation]  Date Sort
    [Tags]  admin
    click link  xpath:/html/body/div[1]/div/div/nav/div/div/ul/li[2]/a
    sleep  3s
    input text  xpath:/html/body/div[2]/div/form/table/tbody/tr[1]/td[2]/input  04/09/2022
    sleep  3s
    click button  xpath:/html/body/div[2]/div/form/table/tbody/tr[2]/td[2]/button
    sleep 3s

Admin Logout test
    [Documentation]  Logout
    [Tags]  admin
    click link  xpath:/html/body/div[1]/div/div/nav/div/div/ul/li[3]/a
    sleep  2s
    close browser

User Registeration test
    [Documentation]  User Register
    [Tags]  user
    open browser  ${web_url}  chrome
    maximize browser window
    click Element  xpath:/html/body/div/div/div/div/form/table/tbody/tr[4]/td[2]/a
    sleep  1s
    input text  name:username  prince
    sleep  1s
    input text  name:address  goa
    sleep  1s
    input text  name:useremail  ${email}
    sleep  1s
    input text  name:userphone  909097689
    sleep  1s
    input text  name:userpass  ${password}
    sleep  1s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  1s
    Close Browser

User Login test
    [Documentation]  User Login
    [Tags]  user
    open browser  ${web_url}  chrome
    maximize browser window
    Click Element  xpath:/html/body/div/div/div/div/form/table/tbody/tr[5]/td[2]/a
    sleep  1s
    input text  name:useremail  ${email}
    sleep  1s
    input text  name:userpass  ${password}
    sleep  1s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  5s

Report Crime test
    [Documentation]  Report Crime
    [Tags]  user
    Click Element  xpath:/html/body/div/div/div/nav/div/div/ul/li[1]/a
    sleep  1s
    input text  name:descrip  Theft
    sleep  3s
    input text  name:remark  spoon
    sleep   1s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  1s
    Close Browser

Edit User Profile test
    [Documentation]  Edit details
    [Tags]  user
    open browser  ${web_url}  chrome
    maximize browser window
    Click Element  xpath:/html/body/div/div/div/div/form/table/tbody/tr[5]/td[2]/a
    sleep  1s
    input text  name:useremail  ${email}
    sleep  1s
    input text  name:userpass  ${password}
    sleep  1s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  5s
    click Element  xpath:/html/body/div/div/div/nav/div/div/ul/li[2]/a
    sleep  2s
    input text  name:newname   sumanth
    sleep  3s
    click button  xpath:/html/body/div[2]/div/div/form[1]/table/tbody/tr[2]/td[2]/button
    sleep  1s
    input text  name:newphone  987544141
    sleep  1s
    click button  xpath:/html/body/div[2]/div/div/form[2]/table/tbody/tr[6]/td[2]/button
    sleep  3s

User Logout test
    [Documentation]  User LogOut
    [Tags]  user
    click link  xpath:/html/body/div/div/div/nav/div/div/ul/li[3]/a
    sleep  2s
    close browser

*** Keywords ***