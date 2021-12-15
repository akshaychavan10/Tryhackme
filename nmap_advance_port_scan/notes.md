## Introduction

 We will cover the following types of port scans:

- Null Scan
- FIN Scan
- Xmas Scan

- Maimon Scan

- ACK Scan
- Window Scan
- Custom Scan

Moreover, we will cover the following:

- Spoofing IP
- Spoofing MAC
- Decoy Scan

- Fragmented Packets

- Idle/Zombie Scan

![flag](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/23540a5fcd27454892a73ac051d29664.png)

We are going to use different flags in different scan methods

## TCP Null Scan, FIN Scan, and Xmas Scan 

### NULL SCAN 

null scan does not set any flag.all six flag bits are set to zero. 

**Open port** :  A TCP packet with no flags set will not trigger any response when it reaches an open port.
**closed port** : if port is closed target respond with an RST packet.

required root options.

`sudo nmap -sN target`

### FIN SCAN

- send tcp packet with fin flag set.

**Open port** :  A TCP packet with `FIN` flags set will not trigger any response when it reaches an open port.
**closed port** : if port is closed target respond with an RST packet.

`sudo nmap -sF target`

### Xmas Scan

-An Xmas scan sets the FIN, PSH, and URG flags simultaneously.

**Open port** :  open port will not trigger any response when it reaches an open port.
**closed port** : if port is closed target respond with an RST packet.

`sudo nmap -sX target`


- these three scan types can be efficient is when scanning a target behind a stateless (non-stateful) firewall.
- A stateless firewall will check if the incoming packet has the SYN flag set to detect a connection attempt.
- However, a stateful firewall will practically block all such crafted packets and render this kind of scan useless.


## TCP Maimon Scan 

In this scan, the FIN and ACK bits are set. 

![mainmon](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/8ca5e5e0f6e0a1843cebe11b5b0785b3.png)

This scan won’t work on most targets encountered in modern networks;

`nmap -sM target`

## TCP ACK, Window, and Custom Scan 

### TCP ACK Scan

- send a TCP packet with the ACK flag set.
-  the target would respond to the ACK with RST regardless the port is opon or closed. this is happen happens because a TCP packet with the ACK flag set should be sent only in response to a received TCP packet to acknowledge the receipt of some data.
- this scan is used to find out firewall rules and configuration.
-  based on which ACK packets resulted in responses, you will learn which ports were not blocked by the firewall. I

`sudo nmap -sA target`

### Window Scan

- it send `ACK` packet to target and examines the TCP Window field of the RST packets returned. 
- target respond with `RST` packet no matter port is open or closed.
- but sometimes if they are behind the firewall they respond differently.
- On specific systems, this can reveal that the port is open. 

`sudo nmap -sW target`

### Custom Scan

- you can send custome flags to target.

`nmap -scanflags Custome_flag target`
`nmap -scanflags RSTSYNFIN 127.0.0.1`


***

## Spoofing and Decoys 

- in some network setup you can  scan a target system using a spoofed IP address or spoofed MAC address.
- It is only beneficial in a situation where you can guarantee to capture the response.
- If you try to scan a target from some random network using a spoofed IP address, chances are you won’t have any response routed to you

- Nmap will craft all the packets using the provided source IP address `SPOOFED_IP`.
- The target machine will respond to the incoming packets sending the replies to the destination IP address `SPOOFED_IP`.

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/45b982d501fd26deb2b381059b16f80c.png)


1. Attacker sends a packet with a spoofed source IP address to the target machine.
2. Target machine replies to the spoofed IP address as the destination.
3. Attacker captures the replies to figure out open ports.

- In general, you expect to specify the network interface using `-e` and to explicitly disable ping scan `-Pn`.

- *this scan will be useless if the attacker system cannot monitor the network for responses.*

- If you are same subnet of target you can spoof mac address also.
- use option `--spoof-mac SPOOFED_MAC`.
- This address spoofing is only possible if the attacker and the target machine are on the same Ethernet (802.3) network or same WiFi (802.11).

