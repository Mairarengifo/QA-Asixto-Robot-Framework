*** Settings ***
Library    SeleniumLibrary
Resource    EditarClienteObjectMap.robot
Resource    EditarClienteTestData.robot

*** Keywords ***
el usuario edita un cliente existente
    Wait Until Element Is Visible    ${accionesMenu}
    Click Element    ${accionesMenu}
    Click Element    ${editarButton}
    Sleep    3s
    Select From List By Label    ${tipoIdentificacionSelect}    ${tipoDeIdentificacionModificadoValue}
    Input text    ${identificacionInput}    ${identificacionModificadoValue}
    Input Text    ${nombreCompletoInput}    ${nombreCompletoModificadoValue}
    Input Text    ${correoElectronicoInput}    ${correoElectronicoModificadoValue}
    Select From List By Label    ${estadoSelect}    ${estadoModificadoValue}
    Click Element    ${guardarButton}
    Sleep    3s

el cliente modificado se visualiza en la lista de clientes
    Page Should Contain    ${nombreCompletoModificadoValue}
    Capture Page Screenshot