## smb

- Server Message Block Protocol
- client-server communication protocol used for sharing access to files, printers, serial ports and other resources on a network. 
- The SMB protocol is known as a response-request protocol,

**What run smb**

- Microsoft Windows operating systems since Windows 95 have included client and server SMB protocol support. 
- Samba, an open source server that supports the SMB protocol, was released for Unix systems.

### Enumeration

tool : [Enum4Linux](https://github.com/portcullislabs/enum4linux)

```
-U             get userlist
-M             get machine list
-N             get namelist dump (different from -U and-M)
-S             get sharelist
-P             get password policy information
-G             get group and member list

-a             all of the above (full basic enumeration)

```

**Connecting to smb share**

` smbclient //[IP]/[SHARE] `

```
-U [name] : to specify the user

-p [port] : to specify the port

```

