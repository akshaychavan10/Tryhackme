# FFUF Report

  Command line : `ffuf -u http://10.10.25.46/d1r3c70ry_center/claim/FUZZ.txt -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/center_txt.md`
  Time: 2021-12-01T14:19:35-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.25.46/d1r3c70ry_center/claim/.htaccess.txt |  | 12 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.25.46/d1r3c70ry_center/claim/.hta.txt |  | 11 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.25.46/d1r3c70ry_center/claim/.htpasswd.txt |  | 13 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  