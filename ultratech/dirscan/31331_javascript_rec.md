# FFUF Report

  Command line : `ffuf -u http://10.10.112.62:31331/javascript/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/31331_javascript_rec.md`
  Time: 2021-11-21T02:13:23-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.112.62:31331/javascript/.hta |  | 11 | 403 | 305 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.112.62:31331/javascript/ |  | 1 | 403 | 301 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.112.62:31331/javascript/.htaccess |  | 12 | 403 | 310 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.112.62:31331/javascript/.htpasswd |  | 13 | 403 | 310 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | jquery | http://10.10.112.62:31331/javascript/jquery | http://10.10.112.62:31331/javascript/jquery/ | 2176 | 301 | 333 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  