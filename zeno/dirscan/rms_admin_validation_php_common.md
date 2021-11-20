# FFUF Report

  Command line : `ffuf -u http://10.10.28.14:12340/rms/admin/validation/FUZZ.php -w /usr/share/wordlists/dirb/common.txt -of md -o rms_admin_validation_php_common.md`
  Time: 2021-10-25T10:12:15-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htaccess | http://10.10.28.14:12340/rms/admin/validation/.htaccess.php |  | 12 | 403 | 236 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .htpasswd | http://10.10.28.14:12340/rms/admin/validation/.htpasswd.php |  | 13 | 403 | 236 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.28.14:12340/rms/admin/validation/.hta.php |  | 11 | 403 | 231 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  