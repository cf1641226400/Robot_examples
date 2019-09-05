*** Settings ***
Documentation   User Login
Library        SeleniumLibrary
Library        util.py

***Variables***
${Server_URL}       http://39.107.96.138:3000/
${Browser}          chrome
${Username }        user1
${Password}         123456

***Keywords***
user1成功登陆
    Open Browser        ${Server_URL}   ${Browser}
    Maximize Browser Window
    Click Element       css:a[href="/signin"]
    Input Text          id:name     ${Username}
    Input Password      id:pass     ${Password}
    Click Element       css:[type="submit"]
    Page Should Contain     ${Username}
   


# 删除用户话题
#     Click Element       css:span[=""user_name]>a
#     Click Element       css:div.cell a.topic_title
#     Click Element       css:i[class="fa fa-lg fa-trash"]
#     Handle Alert

*** Test Cases ***
删除帖子
    ${file_name}=   util.Get Current Time
    Log To Console    -----${filename}
    user1成功登陆
    [Teardown]        Capture Page Screenshot     ${filename}.png
    Close Browser
    # 删除用户话题

# 安居客登陆iframe测试
#     Open Browser    https://login.anjuke.com/login/form   chrome
#     Select Frame   id:iframeLoginIfm
#     Input Text      id:phoneIpt     15527333020
  
#  Valid Login
#     Open Browser    ${Server_URL}  ${Browser}
#     Maximize Browser Window 
#     Click Element   css:a[href="/signin"]
#     Input Text      id:name     ${Username}
#     Input Text      id:pass     ${Password}
#     Click Element   class:span-primary 
#     CLICK Element   class:span-success     
#     CLICK Element   id:tab-value
#     CLICK Element   class:span9
#     Input Text      id:title    Test
#     Input Text      name:title  test   