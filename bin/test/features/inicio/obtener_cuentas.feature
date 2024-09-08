#Autor: Daniel Amaya Marín

@obtenerCuentas
Feature: Flujo Inicio

  Como cliente del Banco
  quiero generar un cobro
  para cobrar

  @QR @auto-926 @smokTestObtenerCuentas @TestCaseKey=
  Scenario Outline: Usuario obtinene las cuentas
    Given Que "Daniel" inicio sesión en GanaMóvil Api
      | pStrNombreUsuario   | pStrImei   | pStrModelo   | pStrSistemaOperativo   | pStrClave   | pStrCanal   | did   | rsid   | version   | didbga   | pStrKsBga   |
      | <pStrNombreUsuario> | <pStrImei> | <pStrModelo> | <pStrSistemaOperativo> | <pStrClave> | <pStrCanal> | <did> | <rsid> | <version> | <didbga> | <pStrKsBga> |
    When Llama al endpoint obtener cuentas
      | serviceID   | pStrNombreUsuario   | pStrCanal   |
      | <serviceID> | <pStrNombreUsuario> | <pStrCanal> |
    Then Debería obtener datos el objeto
    Examples:
      | pStrNombreUsuario | pStrImei         | pStrModelo                | pStrSistemaOperativo | pStrClave | pStrCanal | did              | rsid             | version | didbga           | pStrKsBga        | serviceID                     | pStrNombreUsuario | pStrCanal |
      ##@externaldata@./src/test/resources/datadriven/inicio/inicio_data.xlsx@ObtenerCuentas@1
   |44970   |82db39b08d109ee1   |Android SDK built for x86   |ANDROID   |1234   |1   |59806c2249cef7a3   |59806c2249cef7a3   |v2.4.52   |59806c2249cef7a3   |59806c2249cef7a3   |GanaMovilWS$mtdObtenerCuentas   |44970   |1|