`nmap -e NET_INTERFACE -Pn -S SPOOFED_IP target`.


### Decoys

- make the scan appears to be coming from many IP addresses so that the attacker’s IP address would be lost among them.

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/754fc455556a424ca83f512665beaf7d.png)

`nmap -D 10.10.0.1,10.10.0.2,RND,RND,ME 10.10.114.32`

`-D` : use decoy options
`RND` :  use random ip address at 3r and 4th order.
`ME` : attacker ip address. 


## Fragmented packets

- its used in firewall and ids evasion. Nmap provides the option -f to fragment packets. Once chosen, the IP data will be divided into 8 bytes or less.  
- Adding another -f (-f -f or -ff) will split the data into 16 byte-fragments instead of 8. 
- You can change the default value by using the --mtu; however, you should always choose a multiple of 8.

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/765dcc4ff8892474a953830a40971421.png)


The data that we will fragment across multiple packets is highlighted in red. 

lets check the both `syn` scan and fragmented `syn` scan

**syn scan**

`sudo nmap -sS -p80 10.20.30.144` :

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/b218f063a77b8b9867cc8e8f409224b4.png)

**fragmented scan**

`sudo nmap -sS -p80 -f 10.20.30.144`

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/953fd599d2afaa8efb36923b02707d2b.png)


##  Idle/Zombie Scan 

- The idle scan, or zombie scan, requires an idle system connected to the network that you can communicate with. 

- Nmap will make each probe appear as if coming from the idle (zombie) host, then it will check for indicators whether the idle (zombie) host received any response to the spoofed probe

- This is accomplished by checking the IP identification (IP ID) value in the IP header. 

1. Trigger the idle host to respond so that you can record the current IP ID on the idle host.

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/a93e181f0effe000554a8b307448bbb2.png)

2. Send a SYN packet to a TCP port on the target. The packet should be spoofed to appear as if it was coming from the idle host (zombie) IP address.

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/8e28bf940936ddbc2367b193ea3550b8.png)

3. Trigger the idle machine again to respond so that you can compare the new IP ID with the one received earlier. 

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/2b0de492e2154a30760852e07cebae0e.png)

`nmap -sI ZOMBIE_IP target_ip`

## Getting More Details 

Nmap to provide more details regarding its reasoning and conclusions if we add `--reason`

- providing this flag gives us the explicit reason why Nmap concluded that the system is up or a particular port is open. 


`-vv` : verbosity

`-dd` : debugging


***

## summary


cheatsheet type of scan:

|Port Scan Type |	Example Command|
|---------------|------------------|
|TCP Null Scan |	sudo nmap -sN 10.10.14.247|
|TCP FIN Scan |	sudo nmap -sF 10.10.14.247|
|TCP Xmas Scan |	sudo nmap -sX 10.10.14.247|
|TCP Maimon Scan |	sudo nmap -sM 10.10.14.247|
|TCP ACK Scan |	sudo nmap -sA 10.10.14.247|
|TCP Window Scan |	sudo nmap -sW 10.10.14.247|
|Custom TCP Scan |	sudo nmap --scanflags URGACKPSHRSTSYNFIN 10.10.14.247|
|Spoofed Source IP| 	sudo nmap -S SPOOFED_IP 10.10.14.247|
|Spoofed MAC Address |	--spoof-mac SPOOFED_MAC|
|Decoy Scan 	|nmap -D DECOY_IP,ME 10.10.14.247|
|Idle (Zombie) Scan |	sudo nmap -sI ZOMBIE_IP 10.10.14.247|
|Fragment IP data into 8 bytes |	-f|
|Fragment IP data into 16 bytes |	-ff|


|Option | Purpose |
|--------|--------|
| `--source-port PORT_NUM` | specify source port number |
| `--data-length NUM` | append random data to reach given length |
| --reason 	| explains how Nmap made its conclusion|
|-v | 	verbose|
|-vv |	very verbose|
|-d |	debugging|
|-dd |	more details for debugging|
