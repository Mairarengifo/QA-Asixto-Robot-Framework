*** Settings ***
Library    SeleniumLibrary
Resource    CrearClienteObjectMap.robot
Resource    CrearClienteTestData.robot


*** Keywords ***
el usuario se dirige a la seccion de clientes
    Click Element    ${contactosMenu}
    Sleep    3s
    Click Element    ${clientesMenu}
el usuario crea un nuevo cliente
    Wait Until Element Is Visible    ${nuevoButton}
    Click element    ${nuevoButton}
    Sleep    3s
    Select From List By Label    ${tipoIdentificacionSelect}    ${tipoDeIdentificacionValue}
    Input text    ${identificacionInput}    ${identificacionValue}
    Input Text    ${nombreCompletoInput}    ${nombreCompletoValue}
    Input Text    ${correoElectronicoInput}    ${correoElectronicoValue}
    Select From List By Label    ${estadoSelect}    ${estadoValue}
    Click Element    ${guardarButton}
    Sleep    3s

el cliente se visualiza en la lista de clientes
    Page Should Contain    ${nombreCompletoValue}
    Capture Page Screenshot