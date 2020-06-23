*** Settings ***
Documentation     Test different functions on the Infotiv car rental website
Library           SeleniumLibrary
Resource        ../Resources/keywords.robot
Test Setup         Begain Web Test
Test Teardown      End Web Test

*** Test Cases ***
Enter the email and password
    [Documentation]                 Required the login detail
    [Tags]                          id_email  id_password
   User needs to enter the email and password

User is allowed for Date Selection
    [Documentation]          Required to select the dates
    [Tags]                   Test 2
     Given browser is opend to select date
     When press the selected date
     Then press"Continue"to should reserve a car

Reset
    [Documentation]        able to reset the selection
    [Tags]                    Test 3
    User Click Button Reset

Select Car
    [Documentation]         pick the car type
    [Tags]                  Test 4
    User Click Button for car booking

Select the Number of Passengers
    [Documentation]          Total passengers
    [Tags]                    Test 5
    User Click Button for Passengers Selection