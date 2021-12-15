## Topology

### Ring topology

- Devices such as computers are connected directly to each other to form a loop, meaning that there is little cabling required and less dependence on dedicated hardware

- A ring topology works by sending data across the loop until it reaches the destined device, using other devices along the loop to forward the data.

- easy to troubleshoot

- if device goes down or cable cuts then data can not travel.

https://assets.tryhackme.com/additional/networking-fundamentals/intro-to-lan/ring.png


### Bus topology

connection relies upon a single connection which is known as a backbone cable.

- data is sent both left and right direction in backbone until the packet destination is reached.

- it can't handle large amount of data.

https://assets.tryhackme.com/additional/networking-fundamentals/intro-to-lan/bus.png

### Star topology

- in star topology all devices connected with thier own cable to central switch or hub.

- every packet is sent throw this switch, which means if switch goes down the network will no longer work

- expensive 

- easy to add more devices as the demand for the network increases.

### What is switch

- Switches are dedicated devices within a network that are designed to aggregate multiple other devices such as computers, printers, or any other networking-capable device using ethernet. 

- Switches can connect a large number of devices by having ports of 4, 8, 16, 24, 32, and 64 for devices to plug into.

- switches are efficient than hubs/repeater becuase Switches keep track of what device is connected to which port. This way, when they receive a packet, instead of repeating that packet to every port like a hub would do, it just sends it to the intended target, thus reducing network traffic.

https://assets.tryhackme.com/additional/networking-fundamentals/intro-to-lan/switches.png


### What is router

- It's a router's job to connect networks and pass data between them. It does this by using routing

- Routing is the label given to the process of data travelling across networks. Routing involves creating a path between networks so that this data can be successfully delivered.

***

## Subnetting

subnetting is the term given to splitting up a network into smaller, miniature networks within itself.

https://assets.tryhackme.com/additional/networking-fundamentals/intro-to-lan/subnet1.png

**Subnet mask**

A subnet mask is used to divide an IP address into two parts. One part identifies the host (computer), the other part identifies the network to which it belongs.

**Default gateway**

The default gateway address is a special address assigned to a device on the network that is capable of sending information to another network .

Any data that needs to go to a device that isn't on the same network will be sent to this device. These devices can use any host address but usually use either the first or last host address in a network (.1 or .254)


**Benefits of subnneting**


- Efficiency
- Security
- Full control


***

## ARP protocol

- Address Resolution Protocol

- devices can have two identifiers: A MAC address and an IP address. ARP used to associat ip address with mac address.

**How ARP works**

1. ARP Request
2. ARP Reply

When an `ARP request` is sent, a message is broadcasted to every other device found on a network by the device, asking whether or not the device's MAC address matches the requested IP address.

If the device does have the requested IP address, an `ARP reply` is returned to the initial device to acknowledge this. 

The initial device will now remember this and store it within its cache (an ARP entry). 

https://tryhackme-images.s3.amazonaws.com/user-uploads/5de96d9ca744773ea7ef8c00/room-content/b27c024d90342c60dd5cb35765e7ed7b.png

***

## DHCP protocols

IP addresses can be assigned either manually, by entering them physically into a device, or automatically and most commonly by using a DHCP server.

1. When a device connects to a network, if it has not already been manually assigned an IP address, it sends out a request (DHCP Discover) to see if any DHCP servers are on the network.

2. The DHCP server then replies back with an IP address the device could use (DHCP Offer). 

3. The device then sends a reply confirming it wants the offered IP Address (DHCP Request),

4.  the DHCP server sends a reply acknowledging this has been completed, and the device can start using the IP Address (DHCP ACK).

https://assets.tryhackme.com/additional/networking-fundamentals/intro-to-networking/what-is-a-network/DHCP.png

