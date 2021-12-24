# FFUF Report

  Command line : `ffuf -u http://10.10.151.146/cgi-bin/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/cgi_bin_common_with_extention.md -e sh`
  Time: 2021-12-22T09:48:22-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccesssh | http://10.10.151.146/cgi-bin/.htaccesssh |  | 24 | 403 | 299 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.151.146/cgi-bin/ |  | 1 | 403 | 288 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.151.146/cgi-bin/.hta |  | 21 | 403 | 292 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | .htash | http://10.10.151.146/cgi-bin/.htash |  | 22 | 403 | 294 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | .htpasswdsh | http://10.10.151.146/cgi-bin/.htpasswdsh |  | 26 | 403 | 299 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.151.146/cgi-bin/.htaccess |  | 23 | 403 | 297 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.151.146/cgi-bin/.htpasswd |  | 25 | 403 | 297 | 21 | 11 | text/html; charset=iso-8859-1 |  |
  