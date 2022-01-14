# FFUF Report

  Command line : `ffuf -u http://10.10.102.173:8080/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_8080.md -fc 403`
  Time: 2022-01-07T04:44:00-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.102.173:8080/ | http://10.10.102.173:8080/login | 1 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | login | http://10.10.102.173:8080/login |  | 2347 | 200 | 5589 | 1617 | 140 | text/html; charset=utf-8 |  |
  | logout | http://10.10.102.173:8080/logout | http://10.10.102.173:8080/login | 2362 | 302 | 219 | 22 | 4 | text/html; charset=utf-8 |  |
  | register | http://10.10.102.173:8080/register |  | 3341 | 200 | 5021 | 1678 | 129 | text/html; charset=utf-8 |  |
  