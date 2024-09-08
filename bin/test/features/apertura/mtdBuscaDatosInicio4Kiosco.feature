# language: es
@apertura
Característica: Obtener si un CI es cliente del banco

  @smoke
  Esquema del escenario: Verificar que el endpoint valide si un carnet es o no cliente del banco
    Dado que daniel va a realizar peticiones
    Cuando consulta si los siguientes datos
      | pNroDocumento   | pComplemento   | pExpedicion   | pNroTelefono   | pIndefinido   | pFechaVcto   | pFechaNcto   | pCodKiosco   | pCodSucursalK   | pSexo   | pGreenCard   |  |
      | <pNroDocumento> | <pComplemento> | <pExpedicion> | <pNroTelefono> | <pIndefinido> | <pFechaVcto> | <pFechaNcto> | <pCodKiosco> | <pCodSucursalK> | <pSexo> | <pGreenCard> |  |
    Entonces deberia poder empezar el flujo de apertura
    Ejemplos:
      | pNroDocumento | pComplemento | pExpedicion | pNroTelefono | pIndefinido | pFechaVcto | pFechaNcto | pCodKiosco | pCodSucursalK | pSexo | pGreenCard|
       ##@externaldata@./src/test/resources/datadriven/apertura/inicio_data.xlsx@HappyPath
   |5874986   |   |SC   |62999774   |S   |47099   |   |KSM022   |701   |M   |N|
   |3651288   |   |CH   |62999774   |S   |47099   |   |KSM022   |701   |M   |N|
