#Developed by: Austin Ryan Govender
#Last-Modified: 15/07/2020

*** Settings ***
Documentation    Utilises ApparelHomePage page objects
Library          SeleniumLibrary                                         20
Library          Dialogs
Variables        ../../Page Objects/WebPageObjects/SignInPage.py
Variables        ../../Page Objects/WebPageObjects/DashboardPage.py
Variables        ../../Page Objects/WebPageObjects/DisplayResources.py

*** Variable ***

*** Keywords ***

Capture Login Credentials
    Click Element    ${EmailTxt} 
    Input Text       ${EmailTxt}       ${EmailAddressVal}
    Click Element    ${PasswordTxt}
    Input Text       ${PasswordTxt}    ${PasswordVal}

Deselect Remember Me Checkbox
    Unselect Checkbox    ${RememberMeChk}

Manually Complete Captcha
    Execute Manual Step    ${RecaptchaManualMessage}

Complete SignIn Process
    Click Element                       ${SignInBtn}
    Wait Until Page Contains Element    ${IsOnDashboard}