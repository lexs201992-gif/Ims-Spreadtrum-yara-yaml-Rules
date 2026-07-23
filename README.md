# Ims-Spreadtrum-yara-yaml-Rules
Analisis and yara/yaml rules for detection of Ims spreadtrum spyware
**Fecha:** 23 de julio de 2026
**Dispositivo Objetivo:** Motorola Moto G04s / G24 / E24 (Codename: `lion`)
**Chipset:** Unisoc T606 / T616
**ODM:** Longcheer
**Nivel de Riesgo:** **CRÍTICO** (CVSS 9.0 - 9.8)
*investigador*: Alex de la cruz Mexico city 2026

---

## 1. Resumen Ejecutivo

El análisis forense de los archivos Smali (`ImsRadioServiceProxy`, `DaggerTransportRuntimeComponent`, `RemoteActionCompatParcelizer`) y propiedades del sistema (`build.prop`) en dispositivos con chipset **Unisoc T606** revela una **arquitectura de compromiso sistémico**. No se trata de vulnerabilidades aisladas, sino de una infraestructura de cadena de suministro diseñada para **falsificar el estado de seguridad** mientras mantiene activos vectores de ataque remotos.

La evidencia confirma que los mecanismos de comunicación interna (`Parcel`, `HIDL/AIDL`) y los servicios de transporte de datos (`Firebase Data Transport`) están siendo utilizados para enmascarar la presencia de binarios vulnerables y facilitar la exfiltración de datos bajo la apariencia de telemetría legítima.

---

## 2. Hallazgos Técnicos Detallados

### 2.1. Falsificación de Parches de Seguridad (Security Patch Spoofing)
*   **Evidencia:** Discrepancia crítica entre `ro.build.version.security_patch` (reportado como 2026-04-06) y las fechas de compilación reales de los binarios del proveedor (`ro.odm_dlkm.build.date` = Marzo 2026).
*   **Mecanismo:** Un blob de aprovisionamiento (`fscrypt`), activado por el ID de panel LCD `lcd_td4168` y firmado con la clave propietaria `56ef134d...`, inyecta propiedades falsas en tiempo de arranque.
*   **Impacto:** Los sistemas MDM (Mobile Device Management) y aplicaciones bancarias marcan el dispositivo como "Cumplido" (Compliant), permitiendo el acceso a redes corporativas y financieras desde un dispositivo inherentemente inseguro.
*   **Binarios Afectados:** `libismsEx.so`, `com.spreadtrum.sgps`.

### 2.2. Vulnerabilidades Críticas en la Pila IMS y RIL
El análisis de las clases `ImsRadioServiceProxy` y `IImsRadioResponse` expone la superficie de ataque directa:

*   **CVE-2025-31718 (RCE en Módem):** Validación incorrecta de entradas en el módem. Permite a un atacante remoto provocar caídas del sistema o ejecutar código arbitrario mediante paquetes malformados enviados a la red celular.
    *   *Relación con Smali:* Los métodos `dial`, `setupImsDataCall` y `sendSipMessage` procesan datos de red sin la debida sanitización en la capa HIDL propietaria.
*   **CVE-2021-39658 (Fuga en ismsEx):** El servicio `ismsEx` (gestor de SIM/IMS) carece de validación de permisos adecuada. Cualquier aplicación con permiso básico puede invocar métodos privilegiados de telefonía.
*   **CVE-2022-38694 (BootROM Inexorable):** Vulnerabilidad de escritura sin verificación en la ROM de arranque. Es **imposible de parchear por software**. Permite escalada de privilegios local persistente y es la raíz que permite que el bypass de `fscrypt` funcione.

### 2.3. Riesgos en la Serialización (Parcel/HIDL)
*   **Inconsistencia de Serialización:** La clase `ImsRadioServiceProxy` actúa como un puente dual (HIDL/AIDL). La conversión de estructuras complejas (`NetworkSliceInfo`, `TrafficDescriptor`) mediante métodos como `convertToHalDataProfile` es propensa a errores de desbordamiento de búfer o corrupción de memoria si el RIL y el Framework no están perfectamente sincronizados.
*   **Ataques de Deserialización:** Al igual que en vulnerabilidades históricas (CVE-2023-20963), un atacante podría enviar un `Parcel` malicioso a través de la interfaz `IImsRadio` que, al ser deserializado por el sistema, altere la lógica de control de llamadas o permita la inyección de código.

