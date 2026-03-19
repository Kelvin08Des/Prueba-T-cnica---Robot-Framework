*** Settings ***
Resource    ../resources/common.resource
Resource    ../resources/pages/practice_form_page.resource
Test Setup    Abrir Navegador en DemoQA
Test Teardown    Cerrar Navegador

*** Test Cases ***
Escenario: Completar Registro de Exitosamente
    [Documentation]    Prueba funcional del formulario usando el patrón POM.

    Wait Until Element Is Visible    ${FIRST_NAME_INPUT}

    Ingresar Datos Personales    Kelvin    Sanchez    kelvin@test23.com
    Seleccionar Genero Masculino
    Ingresar Telefono            1234567890
    Ingresar Fecha de Nacimiento    10 May 1990
    Ingresar Asignaturas        Computer Science
    Seleccionar Hobby Deportes
    Ingresar Direccion Actual    Panama , city
    Seleccionar Estado           NCR
    Seleccionar Ciudad           Delhi
    Enviar Formulario
    Validar Envio Exitoso y Cerrar
