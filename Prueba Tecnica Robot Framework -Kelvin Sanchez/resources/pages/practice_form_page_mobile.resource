*** Settings ***
Library    AppiumLibrary

*** Variables ***
${FIRST_NAME_INPUT}      xpath=//android.widget.EditText[@resource-id="firstName"]
${LAST_NAME_INPUT}       xpath=//android.widget.EditText[@resource-id="lastName"]
${EMAIL_INPUT}           xpath=//android.widget.EditText[@resource-id="userEmail"]
${GENDER_MALE_RADIO}     xpath=//android.widget.RadioButton[@resource-id="gender-radio-1"]
${MOBILE_INPUT}          xpath=//android.widget.EditText[@resource-id="userNumber"]
${DATE_OF_BIRTH_INPUT}   xpath=//android.widget.EditText[@resource-id="dateOfBirthInput"]
${SUBJECTS_INPUT}        xpath=//android.view.View[@resource-id="subjectsContainer"]/android.view.View[2]/android.view.View
${HOBBIES_SPORTS_CHECKBOX}  xpath=//android.widget.CheckBox[@resource-id="hobbies-checkbox-1"]
${CURRENT_ADDRESS_TEXTAREA}  xpath=//android.widget.EditText[@resource-id="currentAddress"]
${STATE_DROPDOWN}        xpath=//android.widget.EditText[@resource-id="state"]
${CITY_DROPDOWN}         xpath=//android.widget.EditText[@resource-id="city"]
${SUBMIT_BUTTON}         xpath=//android.widget.Button[@resource-id="submit"]
${MODAL_CONTENT}         xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]
${MODAL_TITLE}           xpath=//android.widget.TextView[@text="Thanks for submitting the form"]
${CLOSE_MODAL_BUTTON}    xpath=//android.widget.Button[@resource-id="closeLargeModal"]


*** Keywords ***
Ingresar Datos Personales
    [Arguments]    ${nombre}    ${apellido}    ${email}
    Input Text    ${FIRST_NAME_INPUT}    ${nombre}
    Input Text    ${LAST_NAME_INPUT}     ${apellido}
    Input Text    ${EMAIL_INPUT}         ${email}

Seleccionar Genero Masculino
    Click Element    ${GENDER_MALE_RADIO}

Ingresar Telefono
    [Arguments]    ${telefono}
    Input Text    ${MOBILE_INPUT}    ${telefono}

Seleccionar Hobby Deportes
    Click Element    ${HOBBIES_SPORTS_CHECKBOX}


Ingresar Asignaturas
    [Arguments]    ${asignatura}
    Input Text    ${SUBJECTS_INPUT}    ${asignatura}
    Press Keycode    66

Ingresar Direccion Actual
    [Arguments]    ${direccion}
    Input Text    ${CURRENT_ADDRESS_TEXTAREA}    ${direccion}

Seleccionar Estado
    [Arguments]    ${estado}
    # Se reemplaza el Execute JavaScript por Scroll To Element de AppiumLibrary
    Scroll To Element    ${STATE_DROPDOWN}
    Wait Until Element Is Visible    ${STATE_DROPDOWN}
    Click Element    ${STATE_DROPDOWN}
    Input Text       ${STATE_DROPDOWN}    ${estado}
    Press Keycode    66

Seleccionar Ciudad
    [Arguments]    ${ciudad}
    # Se reemplaza Scroll Element Into View por Scroll To Element de AppiumLibrary
    Scroll To Element    ${CITY_DROPDOWN}
    Wait Until Element Is Visible    ${CITY_DROPDOWN}
    Click Element    ${CITY_DROPDOWN}
    Input Text       ${CITY_DROPDOWN}    ${ciudad}
    Press Keycode    66

Enviar Formulario
    # Se reemplaza Scroll Element Into View y Execute JavaScript por Scroll To Element y Click Element de AppiumLibrary
    Scroll To Element    ${SUBMIT_BUTTON}
    Click Element    ${SUBMIT_BUTTON}

Validar Envio Exitoso y Cerrar
    Wait Until Element Is Visible    ${MODAL_CONTENT}    timeout=10s
    Wait Until Element Contains     ${MODAL_TITLE}    Thanks for submitting the form
    Click Element                   ${CLOSE_MODAL_BUTTON}
