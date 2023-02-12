Language: Spanish
*** Settings ***
Library    SeleniumLibrary
Resource    ../../../../Resources/Contactos/Clientes/Crear/CrearClienteKeyWords.robot
Resource    ../../../../Resources/Contactos/Clientes/Editar/EditarClienteKeyWords.robot
Resource    ../../../../Resources/Contactos/Clientes/Eliminar/EliminarClienteKeyWords.robot
Resource    ../../../../Resources/Common/Login/LoginKeyWords.robot
Test Teardown    Close Browser

*** Casos De Prueba ***
Gestionar clientes con informacion correcta
    Dado un usuario se encuentra en la plataforma de inicio de sesión de ASIXTO
    Y el usuario ingresa las credenciales de acceso en el formulario de Login
    Y el usuario se dirige a la seccion de clientes
    Cuando el usuario crea un nuevo cliente
    Entonces el cliente se visualiza en la lista de clientes
    Cuando el usuario edita un cliente existente
    Entonces el cliente modificado se visualiza en la lista de clientes
    Cuando el usuario elimina un cliente existente
    Entonces el cliente eliminado no se visualiza en la lista de clientes
     