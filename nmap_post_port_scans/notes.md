
- Detect versions of the running services (on all open ports)
- Detect the OS based on any signs revealed by the target
- Run Nmap’s traceroute
- Run select Nmap scripts
- Save the scan results in various formats

## Service Detection

`-sV` : collect service and version information for open ports.
`--version-intensity LEVEL` : control intensity. 0 is lightest 9 is highest.

- `-sV` forces three way handshake so stelath mode with this option is not possible.

## OS Detection and Traceroute 

- Nmap can detect the Operating System (OS) based on its behaviour
- os detection can be performed by `-O` option.
- Nmap needs to find at least one open and one closed port on the target to make a reliable guess. 

**Traceroute**

- nmap can find the routers between you and the target, just add `--traceroute`.

## Nmap scripting engine

- support lua language.
- nse is lua interpreter that is used to excute nmap scripts.
- stored in `/usr/share/nmap/scripts`
- names of the script start with protocol they target.

`nmap --script=default target`
`nmap -sC target`


|Script Category |    Description|
|---------------|----------------|
|auth  |  Authentication related scripts|
|broadcast  | Discover hosts by sending broadcast messages|
|brute |  Performs brute-force password auditing against logins|
|default  |   Default scripts, same as `-sC`|
|discovery |  Retrieve accessible information, such as database tables and DNS names|
|dos  |   Detects servers vulnerable to Denial of Service (DoS)|
|exploit  |   Attempts to exploit various vulnerable services|
|external  |  Checks using a third-party service, such as Geoplugin and Virustotal|
|fuzzer | Launch fuzzing attacks|
|intrusive |  Intrusive scripts such as brute-force attacks and exploitation|
|malware  |   Scans for backdoors|
|safe  |  Safe scripts that won’t crash the target|
|version  |   Retrieve service versions|
|vuln  |  Checks for vulnerabilities or exploit vulnerable services|


- We can also specify the script by name using `--script "SCRIPT-NAME"`.
eg : `--script "ftp*"`

## Output

Three formats

1. Normal : As the name implies, the normal format is similar to the output you get on the screen when scanning a target

2. grepable : t makes filtering the scan output for specific keywords or terms efficient.

3. XML : The XML format would be most convenient to process the output in other programs.


## Summary

|Option | Meaning |
|-------|----------|
|-sV  |   determine service/version info on open ports|
|-sV --version-light |    try the most likely probes (2)|
|-sV --version-all |  try all available probes (9)|
|-O | detect OS|
|--traceroute  |  run traceroute to target|
|--script=SCRIPTS  |  Nmap scripts to run|
|-sC or --script=default  |   run default scripts|
|-A | equivalent to `-sV` `-O` `-sC` `--traceroute`|
|-oN   |  save output in normal format|
|-oG   |  save output in grepable format|
|-oX   |  save output in XML format|
|-oA   |  save output in normal, XML and Grepable formats|

