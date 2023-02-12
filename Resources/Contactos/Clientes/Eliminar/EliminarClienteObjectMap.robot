*** Variables ***
${principalMenu}    xpath:/html/body/div[3]/header/a
${contactosMenu}    xpath://span[contains(.,'Contactos')]
${clientesMenu}    xpath://a[contains(.,'Clientes')]
${accionesMenu}    xpath://table[contains(., 'Acciones')]/tbody/tr[position()=1]/td[last()]/div/a
${eliminarButton}    xpath://table[contains(., 'Acciones')]/tbody/tr[position()=1]/td[last()]/div/div/a[contains(.,'Eliminar')]