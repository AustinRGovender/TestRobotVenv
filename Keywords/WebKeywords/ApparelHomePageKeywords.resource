#Developed by: Austin Ryan Govender
#Last-Modified: 15/07/2020
#Purpose: This resource file contains keywords to manipulate the ApparelHomePage.py page objects

*** Settings ***

Documentation    Utilises ApparelHomePage page objects
Library          SeleniumLibrary                                            20
Variables        ../../Page Objects/ApparelHomePage.py
Variables        ../../Page Objects/SignInPage.py
Variables        ../../Page Objects/RegisterPage.py
Variables        ../../Page Objects/DeliveryMethodsPage.py

*** Variables ***


*** Keywords ***

Open Browser And Navigate to URL
    Open Browser                        ${eCommUrl}    ${Browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${MrpLogo}

Close All Banners
    Wait Until Page Contains Element    ${CookieBannerCl}
    Click Element                       ${CookieBannerCl}
    Click Element                       ${CountrySelectBannerCl}

Click SignIn or Register Button
    Wait Until Page Contains Element    ${LoginOrRegOpt}
    Click Element                       ${LoginOrRegOpt}
    Wait Until Page Contains Element    ${SignInButton}

Click SignIn Button
    Click Element                       ${SignInButton}
    Wait Until Page Contains Element    ${IsOnSignInPage}

Click Register Button
    Click Element                       ${RegisterButton}
    Wait Until Page Contains Element    ${IsOnRegisterPage}

Click My Profile
    Click Element                       ${MyProfileButton}
    Wait Until Page Contains Element    ${}

Click My Orders
    Click Element                       ${MyOrdersButton}
    Wait Until Page Contains Element    ${}

Click Change Country Button
    Click Element                       ${ChangeCountryButton}
    Wait Until Page Contains Element    ${}

Checkout as Guest
    Wait Until Page Contains Element    ${GuestCheckout}
    Click Element                       ${GuestCheckout}