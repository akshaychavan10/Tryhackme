## Overview

[img](https://assets.tryhackme.com/additional/wireshark101/5.png)

- Packet Number
- Time
- Source
- Destination
- Protocol
- Length
- Packet Info

**Color Codes**

![img](https://assets.tryhackme.com/additional/wireshark101/6.png)

## Filters

### operators

```language

and - operator: and / &&
or - operator: or / ||
equals - operator: eq / ==
not equal - operator: ne / !=
greater than - operator: gt /  >
less than - operator: lt / <

```

### basic filter

[docs](https://wiki.wireshark.org/DisplayFilters)

![cheetsheet](https://cdn.comparitech.com/wp-content/uploads/2019/06/Wireshark-Cheat-Sheet-1.jpg)


## Packet Dissection

- osi model

![img](https://assets.tryhackme.com/additional/wireshark101/12.png)

- Packets consist of 5 to 7 layers based on the OSI model.
![img](https://assets.tryhackme.com/additional/wireshark101/13.png)

Frame (Layer 1) -- This will show you what frame / packet you are looking at as well as details specific to the Physical layer of the OSI model.

Source \[mac\] (Layer 2) -- This will show you the source and destination MAC Addresses; from the Data Link layer of the OSI model.

Source \[IP\] (Layer 3) -- This will show you the source and destination IPv4 Addresses; from the Network layer of the OSI model.

Protocol (Layer 4) -- This will show you details of the protocol used (UDP/TCP) along with source and destination ports; from the Transport layer of the OSI model.

Protocol Errors -- This is a continuation of the 4th layer showing specific segments from TCP that needed to be reassembled.

![img](https://assets.tryhackme.com/additional/wireshark101/18.png)

Application Protocol (Layer 5) -- This will show details specific to the protocol being used such HTTP, FTP, SMB, etc. From the Application layer of the OSI model.

Application Data -- This is an extension of layer 5 that can show the application-specific data.


***

https trafic is encrypted to view https data you need to load an RSA key. navigate to `Edit > Preferences > Protocols > TLS >  [+] .` 

add 

```
IP Address: 127.0.0.1

Port: start_tls

Protocol: http

Keyfile: RSA key location

```

