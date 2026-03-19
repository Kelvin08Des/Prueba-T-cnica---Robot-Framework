*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}       http://localhost:4723
${PLATFORM_NAME}    Android
${AUTOMATION_NAME}  uiautomator2
${DEVICE_UDID}      qwcywwnf5p7l9lj7

${APP_PACKAGE}      com.android.chrome
${APP_ACTIVITY}     com.google.android.apps.chrome.Main

${URL}              https://demoqa.com/automation-practice-form

*** Keywords ***
Abrir Mobile DemoQA
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    automationName=${AUTOMATION_NAME}
    ...    udid=${DEVICE_UDID}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    noReset=true


    # Espera a que Chrome abra
    Sleep    3s

    # Navegar a la página
    Go To Url    ${URL}

Cerrar Mobile
    Close Application