## the osi model.

|osi|
|---|
|application|
|presentation|
|session|
|transport|
|network|
|data link|
|physical|

***

**Application**

- This layer provides networking options to programs running on a computer.

**Presentation**

- data tends to be in a format that the application understands
- The presentation layer translates the data into a standardised format, as well as handling any encryption, compression or other transformations to the data

**session**

- the job of the session layer to maintain it, as well as co-operate with the session layer of the remote computer in order to synchronise communications. 

**Transport**

- Its first purpose is to choose the protocol over which the data is to be transmitted.
- TCP or UDP
- With a protocol selected, the transport layer then divides the transmission up into bite-sized pieces
- For TCP: segments. UDP:datagrams

**Network**

- The network layer is responsible for locating the destination of your request. 

**Data Link**

- The data link layer focuses on the physical addressing of the transmission.
- it receive data from network layer then it add mac address to this data.
- Inside every network enabled computer is a Network Interface Card (NIC) which comes with a unique MAC (Media Access Control) address to identify it. 

- it's also the job of the data link layer to present the data in a format suitable for transmission.

- checks the received information to make sure that it hasn't been corrupted during transmission


**Physical**

- convert the binary data of the transmission into signals and transmit them across the network, as well as receiving incoming signals and converting them back into binary data.


***

## Encapsulation

![img](https://muirlandoracle.co.uk/wp-content/uploads/2020/02/image.jpeg)

As the data is passed down each layer of the model, more information containing details specific to the layer in question is added on to the start of the transmission. 

for eg. in network layer source and destination ip address is added. in data link layer mac address is added.etc.

This whole process is referred to as encapsulation; the process by which data can be sent from one computer to another.


**De-capsulation**

When the message is received by the second computer, it reverses the process -- starting at the physical layer and working up until it reaches the application layer, stripping off the added information as it goes. This is referred to as de-encapsulation.

***
***
***

## TCP/IP Model

|tcp/ip|
|------|
|application|
|transport|
|internet|
|network interface|


- The processes of encapsulation and de-encapsulation work in exactly the same way with the TCP/IP model as they do with the OSI model. At each layer of the TCP/IP model a header is added during encapsulation, and removed during de-encapsulation.

- osi model is not used in real world.


- TCP/IP takes its name from the two most important of these: the Transmission Control Protocol (which we touched upon earlier in the OSI model) that controls the flow of data between two endpoints, and the Internet Protocol, which controls how packets are addressed and sent.

-  TCP is a connection-based protocol. In other words, before you send any data via TCP, you must first form a stable connection between the two computers. The process of forming this connection is called the three-way handshake. 

![img](https://muirlandoracle.co.uk/wp-content/uploads/2020/03/image-2.png)

***

## Ping

- The ping command is used when we want to test whether a connection to a remote resource is possible. 

- work using ICMP protocol (the ICMP protocol worked on network layer of osi model)

***

## Traceroute

- Traceroute can be used to map the path your request takes as it heads to the target machine.

-  it allows you to see every intermediate step between your computer and the resource that you requested. 

- windows `tracert` operate on ICMP . linux `traceroute` operate on UDP.

***

## WHOIS

- Whois essentially allows you to query who a domain name is registered to.

- Web version tool : https://www.whois.com/whois/

***

## Dig 

- Dig allows us to manually query recursive DNS servers of our choice for information about domains:

 `dig <domain> @<dns-server-ip>`

***

DNS

1. You make request to website 

2. computer check its local cache if found ip then it stop otherwise it proceed.  

3. if it does not find in local cache req is send to `resolver server`. many ISP maintain their own resolver server as well as google and opendns also have their resolver server.

resolver check their cache memory for ip adddress if not found send to :

4. root servers 

top or the root of dns hierarchy.
13 set of root servers.

root server does not know the ip address but it know where to send `resolver server` to find ip adddres.

it redirected `resolver server` to TLD.

5. TLD (Top Level Domain)

- store info for top-level domain. eg : .com .net .org etc.

- it also does not know the ip adddress. it redirect the `resolver server` to `Authoritive name server`

6. Authorative name server.

it has record for every domain.