### 2.4. Telemetría y Exfiltración Encubierta
*   **Uso de `Firebase Data Transport`:** Las clases `DaggerTransportRuntimeComponent` y `EventStore` gestionan la cola de envío de datos. En este contexto comprometido, pueden ser utilizadas para exfiltrar datos sensibles (logs de llamadas, ubicación GPS de `SGPS`) disfrazados de telemetría de Crashlytics o Analytics.
*   **Persistencia en Modo Avión:** La capacidad de mantener WiFi activo y túneles VPN (como se observó con PCAPdroid) mientras el módem celular está "apagado" sugiere que la pila de red WiFi opera independientemente del estado de seguridad del módem, permitiendo canales de comunicación C2 (Comando y Control) incluso cuando el usuario cree estar aislado.

---

## 3. Matriz de Amenazas y Consecuencias

| Componente | Vulnerabilidad / Riesgo | Consecuencia Potencial |
| :--- | :--- | :--- |
| **BootROM (Unisoc)** | CVE-2022-38694 | Acceso root persistente, imposible de eliminar con actualizaciones OTA. |
| **Módem / RIL** | CVE-2025-31718 | Ejecución Remota de Código (RCE) vía red celular, interceptación de llamadas/SMS. |
| **Servicios IMS** | CVE-2021-39658 | Fuga de información de identidad (IMSI/IMEI), manipulación de llamadas VoLTE. |
| **Sistema de Archivos** | Bypass `fscrypt` | Lectura/escritura en particiones protegidas, desactivación de SELinux/FSVerity. |
| **Telemetría** | `DataTransport` | Exfiltración silenciosa de datos bajo tráfico legítimo de Google/Firebase. |
| **Cadena de Suministro** | Spoofing de Parches | Evasión de controles de seguridad corporativos y bancarios (MDM Bypass). |

---

## 4. Evidencia de Compromiso Intencional

La investigación identifica patrones que sugieren una implementación deliberada más que un error accidental:
1.  **Trigger por Hardware:** El bypass de seguridad solo se activa con componentes específicos (Panel LCD `td4168`), indicando un interruptor de fabricación.
2.  **Firma Digital:** El blob malicioso está firmado con claves privadas del ODM (Longcheer), lo que implica aprobación interna.
3.  **Incapacidad de Remediación:** Las actualizaciones OTA mantienen el mecanismo de spoofing mientras actualizan solo la cadena de versión, dejando los binarios vulnerables intactos.

---

## 5. Recomendaciones de Mitigación

Dado que la vulnerabilidad raíz reside en el hardware (BootROM) y en la cadena de suministro del firmware:

1.  **Cuarentena Inmediata:** Prohibir el uso de dispositivos con chipset **Unisoc T606/T616** (específicamente modelos Motorola `lion`, `g24`, `e24`) en entornos corporativos, gubernamentales o para acceso a banca móvil.
2.  **Verificación Forense:** No confiar en `getprop ro.build.version.security_patch`. Verificar las marcas de tiempo de los binarios críticos:
    ```bash
    adb shell ls -l /system/lib64/libismsEx.so
    adb shell dumpsys package com.spreadtrum.sgps | grep versionCode
    ```
    Si las fechas son anteriores al parche reportado, el dispositivo está comprometido.
3.  **Sustitución de Hardware:** Reemplazar los dispositivos afectados por modelos con chipsets de proveedores con historial de transparencia y parches verificables (ej. Qualcomm, MediaTek de gama media/alta).
4.  **Monitoreo de Red:** Bloquear en el firewall corporativo cualquier conexión proveniente de estos dispositivos que no sea estrictamente necesaria, prestando atención a tráfico inusual hacia dominios de telemetría no estándar o puertos altos.

---

## 6. Conclusión

Los archivos Smali analizados no son meros componentes funcionales; son las piezas de un **sistema de engaño de seguridad**. La sofisticada interacción entre el RIL de Unisoc, el framework de transporte de datos de Google y el bypass de arranque de Longcheer crea un entorno donde el dispositivo miente activamente sobre su estado de seguridad.

**Veredicto:** El dispositivo es **inseguro por diseño** en su configuración actual. No existe parche de software que pueda garantizar la integridad de la cadena de arranque o la seguridad del módem en esta arquitectura específica.
