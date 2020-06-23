*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER} =        chrome
${URL} =            http://rental5.infotiv.net
*** Keywords ***
Begain Web Test
   Open Browser       ${URL}        ${BROWSER}
        Maximize Browser Window
End Web Test
    Close Browser
User needs to enter the email and password
  Input Text                      //*[@id="email"]    sabamustafaali@yahoo.com
  Input Text                      //*[@id="password"]  12345678
  click button                    //*[@id="login"]
  Wait Until Page Contains        Wrong e-mail or password

browser is opend to select date
    Element Should Be Visible     //*[@id="questionText"]

press the selected date
    Click element                   //*[@id="start"]
    Click element                   //*[@id="end"]

press"Continue"to should reserve a car
    Click Button                 //*[@id="continue"]

User Click Button Reset
    Click Button                    //*[@id="reset"]
    Wait Until Page Contains        Infotiv Car Rental

User Click Button for car booking
    Input Text              //*[@id="email"]     sabamustafaali@yahoo.com
    Input Text              //*[@id="password"]   both21984
    click button            //*[@id="login"]
    Click Button            //*[@id="continue"]
    Click Button            //*[@id="bookQ7pass5"]
    Wait Until Page Contains   Logout

User Click Button for Passengers Selection
     Click button                //*[@id="continue"]
     Click button                //*[@id="ms-list-2"]/button
     Wait Until Page Contains    What would you like to drive?
