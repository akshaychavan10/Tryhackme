# FFUF Report

  Command line : `ffuf -u http://10.10.22.243/FUZZ.txt -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_txt.md`
  Time: 2021-12-17T08:06:00-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.22.243/.htpasswd.txt |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.22.243/.htaccess.txt |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.22.243/.hta.txt |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | secret | http://10.10.22.243/secret.txt |  | 3537 | 200 | 320 | 62 | 7 | text/plain |  |
  