# FFUF Report

  Command line : `ffuf -u http://10.10.25.46/d1r3c70ry_center/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/center.md`
  Time: 2021-12-01T13:55:43-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.25.46/d1r3c70ry_center/.htpasswd |  | 13 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.25.46/d1r3c70ry_center/.htaccess |  | 12 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.25.46/d1r3c70ry_center/.hta |  | 11 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.25.46/d1r3c70ry_center/ |  | 1 | 200 | 312 | 21 | 15 | text/html |  |
  | claim | http://10.10.25.46/d1r3c70ry_center/claim | http://10.10.25.46/d1r3c70ry_center/claim/ | 882 | 301 | 327 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.html | http://10.10.25.46/d1r3c70ry_center/index.html |  | 2020 | 200 | 312 | 21 | 15 | text/html |  |
  