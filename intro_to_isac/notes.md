- Information Sharing and Analysis Centers (ISAC)
- ISAC used to share and exchange various Indicators of Compromise(IOC)
- IOCs can include MD5s, IPs, YARA rules, and more.

## What is Threat Intelligence 

- It is used to provide information about the threat landscape specifically adversaries and their TTPs. 

- Vendors and corporations will sometimes share their collected CTI in what are called ISACs or Information Sharing and Analysis Centers. 

## What is ISAC

- Information Sharing and Analysis Centers (ISACs) are member-driven organizations, delivering all-hazards threat and mitigation information to asset owners and operators.
- ISACs include CTI from threat actors as well as mitigation information in the form of IOCs, YARA rules, etc. 

## Threat Connect

- Threat Connect is a very large platform with many capabilities.
- Threat Connect focuses more on the information and new developments within cybersecurity.
- Threat Connect would fall under the tactical type of threat intelligence. 

[link](https://threatconnect.com)

## AlienVault OTX 

- AlienVault OTX from AT&T Cybersecurity is one of the main ISACs that is used as an exchange for community maintained threat intelligence.

[link](https://otx.alienvault.com/)

- Alienvault uses 'Pulses' to create trackers for various categories.
- Pulses can be categorized by Malware type, APT or group, and targeted industry.
- Pulses can include a wide variety of IOCs such as File Hashes (MD5, SHA1), IPv4, IPv6, Domain, URL, YARA, CVE, and more. 

![img](https://i.imgur.com/SEddt8E.png)

There are also six different tabs that you can navigate to on the navigation bar, they are outlined below.

- Dashboard - This is shown above in the screenshot above. It's the main page of OTX and will provide a brief overview of important intel.
- Browse - This will allow you to see all new pulses and sort by various categories to find the newest intel.
- Scan Endpoints - This is an automated service called OTX Endpoint Security that will scan endpoints for indicators.
- Create Pulse - This will allow you to create your own pulses and contribute to the threat exchange.
- Submit Sample - This allows you to submit a malware sample or URL sample which OTX will analyze and generate a report based on the provided sample.
- API Integration - Allows synchronization of the threat exchange with other tools for monitoring your environment.

### Using OTX to gather Threat Intelligence

**pulses overview**

- Pulses can consist of a description, tags, indicator types (file hash, Yara, IP, domain, etc.), and threat infrastructure (country of origin). 
- A majority of pulses are community-created and maintained.
- not all the pulses are legit or may contain inaccurate information. Always verify and analyze the indicators used before using them for CTI.

**Breaking Down a Pulse**

Three Main Section:

- Pulse Description.
- Indicator Overview.
- Indicators. 

1. Pulse Description :

- The Pulse Description consists of the description itself, references, tags, malware families, and ATT&CK IDs.
- The three most important parts are the reference section, the description itself, and the ATT&CK IDs.

2. Indicator Overview :

The Indicator Overview will give you a very brief statistical representation of the indicators within the pulse as well as threat infrastructure.

![img](https://i.imgur.com/J4zKnQB.png)

3. INdicators : 

Indicators are probably the most important section of the entire pulse. It contains all of the indicators and information about them.

![img](https://i.imgur.com/LWW3fT7.png)

- Type - The type of indicator (URL, File Hash, IP, Domain, etc.)
- Indicator - The indicator itself
- Added - Date added, pulses can be updated this can be useful to track the pulses history
- Active - Shows, whether the indicator is still seen in the wild and active, can be useful when selecting pulses to use.
- Related Pulses - Shows pulses that share the same indicator, can be useful to cross-check indicators.
- Extra Information (Advanced) - These are the advanced options including Dynamic Analysis, Network Activity, and YARA rules. 

***

## Creating IOCs Manually

To create IOC we need to gather some info of file like md5 hash , strings etc.

- To begin collecting indicators from a sample we can gather the MD5 file hash using WinMD5.(Windmd5 is windows tool to get md5 hash of file).
- Simply run WinMD5 and select the file you want to gather from.

![img](https://i.imgur.com/INqhxa7.png)


- To get another baseline of information we can look at the properties of the file to find other indicators including size, name, date created, etc.

![img](https://i.imgur.com/rK9xFEs.png)


- We can also get strings. `./strings.exe <path to file> -accepteula > output.txt`

**Once you have all of your indicators prepared you can begin creating an IOC with Mandiant IOCe.**

Mandiant is tool to create IOC's.

after compeleting then upload it to AlienVault OTX or another ISAC.