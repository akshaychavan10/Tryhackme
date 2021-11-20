# FFUF Report

  Command line : `ffuf -u http://job.empline.thm/FUZZ -w /usr/share/wordlists/dirb/common.txt -of md -o dirscan/job_sub.md -fc 404`
  Time: 2021-09-22T05:10:35-04:00

  | FUZZ | URL | Redirectlocation | Position | Status Code | Content Length | Content Words | Content Lines | Content Type | ResultFile |
  | :- | :-- | :--------------- | :---- | :------- | :---------- | :------------- | :------------ | :--------- | :----------- |
  | .hta | http://job.empline.thm/.hta |  | 11 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | .htaccess | http://job.empline.thm/.htaccess |  | 12 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  |  | http://job.empline.thm/ |  | 1 | 200 | 3671 | 209 | 102 | text/html; charset=UTF-8 |  |
  | .htpasswd | http://job.empline.thm/.htpasswd |  | 13 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | ajax | http://job.empline.thm/ajax | http://job.empline.thm/ajax/ | 371 | 301 | 317 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | attachments | http://job.empline.thm/attachments | http://job.empline.thm/attachments/ | 506 | 301 | 324 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | careers | http://job.empline.thm/careers | http://job.empline.thm/careers/ | 766 | 301 | 320 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | ckeditor | http://job.empline.thm/ckeditor | http://job.empline.thm/ckeditor/ | 879 | 301 | 321 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | db | http://job.empline.thm/db | http://job.empline.thm/db/ | 1171 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | images | http://job.empline.thm/images | http://job.empline.thm/images/ | 1991 | 301 | 319 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | index.php | http://job.empline.thm/index.php |  | 2021 | 200 | 3671 | 209 | 102 | text/html; charset=UTF-8 |  |
  | javascript | http://job.empline.thm/javascript | http://job.empline.thm/javascript/ | 2145 | 301 | 323 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | js | http://job.empline.thm/js | http://job.empline.thm/js/ | 2179 | 301 | 315 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | lib | http://job.empline.thm/lib | http://job.empline.thm/lib/ | 2274 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | modules | http://job.empline.thm/modules | http://job.empline.thm/modules/ | 2567 | 301 | 320 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | rss | http://job.empline.thm/rss | http://job.empline.thm/rss/ | 3452 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | scripts | http://job.empline.thm/scripts | http://job.empline.thm/scripts/ | 3520 | 301 | 320 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | server-status | http://job.empline.thm/server-status |  | 3588 | 403 | 280 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | src | http://job.empline.thm/src | http://job.empline.thm/src/ | 3805 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | temp | http://job.empline.thm/temp | http://job.empline.thm/temp/ | 3991 | 301 | 317 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | test | http://job.empline.thm/test | http://job.empline.thm/test/ | 4008 | 301 | 317 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | upload | http://job.empline.thm/upload | http://job.empline.thm/upload/ | 4207 | 301 | 319 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | vendor | http://job.empline.thm/vendor | http://job.empline.thm/vendor/ | 4286 | 301 | 319 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | wsdl | http://job.empline.thm/wsdl | http://job.empline.thm/wsdl/ | 4523 | 301 | 317 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  | xml | http://job.empline.thm/xml | http://job.empline.thm/xml/ | 4562 | 301 | 316 | 20 | 10 | text/html; charset=iso-8859-1 |  |
  