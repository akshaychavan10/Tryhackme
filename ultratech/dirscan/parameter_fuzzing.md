# FFUF Report

  Command line : `ffuf -u http://10.10.56.125:8081/FUZZ? -w /usr/share/seclists/Discovery/Web-Content/burp-parameter-names.txt -of md -o dirscan/parameter_fuzzing.md`
  Time: 2021-11-21T08:40:09-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | auth | http://10.10.56.125:8081/auth? |  | 366 | 200 | 39 | 8 | 1 | text/html; charset=utf-8 |  |
  