*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FIRST_NAME_INPUT}      id=firstName
${LAST_NAME_INPUT}       id=lastName
${EMAIL_INPUT}           id=userEmail
${GENDER_MALE_RADIO}     xpath=//label[@for='gender-radio-1']
${MOBILE_INPUT}          id=userNumber
${DATE_OF_BIRTH_INPUT}   id=dateOfBirthInput
${SUBJECTS_INPUT}        id=subjectsInput
${HOBBIES_SPORTS_CHECKBOX}  xpath=//label[@for='hobbies-checkbox-1']
${CURRENT_ADDRESS_TEXTAREA}  id=currentAddress
${STATE_DROPDOWN}        //div[@id='state']//div[contains(@class,'indicatorContainer')]
${CITY_DROPDOWN}         id=city
${SUBMIT_BUTTON}         id=submit
${MODAL_CONTENT}         xpath=//div[@class='modal-content']
${MODAL_TITLE}           //div[contains(@class,'modal-title') and contains(text(),'Thanks')]
${CLOSE_MODAL_BUTTON}    //button[@id='closeLargeModal']

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

Ingresar Fecha de Nacimiento
    [Arguments]    ${fecha}
    Click Element    ${DATE_OF_BIRTH_INPUT}
    Press Keys       ${DATE_OF_BIRTH_INPUT}    CTRL+A
    Press Keys       ${DATE_OF_BIRTH_INPUT}    BACKSPACE
    Input Text       ${DATE_OF_BIRTH_INPUT}    ${fecha}
    Press Keys       ${DATE_OF_BIRTH_INPUT}    ENTER

Ingresar Asignaturas
    [Arguments]    ${asignatura}
    Input Text    ${SUBJECTS_INPUT}    ${asignatura}
    Press Keys    ${SUBJECTS_INPUT}    ENTER

Ingresar Direccion Actual
    [Arguments]    ${direccion}
    Input Text    ${CURRENT_ADDRESS_TEXTAREA}    ${direccion}


Seleccionar Estado
    [Arguments]    ${estado}

    Execute JavaScript    document.querySelector('#state').scrollIntoView({block: 'center'})
    Wait Until Element Is Visible    xpath=//div[@id='state']//input

    ${status}=    Run Keyword And Return Status
    ...    Click Element    xpath=//div[@id='state']//input

    Run Keyword If    not ${status}
    ...    Execute JavaScript    document.querySelector('#state input').click()

    Input Text       xpath=//div[@id='state']//input    ${estado}
    Press Keys       xpath=//div[@id='state']//input    ENTER

Seleccionar Ciudad
    [Arguments]    ${ciudad}
    Scroll Element Into View    id=city
    Wait Until Element Is Visible    xpath=//div[@id='city']//input
    Click Element    xpath=//div[@id='city']//input
    Input Text       xpath=//div[@id='city']//input    ${ciudad}
    Press Keys       xpath=//div[@id='city']//input    ENTER

Enviar Formulario
    Scroll Element Into View    ${SUBMIT_BUTTON}
    Execute JavaScript    document.getElementById('submit').click()

Validar Envio Exitoso y Cerrar
    Wait Until Element Is Visible    ${MODAL_CONTENT}    timeout=10s
    Wait Until Element Contains     ${MODAL_TITLE}    Thanks for submitting the form
    Click Element                   ${CLOSE_MODAL_BUTTON}