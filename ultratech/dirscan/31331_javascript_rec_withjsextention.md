# FFUF Report

  Command line : `ffuf -u http://10.10.112.62:31331/javascript/FUZZ.js -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/31331_javascript_rec_withjsextention.md`
  Time: 2021-11-21T02:19:11-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.112.62:31331/javascript/.hta.js |  | 11 | 403 | 308 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.112.62:31331/javascript/.htpasswd.js |  | 13 | 403 | 313 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.112.62:31331/javascript/.htaccess.js |  | 12 | 403 | 313 | 22 | 12 | text/html; charset=iso-8859-1 |  |
  