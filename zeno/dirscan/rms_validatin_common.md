# FFUF Report

  Command line : `ffuf -u http://10.10.28.14:12340/rms/validation/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o rms_validatin_common.md`
  Time: 2021-10-25T10:08:32-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://10.10.28.14:12340/rms/validation/.hta |  | 11 | 403 | 221 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  |  | http://10.10.28.14:12340/rms/validation/ |  | 1 | 403 | 217 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.28.14:12340/rms/validation/.htpasswd |  | 13 | 403 | 226 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.28.14:12340/rms/validation/.htaccess |  | 12 | 403 | 226 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  