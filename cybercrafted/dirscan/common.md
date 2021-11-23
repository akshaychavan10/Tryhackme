# FFUF Report

  Command line : `ffuf -u http://10.10.61.207/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md`
  Time: 2021-11-21T23:56:24-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://10.10.61.207/ | http://cybercrafted.thm/ | 1 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | .hta | http://10.10.61.207/.hta |  | 11 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.61.207/.htaccess |  | 12 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.61.207/.htpasswd |  | 13 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://10.10.61.207/index.php | http://cybercrafted.thm/ | 2021 | 302 | 0 | 1 | 1 | text/html; charset=UTF-8 |  |
  | server-status | http://10.10.61.207/server-status |  | 3588 | 403 | 277 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  