*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    EditarClienteObjectMap.robot
Resource    EditarClienteTestData.robot

*** Keywords ***
el usuario edita un cliente existente
    Wait Until Element Is Visible    ${accionesMenu}
    Click Element    ${accionesMenu}
    Click Element    ${editarButton}
    Sleep    3s
    Select From List By Label    ${tipoIdentificacionSelect}    ${tipoDeIdentificacionModificadoValue}
    Clear Element Text    ${identificacionInput}
    Clear Element Text    ${nombreCompletoInput}
    Clear Element Text    ${correoElectronicoInput}     
    Capture Page Screenshot
    Input text    ${identificacionInput}    ${identificacionModificadoValue}
    Input Text    ${nombreCompletoInput}    ${nombreCompletoModificadoValue}
    Input Text    ${correoElectronicoInput}    ${correoElectronicoModificadoValue}
    Select From List By Label    ${estadoSelect}    ${estadoModificadoValue}
    Capture Page Screenshot
    Click Element    ${guardarButton}
    Capture Page Screenshot
    Sleep    3s
    

el cliente modificado se visualiza en la lista de clientes
    Page Should Contain    ${nombreCompletoModificadoValue}
    Capture Page Screenshot