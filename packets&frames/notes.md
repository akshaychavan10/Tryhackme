Packets and frames are small pieces of data that, when forming together, make a larger piece of information or message. but this two are diferent in osi model. 

frame belongs to layer 2 - data link layer model.

A packet have a set of headers that contain additional pieces of information to the data that is being sent across a network.



| Header|	Description|
|-------|--------------|
|Source Port|	This value is the port opened by the sender to send the TCP packet from. This value is chosen randomly (out of the ports from 0-65535 that aren't already in use at the time).|
|Destination Port	|This value is the port number that an application or service is running on the remote host (the one receiving data); for example, a webserver running on port 80. Unlike the source port, this value is not chosen at random.|
|Source IP	|This is the IP address of the device that is sending the packet.|
|Destination IP|	This is the IP address of the device that the packet is destined for.|
|Sequence Number|	When a connection occurs, the first piece of data transmitted is given a random number. We'll explain this more in-depth further on.|
|Acknowledgement Number|	After a piece of data has been given a sequence number, the number for the next piece of data will have the sequence number + 1. We'll also explain this more in-depth further on.|
|Checksum|	This value is what gives TCP integrity. A mathematical calculation is made where the output is remembered. When the receiving device performs the mathematical calculation, the data must be corrupt if the output is different from what was sent.|
|Data	|This header is where the data, i.e. bytes of a file that is being transmitted, is stored.||
|Flag|	This header determines how the packet should be handled by either device during the handshake process. Specific flags will determine specific behaviours, which is what we'll come on to explain below.|