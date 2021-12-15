we focus on port scanning and the different types of port scans used by `nmap`

TCP port or UDP port is used to identify a network service running on that host.A port is usually linked to a service using that specific port number.  eg port 22 used by ssh service.

Nmap consider six states for ports :

1. open : indicates that a service is listening on the specified port.
2. Closed : indicates that no service is listening on the specified port, although the port is accessible. By accessible, we mean that it is reachable and is not blocked by a firewall or other security appliances/programs.
3. Filtered: means that Nmap cannot determine if the port is open or closed because the port is not accessible. This state is usually due to a firewall 
4. Unfiltered: means that Nmap cannot determine if the port is open or closed, although the port is accessible. This state is encountered when using an ACK scan `-sA`.
5. Open|Filtered: This means that Nmap cannot determine whether the port is open or filtered.
6. Closed|Filtered: This means that Nmap cannot decide whether a port is closed or filtered.

***

## TCP Header (flags)

- The TCP header is the first 24 bytes of a TCP segment. (defined by `RFC 793`)

![tcp header](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/79ca8e4acbd573a27cee413cde927769.png)

we can see that port number allocated first 16 bits (2 bytes). sequence number is allocated 32 bits(4 bytes). Each row has 32 bits (4 bytes) allocated, with six rows total, making up 24 bytes.

while scanning nmap can set or unset flags. (highlight in red).Setting a flag bit means setting its value to 1

1. URG :  indicates that the urgent pointer filed is significant. The urgent pointer indicates that the incoming data is urgent,and that a TCP segment with the URG flag set is processed immediately without consideration of having to wait on previously sent TCP segments.

2. ACK : It is used to acknowledge the receipt of a TCP segment.its also indicates that the acknowledgement number is significant

3. PSH : Push flag asking TCP to pass the data to the application promptly.

4. RST : Reset the connection.

5. syc : initiate tcp 3 way handshake and synchronize sequence numbers with the other host.

6.  The sender has no more data to send.


## TCP CONNECT SCAN

- nmap complete three-way handshake and lastly send `RST,ACK`  flag.
![rst](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/514972cd54b3f58c83f951978ea9183e.png)

- if you are not privileged user TCP connect scan is the only possible option to discover open TCP ports.

`nmap -sT target`

## TCP SYN SCAN

- default scan mode, and it requires a privileged access.
- it does not complete three-way handshake

![img](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/48e631fd3deba4a2b759ca48405fcc08.png)

`nmap -sS target`


## UDP SCAN

- UDP is a connectionless protocol, and hence it does not require any handshake for connection establishment.
- if we send packets to open ports it does not respond but if we send packets to closed port, an ICMP port unreachable error is returned.

![open](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/085088cd1b2b122312b1ee952c4aa0f7.png)

![closed](https://tryhackme-images.s3.amazonaws.com/user-uploads/5f04259cf9bf5b57aed2c476/room-content/8b8b32517699b96777641a97dbf9d880.png)

`nmap -sU target`

## find tunning scope and performance

`-p 22,80` : only scan port 22 and 80.
`-p1-1000` : only scan port between 1 to 1000.
`-T<0-5>` : control scan timing. `-T0` is slowest and `-T5 ` is fastest. there are total six option. `paranoid(0)` `sneaky(1)` `polite(2)` `normal(3)` `aggressive(4)` `insane(5)`
nmap normally uses `-T3`. if you want to evade IDS you might consider `-T0`.it scan one port and wait for 5 mintues to scan next port.
`--min-rate <number>` and `--max-rate <number>`: ensures that your scanner is not sending more than describe number of packets per second.

***

## Summary

| Port Scan Type |	Example Command|
|----------------|-----------------|
|TCP Connect Scan |	nmap -sT 10.10.92.4|
|TCP SYN Scan 	|sudo nmap -sS 10.10.92.4|
|UDP Scan |	sudo nmap -sU 10.10.92.4|

