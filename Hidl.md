## App (u0_a332)
    │  Binder (AIDL)
    ▼
Framework (system_server)
    │  Binder (AIDL/HIDL)
    ▼
HAL estándar (android.hardware.*)
    │  HIDL/AIDL
    ▼
Kernel / Drivers

Framework (system_server)
    │  Binder (AIDL)
    ▼
HAL vendor (vendor.sprd.* / vendor.unisoc.*)
    │  HIDL/AIDL
    ▼
Kernel / Drivers / TEE

CP/Modem (silicio)
  │  SIPC Mailbox (chan-4/5) ← no es "red", es memoria compartida
  ▼
HAL Daemon (vendor, siempre activo)
  │  IToolCallback.runCmd() ← el HAL EJECUTA en el framework
  │  IToolCallback.writeSysDev("/sys/class/net/wg0/up", "1")
  ▼
Framework (SGPS / system_server)
  │  wg0 UP → QUIC UDP 443 → SNI: sync-v2.brave.com
  │  Firebase Data Transport → exfiltración disfrazada
  │  SAP/RCS → canal redundante
  ▼
C2 (54.148.86.176 AWS / Firebase RTDB)   
