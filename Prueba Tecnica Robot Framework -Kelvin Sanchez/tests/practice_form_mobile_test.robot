*** Settings ***
Resource    ../resources/common_mobile.resource
Resource    ../resources/pages/practice_form_page_mobile.resource

Test Setup    Abrir Mobile DemoQA
Test Teardown    Cerrar Mobile
Library    AppiumLibrary


*** Test Cases ***
Escenario Mobile: Completar Registro
    AppiumLibrary.Wait Until Page Contains Element    ${FIRST_NAME_INPUT}    20s

    Ingresar Datos Personales    Kelvin    Sanchez    kelvin@test23.com
    Seleccionar Genero Masculino
    Ingresar Telefono            1234567890
    Ingresar Asignaturas        Computer Science
    Seleccionar Hobby Deportes
    Ingresar Direccion Actual    Panama City

    
    Execute Javascript    window.scrollBy(0,500)

    Seleccionar Estado           NCR
    Seleccionar Ciudad           Delhi

    Execute Javascript    window.scrollBy(0,500)

    Enviar Formulario
    Validar Envio Exitoso y Cerrar