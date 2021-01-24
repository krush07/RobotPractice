*** Settings ***
Documentation  This is my first practice robot script
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic test
    [Tags]  Smoke
    open browser  http://www.amazon.in  chrome
    Maximize Browser Window
    wait until page contains  amazon.in
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  css=[value='Go']
    wait until page contains  results for "Ferrari 458"
    click link  xpath=//span[contains(text(),'Deliababy Ferrari 458 Italia, Red')]/parent::a
    select window  Buy Deliababy Ferrari 458 Italia, Red Online at Low Prices in India - Amazon.in
    wait until page contains  Back to results
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart
    click link  id=hlb-ptc-btn-native
    wait until page contains  Login
    close browser
*** Keywords ***
