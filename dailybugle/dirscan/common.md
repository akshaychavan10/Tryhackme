# FFUF Report

  Command line : `ffuf -u http://10.10.91.234/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/common.md -fc 404`
  Time: 2021-10-20T16:17:43-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .htpasswd | http://10.10.91.234/.htpasswd |  | 13 | 403 | 211 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | .hta | http://10.10.91.234/.hta |  | 11 | 403 | 206 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | administrator | http://10.10.91.234/administrator | http://10.10.91.234/administrator/ | 319 | 301 | 242 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://10.10.91.234/.htaccess |  | 12 | 403 | 211 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | bin | http://10.10.91.234/bin | http://10.10.91.234/bin/ | 628 | 301 | 232 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | cache | http://10.10.91.234/cache | http://10.10.91.234/cache/ | 730 | 301 | 234 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | cgi-bin/ | http://10.10.91.234/cgi-bin/ |  | 820 | 403 | 210 | 15 | 9 | text/html; charset=iso-8859-1 |  |
  | components | http://10.10.91.234/components | http://10.10.91.234/components/ | 978 | 301 | 239 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | images | http://10.10.91.234/images | http://10.10.91.234/images/ | 1991 | 301 | 235 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | includes | http://10.10.91.234/includes | http://10.10.91.234/includes/ | 2013 | 301 | 237 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | language | http://10.10.91.234/language | http://10.10.91.234/language/ | 2236 | 301 | 237 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | layouts | http://10.10.91.234/layouts | http://10.10.91.234/layouts/ | 2254 | 301 | 236 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | libraries | http://10.10.91.234/libraries | http://10.10.91.234/libraries/ | 2276 | 301 | 238 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | media | http://10.10.91.234/media | http://10.10.91.234/media/ | 2473 | 301 | 234 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | modules | http://10.10.91.234/modules | http://10.10.91.234/modules/ | 2567 | 301 | 236 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | plugins | http://10.10.91.234/plugins | http://10.10.91.234/plugins/ | 3003 | 301 | 236 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | robots.txt | http://10.10.91.234/robots.txt |  | 3436 | 200 | 836 | 88 | 33 | text/plain; charset=UTF-8 |  |
  | templates | http://10.10.91.234/templates | http://10.10.91.234/templates/ | 3995 | 301 | 238 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  | tmp | http://10.10.91.234/tmp | http://10.10.91.234/tmp/ | 4069 | 301 | 232 | 14 | 8 | text/html; charset=iso-8859-1 |  |
  