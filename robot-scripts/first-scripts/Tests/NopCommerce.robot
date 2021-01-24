*** Settings ***
Documentation  This is my second practice robot script
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
Login Test
    [Documentation]  This is some basic login test
    [Tags]  Smoke
    open browser  ${url}  ${browser}
    Maximize Browser Window
    click link  xpath = //a[text()='Log in']
    wait until page contains  nopCommerce
    input text  id=Email  kchpadhy007@gmail.com
    input text  id=Password  Test@123
    click button  xpath = //input[@class='button-1 login-button']
    wait until page contains  Computers
    close browser

*** Keywords ***
