# Red Team Recon

two types
1. passive recon 
2. active recon
	1. External recon : done by outside the target network(nikto scan)
	2. Internal recon : penester get into physical building of target and done some type of recon.


## Built in tools

### whois

- Before we start using the `whois` tool, let's look at WHOIS. 
- WHOIS is a request and response protocol that follows the RFC 3912 specification. 
- A WHOIS server listens on TCP port 43 for incoming requests
- The domain registrar is responsible for maintaining the WHOIS records for the domain names it is leasing
- `whois` will query the WHOIS server to provide all saved records. 

### dig

- Domain Information Groper
- we can specify a different DNS server to use.`dig @1.1.1.1 tryhackme.com`

### nslookup

- executed dns queries.

### host

- querying DNS servers for DNS records.

### traceroute / tracert

- it traces the route taken by the packets from our system to the target host. 

-  It's worth stressing that some routers don’t respond to the packets sent by traceroute, and as a result, we don’t see their IP addresses; a `*` is used to indicate such a case.

```
           
pentester@TryHackMe$ traceroute cafe.thmredteam.com
traceroute to cafe.thmredteam.com (172.67.212.249), 30 hops max, 60 byte packets
 1  _gateway (192.168.0.1)  3.535 ms  3.450 ms  3.398 ms
 2  * * *
 3  * * *
 4  * * *
 5  * * *
 6  * * *
 7  172.16.79.229 (172.16.79.229)  4.663 ms  6.417 ms  6.347 ms
 8  * * *
 9  172.16.49.1 (172.16.49.1)  6.688 ms 172.16.48.1 (172.16.48.1)  6.671 ms 172.16.49.1 (172.16.49.1)  6.651 ms
10  213.242.116.233 (213.242.116.233)  96.769 ms 81.52.187.243 (81.52.187.243)  96.634 ms  96.614 ms
11  bundle-ether302.pastr4.paris.opentransit.net (193.251.131.116)  96.592 ms  96.689 ms  96.671 ms
12  193.251.133.251 (193.251.133.251)  96.679 ms  96.660 ms  72.465 ms
13  193.251.150.10 (193.251.150.10)  72.392 ms 172.67.212.249 (172.67.212.249)  91.378 ms  91.306 ms

```

In summary, we can always rely on:

    whois to query the WHOIS database
    nslookup, dig, or host to query DNS servers

***

## Advanced search

(add it in dork)

| Symbol / Syntax |	Function|
|-----------------|---------|
| "search phrase" |	Find results with exact search phrase|
| OSINT filetype:pdf |	Find files of type PDF related to a certain term.|
| salary site:blog.tryhackme.com |	Limit search results to a specific site.|
| pentest -site:example.com |	Exclude a specific site from results|
| walkthrough intitle:TryHackMe |	Find pages with a specific term in the page title.|
| challenge inurl:tryhackme |	Find pages with a specific term in the page URL.|

dorks to find vulns : [linl](https://www.exploit-db.com/google-hacking-database)

YOu can also get info about what tech used by org by visiting job board and social media sites.

## Recon-ng

framework that helps automate the OSINT work. 

- All the data collected is automatically saved in the database related to your workspace.(you might discover host addresses to later port-scan or collect contact email addresses for phishing attacks.)
- start recon-ng by typing `recon-ng`

**Create workspace**

`workspaces create WORKSPACE_NAME`

**Marketplace**

`marketplace search KEYWORD` : to search for available modules with keyword.
`marketplace info MODULE` : to provide information about the module in question.
`marketplace install MODULE` : to install the specified module into Recon-ng.
`marketplace remove MODULE` : to uninstall the specified module.


- The modules are grouped under multiple categories (discovery, import, recon and reporting. )

- `Run marketplace search` to get a list of all available modules.

**Working with installed modules**

`modules search` to get a list of all the installed modules
`modules load MODULE` to load a specific module to memory

- To run it, we need to set the required options.


`options list` to list the options that we can set for the loaded module.
`options set <option> <value>` to set the value of the option.


**keys**

- Some modules cannot be used without a key for the respective service API.


`keys list` lists the keys
`keys add KEY_NAME KEY_VALUE` adds a key
`keys remove KEY_NAME` removes a key


***

## maltego

