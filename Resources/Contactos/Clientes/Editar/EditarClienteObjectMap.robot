*** Variables ***
${principalMenu}    xpath:/html/body/div[3]/header/a
${contactosMenu}    xpath://span[contains(.,'Contactos')]
${clientesMenu}    xpath://a[contains(.,'Clientes')]
${accionesMenu}    xpath://table[contains(., 'Acciones')]/tbody/tr[position()=1]/td[last()]/div/a
${editarButton}    xpath://table[contains(., 'Acciones')]/tbody/tr[position()=1]/td[last()]/div/div/a[contains(.,'Editar')]
${tipoIdentificacionSelect}    xpath://select[contains(.,'Tipo de Identificación')]
${identificacionInput}    xpath://input[@placeholder='Identificación*']
${nombreCompletoInput}    xpath://input[@placeholder='Nombre completo*']
${correoElectronicoInput}    xpath://input[@placeholder='Correo electrónico*']
${estadoSelect}    xpath://select[contains(.,'Activo')]
${guardarButton}   xpath://button[contains(.,'Guardar')]    
