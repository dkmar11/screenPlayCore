#Autor: Ibeth Morales

@notificaciones
Feature: Habilitar notificación

  Como cliente del Banco
  quiero habilitar mis notificaciones
  para recibir notificaciones de movimientos y abono en cuenta

  @smokeTest @notificaciones @auto-1278 @smokTestNotificaciones @TestCaseKey=TEST-T4379
  Scenario Outline: Usuario habilita sus notificaciones - importe
    Given Que "Daniel" inicio sesión en GanaMóvil Api
      | pStrNombreUsuario   | pStrImei   | pStrModelo   | pStrSistemaOperativo   | pStrClave   | pStrCanal   | did   | rsid   | version   | didbga   | pStrKsBga   |
      | <pStrNombreUsuario> | <pStrImei> | <pStrModelo> | <pStrSistemaOperativo> | <pStrClave> | <pStrCanal> | <did> | <rsid> | <version> | <didbga> | <pStrKsBga> |
    When Llama al endpoint habilitar notificación
      | pStrNroSesion | pIdUsuario   | pNotifXTarjeta   | pMedio   | pEmail   | pStrMonto   |
      | <pStrNroSesion> | <pIdUsuario> | <pNotifXTarjeta> | <pMedio> | <pEmail> | <pStrMonto> |
    Then Debería ver el estado 200 en la respuesta del endpoint notificación
    And Debería ver los datos de la respuesta del endpoint notificación
      | opstatus   | httpStatusCode   | intCodError   | lngNroSecuencia   |
      | <opstatus> | <httpStatusCode> | <intCodError> | <lngNroSecuencia> |
    And Debería existir el dato importe en la habilitación de notificacion en la base de datos
    Examples:
      | pStrNombreUsuario | pStrImei | pStrModelo | pStrSistemaOperativo | pStrClave | pStrCanal | did | rsid | version | didbga | pStrKsBga | pIdUsuario  | pNotifXTarjeta | pMedio | pEmail | pStrMonto | opstatus | httpStatusCode | intCodError | lngNroSecuencia |
     ##@externaldata@./src/test/resources/datadriven/notificaciones/notificaciones_data.xlsx@notificaciones@1
   |119147   |null   |sdk_gphone_x86   |ANDROID   |1234   |1   |59806c2249cef7a3   |59806c2249cef7a3   |v2.4.52   |8dee8cb7119ed026   |8dee8cb7119ed026   |119147   |3   |3   |0   |1000   |0   |200   |0   |0|

  @smokeTest @notificaciones @auto-1310 @smokTestNotificaciones @TestCaseKey=TEST-T4461
  Scenario Outline: Usuario habilita sus notificaciones - correo
    Given Que "Daniel" inicio sesión en GanaMóvil Api
      | pStrNombreUsuario   | pStrImei   | pStrModelo   | pStrSistemaOperativo   | pStrClave   | pStrCanal   | did   | rsid   | version   | didbga   | pStrKsBga   |
      | <pStrNombreUsuario> | <pStrImei> | <pStrModelo> | <pStrSistemaOperativo> | <pStrClave> | <pStrCanal> | <did> | <rsid> | <version> | <didbga> | <pStrKsBga> |
    When Llama al endpoint habilitar notificación
      | pStrNroSesion | pIdUsuario   | pNotifXTarjeta   | pMedio   | pEmail   | pStrMonto   |
      | <pStrNroSesion> | <pIdUsuario> | <pNotifXTarjeta> | <pMedio> | <pEmail> | <pStrMonto> |
    Then Debería ver el estado 200 en la respuesta del endpoint notificación
    And Debería ver los datos de la respuesta del endpoint notificación
      | opstatus   | httpStatusCode   | intCodError   | lngNroSecuencia   |
      | <opstatus> | <httpStatusCode> | <intCodError> | <lngNroSecuencia> |
    And Debería existir el dato correo en la habilitación de notificacion en la base de datos
    Examples:
      | pStrNombreUsuario | pStrImei | pStrModelo | pStrSistemaOperativo | pStrClave | pStrCanal | did | rsid | version | didbga | pStrKsBga | pIdUsuario  | pNotifXTarjeta | pMedio | pEmail | pStrMonto | opstatus | httpStatusCode | intCodError | lngNroSecuencia |
     ##@externaldata@./src/test/resources/datadriven/notificaciones/notificaciones_data.xlsx@notificaciones@2
   |119147   |null   |sdk_gphone_x86   |ANDROID   |1234   |1   |59806c2249cef7a3   |59806c2249cef7a3   |v2.4.52   |8dee8cb7119ed026   |8dee8cb7119ed026   |119147   |4   |3   |ibeth.morales@bg.com.bo   |0   |0   |200   |0   |0|
