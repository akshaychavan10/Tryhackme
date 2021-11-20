# FFUF Report

  Command line : `ffuf -u http://FUZZ.empline.thm -w /usr/share/seclists/Discovery/DNS/shubs-subdomains.txt -of md -o dirscan/subdomain.md -fc 404`
  Time: 2021-09-22T05:03:29-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | job | http://job.empline.thm |  | 133 | 200 | 3671 | 209 | 102 | text/html; charset=UTF-8 |  |
  