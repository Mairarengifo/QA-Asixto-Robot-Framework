*** Settings ***
Library    SeleniumLibrary
Resource    EliminarClienteObjectMap.robot

*** Keywords ***
el usuario elimina un cliente existente
    Wait Until Element Is Visible    ${accionesMenu}
    Click Element    ${accionesMenu}
    Click Element    ${eliminarButton}
    Sleep    3s
el cliente eliminado no se visualiza en la lista de clientes
    Capture Page Screenshot