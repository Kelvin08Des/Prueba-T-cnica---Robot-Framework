*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir Navegador en DemoQA
    Open Browser    https://demoqa.com/automation-practice-form    chrome
    Maximize Browser Window

Cerrar Navegador
    Close All Browsers
