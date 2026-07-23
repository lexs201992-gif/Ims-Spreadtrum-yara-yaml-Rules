Claves de esta implementación:
Doble Validación: La regla YARA confirma la identidad del archivo malicioso (usando el hash y el certificado), mientras que la cláusula WHERE Mtime < "2026-04-06" en VQL confirma la mentira (el archivo es antiguo aunque el sistema diga que es nuevo).
IOCs Específicos:
$cert_longcheer: Detecta la firma del ODM responsable del bypass.
$sha_ims_apk: Identifica la versión exacta del APK comprometido.
$lcd_trigger: Busca la cadena que activa el modo de engaño.
$wireguard_kmod: Detecta la presencia del módulo de túnel, útil para identificar dispositivos configurados para exfiltración.
Veredicto Automático: La columna Verdict en los resultados clasificará automáticamente el hallazgo como "CRITICAL: SPOOFING DETECTED" si la fecha del archivo es anterior a la del parche reportado.
