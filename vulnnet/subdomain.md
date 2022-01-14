# FFUF Report

  Command line : `ffuf -u http://vulnnet.thm -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt -H Host:FUZZ.vulnnet.thm -of md -o subdomain.md -fs 5829`
  Time: 2022-01-04T08:36:46-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | broadcast | http://vulnnet.thm |  | 1236 | 401 | 468 | 42 | 15 | text/html; charset=iso-8859-1 |  |
  