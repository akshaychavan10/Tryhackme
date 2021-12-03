# FFUF Report

  Command line : `ffuf -u http://10.10.25.46//d1r3c70ry_center/claim/FUZZ.gif -w /usr/share/wordlists/dirb/big.txt -of md -o dirscan/big_txt.md`
  Time: 2021-12-01T14:52:24-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.25.46//d1r3c70ry_center/claim/.htpasswd.gif |  | 16 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.25.46//d1r3c70ry_center/claim/.htaccess.gif |  | 15 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | flower | http://10.10.25.46//d1r3c70ry_center/claim/flower.gif |  | 7734 | 200 | 1703543 | 11334 | 9504 | image/gif |  |
  