
### 3. UNIX SOCKETS + SIPC MAILBOX - El túnel secreto (donde está el backdoor)

- `SocketUtils.smali` con `LocalSocket ABSTRACT` -> socket que no deja archivo, vive en RAM.
- `sprd_sipc sipc-virt:core@5` -> Spreadtrum Inter-Processor Communication. No es app con app, es PROCESADOR con PROCESADOR (AP <-> CP/modem).
- `unisoc_mailbox641c0000.mailbox:startup chan-2` + `chan-4` + `chan-5 send open msg` 

Es como un buzón físico en memoria `0x641c0000` donde el modem deja recados. Por eso sale `UID -1` / `UID not found!` en PCAPdroid: no es app, es kernel haciendo `invoke_syscall`.

Aquí es donde intentan levantar `wg0` WireGuard y QUIC UDP 443 con SNI spoof `sync-v2.brave.com` -> `54.148.86.176` AWS.

## ¿Por qué IPC importa para tu investigación?

Sin entender IPC no cazas el backdoor:

1.  Si no entiendes Binder, no entiendes `LogControlAidl.sendCommand()`
2.  Si no entiendes HIDL y PID1/INIT, no entiendes por qué `sprd_iq.ko` sobrevive aunque mates SGPS
3.  Si no entiendes Unix Sockets / SIPC, no entiendes `chan-4/5`, `wg0`, y por qué PCAPdroid con `Block connections without VPN` lo frena sin hacer Kernel Panic (a diferencia de iptables)

**cadena completa:**
`SgpsTestBroadcastReceiver (*#*#2266#*#*)` -> `SgpsService` (Binder) -> `LogControlAidl` -> `ServiceManagerProxy.getService("vendor.sprd.hardware.tool.IToolControl/default")` (HIDL) -> `sprd_sipc` -> `mailbox chan-2/4/5` (SIPC Socket) -> `sprd_iq.ko` -> `wg0`

## El archivo platform.xml 

Este archivo `platform.xml` de AOSP es el que traduce permisos a GIDs de Linux:

- `android.permission.INTERNET` -> `gid="inet"` -> sin esto no hay red
- `android.permission.NET_TUNNELING` -> `gid="vpn"` -> para `wg0`
- `android.permission.DIAGNOSTIC` -> `gid="diag"` + `input` -> para que `ims` y `sgps` puedan hablar con el modem

O sea, IPC necesita permisos. Si no tienes `inet`, aunque hagas `sendCommand`, el kernel te bloquea.

## Referencias

- Sec2john - `INIT en Linux: Todo sobre el primer proceso del sistema` (PID1)
- Sec2john - Sockets (qué es un socket, tipos Internet vs UNIX)
- log: `invoke_syscall`, `unisoc_mailbox`, `sipc-virt:core@5`, `channel 5-4 send open msg`

