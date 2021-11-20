# FFUF Report

  Command line : `ffuf -u http://empline.thm/javascript/jquery/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/jquery_rec.md -fc 404`
  Time: 2021-09-22T05:08:09-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  |  | http://empline.thm/javascript/jquery/ |  | 1 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .hta | http://empline.thm/javascript/jquery/.hta |  | 11 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://empline.thm/javascript/jquery/.htaccess |  | 12 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://empline.thm/javascript/jquery/.htpasswd |  | 13 | 403 | 276 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | jquery | http://empline.thm/javascript/jquery/jquery |  | 2176 | 200 | 268026 | 32872 | 10254 | application/javascript |  |
  