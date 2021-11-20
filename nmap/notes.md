
## scan type

three main scan type :


1. TCP Connect Scans (-sT)
2. SYN "Half-open" Scans (-sS)
3. UDP Scans (-sU)

there are also less common scan type.


4. TCP Null Scans (-sN)
5. TCP FIN Scans (-sF)
6. TCP Xmas Scans (-sX)


**TCP Connect Scans**

- a TCP Connect scan works by performing the three-way handshake with each target port in turn. 

- Nmap sends a TCP request with the SYN flag set to a closed port, the target server will respond with a TCP packet with the RST (Reset) flag set. that how nmap figure out that port is closed.

- the request is sent to an open port, the target will respond with a TCP packet with the SYN/ACK flags set. Nmap then marks this port as being open (and completes the handshake by sending back a TCP packet with ACK set).

- Many firewalls are configured to simply drop incoming packets. Nmap sends a TCP SYN request, and receives nothing back. This indicates that the port is being protected by a firewall and thus the port is considered to be filtered.

```

note : firewall can be configure to respond with a RST TCP packet. This can make it extremely difficult (if not impossible) to get an accurate reading of the target(s).


```

***

**SYN "Half-open" Scans** (syn scan/ half open scan / stealth scan)

- Where TCP scans perform a full three-way handshake with the target, SYN scans sends back a RST TCP packet after receiving a SYN/ACK from the server

- this prevents the server from repeatedly trying to make the request

Advantages :

- bypass older IDS ( Not working with modern IDS)
- SYN scans are often not logged by applications listening on open ports, as standard practice is to log a connection once it's been fully established. 
- faster than `tcp connect scan`

Disadvantage :

- req `sudo` privileges
- Unstable services are sometimes brought down by SYN scans


```
By default run with nmap if used sudo privileges.If run without sudo permissions, Nmap defaults to the TCP Connect scan
```

- When using a SYN scan to identify closed and filtered ports, the exact same rules as with a TCP Connect scan apply. 


***

**UDP SCAN**

- UDP connection are stateless
- so it not use handshakes.
- it sending packets to a target port and essentially hoping that they make it
- that's why UDP significantly more difficult (and much slower) to scan.



Open/filter : When a packet is sent to an open UDP port, there should be no response, When this happens, Nmap refers to the port as being open|filtered

Opne : If it gets a UDP response (which is very unusual), then the port is marked as open.

Closed : When a packet is sent to a closed UDP port, the target should respond with an ICMP (ping) packet containing a message that the port is unreachable.

***

**Null, FIN, XMAS**

- Less commonaly used.
- all three scan and interlinked and stealthier.


- Null : when the TCP request is sent with no flags set at all. target is respond with RST if port is closed.

- FIN : request is sent with FIN flag.Nmap expects a RST if the port is closed.

`fin flag  indicates the end of data transmission to finish a TCP connection.`

- Xmas : send a malformed TCP packet and expects a RST response for closed ports. 


The expected response for open ports with these scans is also identical

If the port is open then there is no response to the malformed packet (Unfortunately that is also an expected behaviour if the port is protected by a firewall, )

so NULL, FIN and Xmas scans will only ever identify ports as being open|filtered, closed, or filtered.


If a port is identified as filtered with one of these scans then it is usually because the target has responded with an ICMP unreachable packet.

- gernearlly used for firewall evasion.

***
***
***

## ICMP Network scanning

**ping sweep**

Nmap sends an ICMP packet to each possible IP address for the specified network. When it receives a response, it marks the IP address that responded as being alive.

- we use `-sn` for ping sweep

`-sn` : tell nmap not to scan port , forcing it to rely on icmp echo packet ( or ARP requests on a local network, if run with sudo or directly as the root user) to identify live targets.

it also send TCP SYN packet to port 443 of the target, as well as a TCP ACK (or TCP SYN if not run as root) packet to port 80 of the target.



****
***
***

## NSE

- written in lua
- used to do a variety of things: from scanning for vulnerabilities, to automating exploits for them.

**categories**

```
safe:- Won't affect the target

intrusive:- Not safe: likely to affect the target

vuln:- Scan for vulnerabilities

exploit:- Attempt to exploit a vulnerability

auth:- Attempt to bypass authentication for runnservices (e.g. Log into an FTP server anonymously)

brute:- Attempt to bruteforce credentials for running services

discovery:- Attempt to query running services for further information about the network (e.g. query an SNMP server).

```

usage : --script=vuln, --script=safe, --script=discovery


- some scripts require arguments. this can be given by 

`--script-args` switch.

eg : `http-put` script take argument. url to upload file and file location on disk.

```
nmap -p 80 --script http-put --script-args http-put.url='/dav/shell.php',http-put.file='./shell.php'

```

**searching for scripts**

- two option for search a script

1. [nmap website](https://nmap.org/nsedoc/)

2. `/usr/share/nmap/scripts`

`/usr/share/nmap/scripts/script.db` file :  formatted text file containing filenames and categories for each available script.

eg : `ls /usr/share/nmap/scripts/*ftp*`


**installing new scripts**

```bash
sudo wget -O /usr/share/nmap/scripts/<script-name>.nse https://svn.nmap.org/nmap/scripts/<script-name>.nse

nmap --script-updatedb  //update script.db file

```


***
***
***

## Firewall evasion

`-Pn` didn't check if host is alive or not.

```
note : if you're already directly on the local network, Nmap can also use ARP requests to determine host activity. 

```

some usefull switches for firewall evasion.

`-f`:- Used to fragment the packets (i.e. split them into smaller pieces) making it less likely that the packets will be detected by a firewall or IDS.

`--scan-delay <time>ms`:- used to add a delay between packets sent. This is very useful if the network is unstable, but also for evading any time-based firewall/IDS triggers which may be in place.


`--badsum`:- this is used to generate in invalid checksum for packets. Any real TCP/IP stack would drop this packet, however, firewalls may potentially respond automatically, without bothering to check the checksum of the packet. As such, this switch can be used to determine the presence of a firewall/IDS.