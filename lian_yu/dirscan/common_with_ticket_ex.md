# FFUF Report

  Command line : `ffuf -u http://10.10.231.37/island/2100/FUZZ.ticket -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common_with_ticket_ex.md`
  Time: 2022-01-02T09:05:46-05:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.231.37/island/2100/.hta.ticket |  | 11 | 403 | 199 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.231.37/island/2100/.htpasswd.ticket |  | 13 | 403 | 199 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.231.37/island/2100/.htaccess.ticket |  | 12 | 403 | 199 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  