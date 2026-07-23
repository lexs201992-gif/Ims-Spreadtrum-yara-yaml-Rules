rule Android_Unisoc_SupplyChain_Longcheer {
    meta:
        description = "Detecta la cadena de suministro comprometida en dispositivos Unisoc T606 (ODM Longcheer) con spoofing de parches y backdoors."
        author = "Alex de la cruz"
        date = "2026-07-23"
        severity = "Critical"
        cve = "CVE-2021-39658, CVE-2022-38694, CVE-2025-31718"
        platform = "Android"
        vendor = "Unisoc/Longcheer/Motorola"
        reference = "Motorola lion_g build analysis"

    strings:
        // --- IOCs Específicos Proporcionados ---
        $cert_longcheer = "22:85:26:b0:d1:ef:90:c3:b8:ed:56:8a:49:c3:71:4f:6a:39:50:6b" ascii wide
        $sha_ims_apk = "1b938cb3920d601a38e4d08e88c37aaacc56abfa6464f3054de2430172c6f519" ascii wide
        $lcd_trigger = "lcd_td4168" ascii wide
        $wireguard_kmod = "WireGuard 1.0.0 loaded" ascii wide

        // --- Componentes Unisoc/Spreadtrum Previos ---
        $lib_ims_name = "libismsEx.so" ascii
        $str_ims_interface = "IImsRadioResponse" ascii wide
        $ext_hal_convert = "convertToHalDataProfile" ascii wide
        $ext_data_profile = "DataProfileInfoExt" ascii wide
        $pkg_sgps = "com/spreadtrum/sgps" ascii wide
        
        // --- Estructuras ELF y DEX ---
        $elf_header = { 7F 45 4C 46 }
        $dex_header = { 64 65 78 0A 30 33 35 00 } // dex.035

    condition:
        // Lógica de Detección Mejorada:
        
        // 1. Coincidencia Definitiva: Certificado Longcheer + Hash del APK comprometido
        ( $cert_longcheer and $sha_ims_apk )
        
        or
        
        // 2. Coincidencia de Arquitectura Vulnerable: Librería IMS + Conversión HAL propietaria
        ( $elf_header at 0 and $lib_ims_name and $ext_hal_convert )
        
        or
        
        // 3. Coincidencia de Mecanismo de Activación: Trigger LCD + Módulo de Túnel (WireGuard)
        // Sugiere que el dispositivo tiene el parche de hardware y capacidades de túnel ocultas
        ( $lcd_trigger and $wireguard_kmod )
        
        or
        
        // 4. Coincidencia de Servicio GPS Vulnerable
        ( $dex_header at 0 and $pkg_sgps and $ext_data_profile )
}
