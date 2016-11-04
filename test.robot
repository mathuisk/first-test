*** Settings ***
Library    Selenium2Library
Suite Setup    Open Browser    ${HOMEPAGE}    ${BROWSER}
Test Setup    Go to    ${HOMEPAGE}
Suite Teardown   Close All Browsers
Documentation    Demonstrate Selenium2Library by googling

*** Variables ***
${HOMEPAGE}    http://www.google.fi
${BROWSER}     chrome

*** Test Cases ***
Google devops and find eficode
    [Tags]    devops    eficode    smoke
    Google and check results    devops    eficode.fi

Google deveo and find its website
    [Tags]    deveo    eficode
    Google and check results    deveo    deveo.com

Google robot framework and find its website
    [Tags]    robotframework
    Google and check results    robot framework    robotframework.org

*** Keywords ***
Google and check results
    [Arguments]    ${searchkey}    ${result}
    Input Text    id=lst-ib    ${searchkey}
    Click Button    name=btnG
    Wait Until Page Contains    ${result}